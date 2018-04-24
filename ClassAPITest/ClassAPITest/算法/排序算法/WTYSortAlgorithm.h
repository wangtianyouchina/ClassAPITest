//
//  WTYSortAlgorithm.h
//  ClassAPITest
//
//  Created by 王天佑 on 2018/4/20.
//  Copyright © 2018年 xiaomaguohe. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdio.h>

void swap(int arr[],int a , int b) {
    
    int tmp = arr[a];
    arr[a] = arr[b];
    arr[b] = tmp;
}

void justHeap(int arr[],int root,int lenth) {

    
    int child = 2*root +1;
    while ( child < lenth) {

        if (child + 1 < lenth) {
            child = arr[child] > arr[child+1] ? child : child+1;
        }
        if (arr[root] < arr[child]) {
            swap(arr, root, child);
            root = child;
            child = 2*root + 1;
        }
        else {
            break;
        }
        
    }
    
}

void heapSort(int arr[],int lenth) {
    
    // 创建最小堆
    for (int i = lenth/2; i >=0 ; i --) {
        
        justHeap(arr, i, lenth);
    }
    // 交换 调整
    for (int i = 0; i < lenth-1; i ++) {
        //1.exchang i lenth-i-1
        swap(arr, 0, lenth-i-1);
        
        //2.justHeap(arr,0,lenth-i-1)
        justHeap(arr, 0, lenth-i-1);
        
    }
}

// 1.合并两个有顺序
//将有二个有序数列a[first...mid]和a[mid...last]合并。
void mergearray(int a[], int first, int mid, int last, int temp[])
{
    int i = first, j = mid + 1;
    int m = mid,   n = last;
    int k = 0;
    
    while (i <= m && j <= n)
    {
        if (a[i] <= a[j])
            temp[k++] = a[i++];
        else
            temp[k++] = a[j++];
    }
    
    while (i <= m)
        temp[k++] = a[i++];
    
    while (j <= n)
        temp[k++] = a[j++];
    
    for (i = 0; i < k; i++)
        a[first + i] = temp[i];
}
void merge_sort(int a[], int first, int last, int temp[])
{
    if (first < last)
    {
        int mid = (first + last) / 2;
        merge_sort(a, first, mid, temp);    //左边有序
        merge_sort(a, mid + 1, last, temp); //右边有序
        mergearray(a, first, mid, last, temp); //再将二个有序数列合并
    }
}

@interface WTYSortAlgorithm : NSObject

+(void)quickSort:(NSMutableArray *)array start:(NSInteger )start end:(NSInteger)end;
+(void)quickSort2:(NSMutableArray *)array start:(NSInteger )start end:(NSInteger)end;
@end
