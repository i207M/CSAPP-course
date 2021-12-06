/*
 * mm.c - The full-mark malloc package.
 *
 * In this approach,
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

#define DEBUG 1

/* ********** 调试函数 ********** */

#ifdef DEBUG
#define DBG_PRINTF(...) fprintf(stderr, __VA_ARGS__)
#else
#define DBG_PRINTF(...)
#endif

/* ********** 常量设定 ********** */

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

#define WSIZE 4

/* size of segregated free list */
#define LIST_SIZE 16

#define INITCHUNKSIZE (1 << 6)
#define CHUNKSIZE (1 << 13)

#define ALLOCATED 1

/* ********** 宏函数 ********** */

#define MMAX(x, y) ((x) > (y) ? (x) : (y))
#define MMIN(x, y) ((x) < (y) ? (x) : (y))

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)

#define GET(ptr) (*(unsigned int *)(ptr))
#define SET(ptr, val) (*(unsigned int *)(ptr) = (val))

#define PACK(size, flag) ((size) | (flag))

#define GET_SIZE(ptr) (GET(ptr) & ~0x7)
#define GET_ALLOC(ptr) (GET(ptr) & ALLOCATED)

/* 内存块的头部地址 */
#define HEAD(bp) ((char *)(bp) - WSIZE)
/* 内存块的尾部地址 */
#define FOOT(bp) ((char *)(bp) + GET_SIZE(HEAD(bp)) - WSIZE)

#define BLOCK_SIZE(bp) GET_SIZE(HEAD(bp))
#define BLOCK_ALLOC(bp) GET_ALLOC(HEAD(bp))

/* 指向物理内存上的前一块的指针 */
#define PRE_BP(bp) ((char *)(bp) - GETSIZE((char *)(bp) - 2 * WSIZE))
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


static void *request_new_node(size_t size);
static void *allocate_on_free_node(void *ptr, size_t size);
static void insert_node(void *ptr, size_t size);
static void delete_node(void *ptr);
static void *coalesce(void *ptr);

static void *segregated_free_lists[LIST_SIZE];

/*
 * mm_init - initialize the malloc package.
 */
int mm_init(void)
{
    for(RI i = 0; i < LIST_SIZE; ++i) {
        segregated_free_lists[i] = NULL;
    }

    void *heap = mem_sbrk(2 * WSIZE);
    if(heap == -1) {
        return -1;
    }

    SET(heap, PACK(0, ALLOCATED));  // 设置堆的首位，防止向前溢出
    SET(heap + 1 * WSIZE, 0);  // 将堆的最后元素置零

    if(request_new_node(INITCHUNKSIZE) == NULL) {
        return -1;
    }

    return 0;
}

/*
 * mm_malloc
 */
void *mm_malloc(size_t size)
{
    if(size == 0) {
        return NULL;
    }

    if(size <= 4 * WSIZE) {
        size = 4 * WSIZE;  // 分配的最小内存是未分配块的头尾长度
    } else {
        size = ALIGN(size + 2 * WSIZE);
    }

    void *bp = NULL;
    for(RI list_i = __builtin_ffs(size) - 1;  // 首个大于 size 的桶的下标
            list_i < LIST_SIZE; ++list_i) {
        if(segregated_free_lists[list_i] != NULL) {
            bp = segregated_free_lists[list_i];

            while((bp != NULL) && size > BLOCK_SIZE(bp)) {
                bp = L_NXT(bp);
            }

            if(bp != NULL) {
                break;
            }
        }
    }

    if (bp == NULL) {
        bp = request_new_node(MMAX(size, CHUNKSIZE));
        if(bp == NULL) {
            return NULL;
        }
    }

    bp = allocate_on_free_node(bp, size);
    return bp;
}

/*
 * mm_free
 */
void mm_free(void *bp)
{
    size_t size = BLOCK_SIZE(bp);

    SET(HEAD(bp), PACK(size, 0));  // MARK: optimize
    SET(HEAD(bp), PACK(size, 0));

    bp = coalesce(bp); // 尝试前后合并
    insert_node(bp, size);
}

/*
 * mm_realloc
 */
void *mm_realloc(void *bp, size_t size)
{
    // if(size == 0) {
    //     mm_free(bp);  // NOTE
    //     return NULL;
    // }

    // if(size <= 4 * WSIZE) {
    //     size = 4 * WSIZE;  // 分配的最小内存是未分配块的头尾长度
    // } else {
    //     size = ALIGN(size + 2 * WSIZE);
    // }

    // void *new_bp = bp;
    // int remainder = BLOCK_SIZE(bp) - size;

    // if (remainder >= 0) {
    //     return bp;
    // }

    // return new_bp;

    void *new_bp = mm_malloc(size);
    if (new_bp == NULL) {
        return NULL;
    }

    size_t copySize = BLOCK_SIZE(bp) - WSIZE;
    if (size < copySize) {
        copySize = size;
    }
    memmove(new_bp, bp, copySize);
    mm_free(bp);

    return new_bp;
}

static void *request_new_node(size_t size)
{
    size = ALIGN(size);
    void *bp = mem_sbrk(size);
    if(bp == -1) {
        return NULL;
    }

    SET(HEAD(bp), PACK(size, 0));
    SET(FOOT(bp), PACK(size, 0));

    SET(HEAD(NXT_BP(bp)), PACK(0, ALLOCATED));  // 设置后一块的头部，防止向后溢出

    bp = coalesce(bp);
    insert_node(bp, size);

    return bp;
}
