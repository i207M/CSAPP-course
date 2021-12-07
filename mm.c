/*
 * mm.c - The full-mark malloc package.
 *
 * In this approach, we apply segregated free lists.
 *
 * NOTE TO STUDENTS: Replace this header comment with your own header
 * comment that gives a high level description of your solution.
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

/*********************************************************
 * NOTE TO STUDENTS: Before you do anything else, please
 * provide your team information in the following struct.
 ********************************************************/
team_t team = {
    /* Team name */
    "Yao",
    /* First member's full name */
    "姚嘉宸",
    /* First member's email address */
    "2020012700",
    /* Second member's full name (leave blank if none) */
    "",
    /* Second member's email address (leave blank if none) */
    ""
};

// #define DEBUG

/* ********** 调试函数 ********** */

#ifdef DEBUG
#define DE_PRINTF(...) fprintf(stderr, __VA_ARGS__), fprintf(stderr, "\n")
#define DE_UINT(x) DE_PRINTF("#%d DBG: %u", __LINE__, x)
#define ECHO() fprintf(stderr, "Echo from line %d\n", __LINE__)
#else
#define NDEBUG
#define DE_PRINTF(...)
#define ECHO()
#endif

/* ********** 常量设定 ********** */

/* size of word (pointer) */
#define WSIZE 4

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* size of segregated free list */
#define LIST_SIZE 16

#define INITCHUNKSIZE (1 << 6)
#define CHUNKSIZE (1 << 13)

#define LARGE_BLOCK_THR 96

#define ALLOCATED 1

/* ********** 宏函数 ********** */

#define MMAX(x, y) ((x) > (y) ? (x) : (y))
#define MMIN(x, y) ((x) < (y) ? (x) : (y))

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)

#define ROUND2(size) (31 - __builtin_clz(size))

#define GET(ptr) (*(unsigned int *)(ptr))
#define SET(ptr, val) (*(unsigned int *)(ptr) = (val))

#define PACK(size, flag) ((size) | (flag))

#define GET_SIZE(ptr) (GET(ptr) & ~0x7)
#define GET_ALLOC(ptr) (GET(ptr) & ALLOCATED)

#define BLOCK_SIZE(bp) GET_SIZE(HEAD(bp))
#define BLOCK_ALLOC(bp) GET_ALLOC(HEAD(bp))

/* 内存块的头部地址 */
#define HEAD(bp) ((char *)(bp) - WSIZE)
/* 内存块的尾部地址 */
#define FOOT(bp) ((char *)(bp) + BLOCK_SIZE(bp) - 2 * WSIZE)

/* 指向物理内存上的前一块的指针 */
#define PRE_BP_FOOT(bp) ((char *)(bp) - 2 * WSIZE)
#define PRE_BP(bp) ((char *)(bp) - GET_SIZE(PRE_BP_FOOT(bp)))
/* 指向物理内存上的后一块的指针 */
#define NXT_BP(bp) ((char *)(bp) + BLOCK_SIZE(bp))

/* 指向逻辑链表上的前一块的指针 */
#define L_PRE_PTR(bp) ((char *)(bp))
/* 指向逻辑链表上的后一块的指针 */
#define L_NXT_PTR(bp) ((char *)(bp) + WSIZE)

/* 逻辑链表上的前一块 */
#define L_PRE(bp) (*(char **)(bp))
/* 逻辑链表上的后一块 */
#define L_NXT(bp) (*(char **)L_NXT_PTR(bp))

/* ********** 缩写 ********** */

#define RI register int


static void *allocate_on_free_node(void *ptr, size_t size);
static void *new_node(size_t size);
static void insert_node(void *ptr, size_t size);
static void delete_node(void *ptr);
static void *coalesce(void *ptr);

static void *segregated_free_lists[LIST_SIZE];
static void *heap_base = NULL;

static inline unsigned int HEAP_SHIFT(const void *x)
{
    if(x == NULL) {
        return 0;
    } else {
        return x - heap_base + 1000000;
    }
}

/*
 * mm_init - initialize the malloc package.
 */
int mm_init(void)
{
    for(RI i = 0; i < LIST_SIZE; ++i) {
        segregated_free_lists[i] = NULL;
    }

    heap_base = mem_sbrk(2 * WSIZE);
    if(heap_base == (void *) -1) {
        return -1;
    }
    // DE_PRINTF("heap_base=%u", heap_base);

    SET(heap_base, PACK(0, ALLOCATED));  // 设置堆的首位，防止向前溢出
    SET((char *)heap_base + 1 * WSIZE, 0);  // 将堆的最后元素置零

    if(new_node(INITCHUNKSIZE) == NULL) {
        return -1;
    }
    return 0;
}

/*
 * mm_malloc
 */
void *mm_malloc(size_t size)
{
    DE_PRINTF("malloc %u", size);
    if(size == 0) {
        return NULL;
    }

    // if(size <= 4 * WSIZE) {
    //     size = 4 * WSIZE;  // 分配的最小内存是未分配块的头尾长度
    // } else {
    //     size = ALIGN(size + 2 * WSIZE);
    // }
    size = MMAX(2 * WSIZE, size);
    size = ALIGN(size + 2 * WSIZE);

    void *bp = NULL;
    for(RI list_i = ROUND2(size); // 首个大于 size 的桶的下标
            list_i < LIST_SIZE; ++list_i) {
        if(segregated_free_lists[list_i] != NULL) {
            bp = segregated_free_lists[list_i];
            DE_PRINTF("search: start=%u, list_i=%d", HEAP_SHIFT(bp), list_i);

            while((bp != NULL) && size > BLOCK_SIZE(bp)) {
                bp = L_NXT(bp);
            }

            if(bp != NULL) {
                break;
            }
        }
    }

    if (bp == NULL) {
        bp = new_node(MMAX(size, CHUNKSIZE));
        if(bp == NULL) {
            return NULL;
        }
    }

    bp = allocate_on_free_node(bp, size);
    DE_PRINTF("malloced %u on %u", size, HEAP_SHIFT(bp));
    return bp;
}

/*
 * mm_free
 */
void mm_free(void *bp)
{
    size_t size = BLOCK_SIZE(bp);

    SET(HEAD(bp), PACK(size, 0));  // MARK: optimize
    SET(FOOT(bp), PACK(size, 0));

    bp = coalesce(bp); // 尝试前后合并
    insert_node(bp, BLOCK_SIZE(bp));
}

/*
 * mm_realloc
 */
void *mm_realloc(void *bp, size_t size)
{
    if(size == 0) {
        mm_free(bp);  // NOTE
        return NULL;
    }

    size = MMAX(2 * WSIZE, size);
    size = ALIGN(size + 2 * WSIZE);

    int remainder = BLOCK_SIZE(bp) - size;
    if (remainder >= 0) {
        return bp;
    } else if (!BLOCK_ALLOC(NXT_BP(bp)) || BLOCK_SIZE(NXT_BP(bp)) == 0) {
        remainder = BLOCK_SIZE(bp) + BLOCK_SIZE(NXT_BP(bp)) - size;
        if(remainder < 0) {
            if (new_node(MMAX(-remainder, CHUNKSIZE)) == NULL) {
                return NULL;
            }
            remainder += MMAX(-remainder, CHUNKSIZE);
        }

        delete_node(NXT_BP(bp));
        SET(HEAD(bp), PACK(size + remainder, ALLOCATED));
        SET(FOOT(bp), PACK(size + remainder, ALLOCATED));

        return bp;
    } else {
        void *new_bp = mm_malloc(size);

        size_t copy_size = BLOCK_SIZE(bp) - WSIZE;
        copy_size = MMIN(size, copy_size);
        memcpy(new_bp, bp, copy_size);

        mm_free(bp);
        return new_bp;
    }
    /* ********** naive realloc ********** */

    // void *new_bp = mm_malloc(size);
    // if (new_bp == NULL) {
    //     return NULL;
    // }

    // size_t copySize = BLOCK_SIZE(bp) - WSIZE;
    // if (size < copySize) {
    //     copySize = size;
    // }
    // memcpy(new_bp, bp, copySize);
    // mm_free(bp);

    // return new_bp;
}

static void *new_node(size_t size)
{
    DE_PRINTF("request new node size=%u", size);
    size = ALIGN(size);
    void *bp = mem_sbrk(size);
    if(bp == (void *) -1) {
        return NULL;
    }
    // DE_PRINTF("sbrk %u %u, top=%u", size, bp, mem_heap_hi());

    SET(HEAD(bp), PACK(size, 0));
    SET(FOOT(bp), PACK(size, 0));

    SET(HEAD(NXT_BP(bp)), PACK(0, ALLOCATED));  // 设置后一块的头部，防止向后溢出
    // DE_PRINTF("new node: head=%u, foot=%u", HEAD(bp), FOOT(bp));

    bp = coalesce(bp);
    insert_node(bp, BLOCK_SIZE(bp));

    DE_PRINTF("new node: %u, size=%u", HEAP_SHIFT(bp), BLOCK_SIZE(bp));
    return bp;
}

static void *allocate_on_free_node(void *bp, size_t size)
{
    DE_PRINTF("place %u on %u", size, HEAP_SHIFT(bp));
    size_t total_size = BLOCK_SIZE(bp);
    size_t remainder = total_size - size;

    delete_node(bp);

    if(remainder < 4 * WSIZE) {
        SET(HEAD(bp), PACK(total_size, 1));
        SET(FOOT(bp), PACK(total_size, 1));
    } else if (size >= LARGE_BLOCK_THR) {
        /* 对于大块，从后往前分配 */
        DE_PRINTF("insert large block !");
        SET(HEAD(bp), PACK(remainder, 0));
        SET(FOOT(bp), PACK(remainder, 0));

        insert_node(bp, remainder);
        bp = NXT_BP(bp);
        SET(HEAD(bp), PACK(size, 1));
        SET(FOOT(bp), PACK(size, 1));

        // SET(HEAD(NXT_BP(bp)), PACK(size, 1));  // 为何行为不同？
        // SET(FOOT(NXT_BP(bp)), PACK(size, 1));
        // insert_node(bp, remainder);
        // return NXT_BP(bp);
    } else {
        SET(HEAD(bp), PACK(size, 1));
        SET(FOOT(bp), PACK(size, 1));

        void *nxt_bp = NXT_BP(bp);
        SET(HEAD(nxt_bp), PACK(remainder, 0));
        SET(FOOT(nxt_bp), PACK(remainder, 0));
        insert_node(nxt_bp, remainder);
    }
    return bp;
}

/*
 * coalesce  尝试与前后块合并，默认 bp 未插入
 */
static void *coalesce(void *bp)
{
    DE_PRINTF("coalescing: %d %d", GET_ALLOC(PRE_BP_FOOT(bp)), BLOCK_ALLOC(NXT_BP(bp)));
    size_t size = BLOCK_SIZE(bp);

    if (GET_ALLOC(PRE_BP_FOOT(bp))) {  // 前一块已分配，注意这里不能使用 BLOCK_ALLOC
        if (BLOCK_ALLOC(NXT_BP(bp))) {
            ;
        } else {
            size += BLOCK_SIZE(NXT_BP(bp));
            delete_node(NXT_BP(bp));

            SET(HEAD(bp), PACK(size, 0));
            SET(FOOT(bp), PACK(size, 0));
        }
    } else {  // 前一块未分配
        if (BLOCK_ALLOC(NXT_BP(bp))) {
            // DE_PRINTF("merging: %u %u", bp, PRE_BP(bp));
            bp = PRE_BP(bp);
            size += BLOCK_SIZE(bp);
            delete_node(bp);

            SET(HEAD(bp), PACK(size, 0));
            SET(FOOT(bp), PACK(size, 0));
        } else {
            size += BLOCK_SIZE(PRE_BP(bp)) + BLOCK_SIZE(NXT_BP(bp));
            delete_node(PRE_BP(bp));
            delete_node(NXT_BP(bp));

            bp = PRE_BP(bp);
            SET(HEAD(bp), PACK(size, 0));
            SET(FOOT(bp), PACK(size, 0));
        }
    }
    DE_PRINTF("coalesced: size=%u, head=%u, foot=%u",
              size, HEAP_SHIFT(HEAD(bp)), HEAP_SHIFT(FOOT(bp)));
    assert(BLOCK_SIZE(bp) == size);
    return bp;
}

static void insert_node(void *bp, size_t size)
{
    int list_i = ROUND2(size);
    list_i = MMIN(LIST_SIZE - 1, list_i);
    // DE_PRINTF("before insert: block_size=%u, size=%u", BLOCK_SIZE(bp), size);
    DE_PRINTF("insert: %u, size=%u, list_i=%d", HEAP_SHIFT(bp), size, list_i);
    assert(BLOCK_SIZE(bp) == size);

    void *pre = NULL;
    void *nxt = segregated_free_lists[list_i];
    // DE_PRINTF("p=%u, n=%u", HEAP_SHIFT(pre), HEAP_SHIFT(nxt));
    while(nxt != NULL && size > BLOCK_SIZE(nxt)) {
        pre = nxt;
        nxt = L_NXT(nxt);
        // DE_PRINTF("p=%u, n=%u", HEAP_SHIFT(pre), HEAP_SHIFT(nxt));
    }

    if (pre != NULL) {
        SET(L_PRE_PTR(bp), pre);
        SET(L_NXT_PTR(pre), bp);
    } else {
        SET(L_PRE_PTR(bp), NULL);
        segregated_free_lists[list_i] = bp;
        DE_PRINTF("set list[%d]=%u", list_i, HEAP_SHIFT(bp));
    }
    if (nxt != NULL) {
        SET(L_NXT_PTR(bp), nxt);
        SET(L_PRE_PTR(nxt), bp);
    } else {
        SET(L_NXT_PTR(bp), NULL);
    }
    DE_PRINTF("after insert: %u, p=%u, n=%u, size=%u",
              HEAP_SHIFT(bp), HEAP_SHIFT(L_PRE(bp)), HEAP_SHIFT(L_NXT(bp)), size);
    assert(size == BLOCK_SIZE(bp));
}

static void delete_node(void *bp)
{
    int list_i = ROUND2(BLOCK_SIZE(bp));
    list_i = MMIN(LIST_SIZE - 1, list_i);

    void *pre = L_PRE(bp);
    void *nxt = L_NXT(bp);
    DE_PRINTF("delete: %u, p=%u, n=%u, size=%u, list_i=%d",
              HEAP_SHIFT(bp), HEAP_SHIFT(pre), HEAP_SHIFT(nxt), BLOCK_SIZE(bp), list_i);

    if (pre != NULL) {
        if (nxt != NULL) {
            SET(L_NXT_PTR(pre), nxt);
            SET(L_PRE_PTR(nxt), pre);
        } else {
            SET(L_NXT_PTR(pre), NULL);
        }
    } else {
        if (nxt != NULL) {
            SET(L_PRE_PTR(nxt), NULL);
            segregated_free_lists[list_i] = nxt;
            DE_PRINTF("set list[%d]=%u", list_i, HEAP_SHIFT(nxt));
        } else {
            segregated_free_lists[list_i] = NULL;
            DE_PRINTF("set list[%d]=%u", list_i, NULL);
        }
    }
}
