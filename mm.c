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

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)


#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

#define DEBUG

/* debug functions */
#ifdef DEBUG
#define DBG_PRINTF(...) fprintf(stderr, __VA_ARGS__)
#else
#define DBG_PRINTF(...)
#endif

/*
 * mm_init - initialize the malloc package.
 */
int mm_init(void)
{

    return 0;
}

/*
 * mm_malloc
 */
void *mm_malloc(size_t size)
{
    int newsize = ALIGN(size + SIZE_T_SIZE);
    void *p = mem_sbrk(newsize);
    if (p == (void *) -1) {
        return NULL;
    } else {
        *(size_t *)p = size;
        return (void *)((char *)p + SIZE_T_SIZE);
    }
}

/*
 * mm_free
 */
void mm_free(void *ptr)
{
}

/*
 * mm_realloc
 */
void *mm_realloc(void *ptr, size_t size)
{
    void *oldptr = ptr;
    void *newptr;
    size_t copySize;

    newptr = mm_malloc(size);
    if (newptr == NULL) {
        return NULL;
    }
    copySize = *(size_t *)((char *)oldptr - SIZE_T_SIZE);
    if (size < copySize) {
        copySize = size;
    }
    memcpy(newptr, oldptr, copySize);  // NOTE: memcpy or memmove ?
    mm_free(oldptr);
    return newptr;
}














