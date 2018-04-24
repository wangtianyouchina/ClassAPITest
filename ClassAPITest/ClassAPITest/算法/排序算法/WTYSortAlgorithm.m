//
//  WTYSortAlgorithm.m
//  ClassAPITest
//
//  Created by 王天佑 on 2018/4/20.
//  Copyright © 2018年 xiaomaguohe. All rights reserved.
//

#import "WTYSortAlgorithm.h"

@implementation WTYSortAlgorithm


+(NSInteger)postion:(NSMutableArray *)array start:(NSInteger )start end:(NSInteger)end {
    // 1.if start <= end; return
    // 2. 全排序
    // 3. 左 排序
    // 4. 右 排序
    
    
    if ( start >= end) {
        return start;
    }
    
    NSInteger leftValue = [array[start] integerValue];
    NSInteger kong = start;
    // 挖坑法
    while (start < end) {
        
        while ([array[end] integerValue] >= leftValue && start < end) {
            end--;
        }
        array[kong] = array[end];
        kong = end;
        
        
        while ([array[start] integerValue] <= leftValue && start < end) {
            start++;
        }
        array[kong] = array[start];
        kong = start;
    }
    array[kong] = @(leftValue);

    return start;
    
}
+(void)quickSort2:(NSMutableArray *)array start:(NSInteger )start end:(NSInteger)end {
    
    if (start >= end) {
        return;
    }
    
    NSInteger mid = [self postion:array start:start end:end];
    [self quickSort2:array start:start end:mid-1];
    [self quickSort2:array start:mid+1 end:end];
    
}

+(NSInteger)postion2:(NSMutableArray *)array start:(NSInteger )start end:(NSInteger)end {
    
    if (start > end) {
        NSAssert(false, @"参数有误");
    }
    if (start == end) {
        return start;
    }
    NSInteger left = start;
    NSInteger right = end;
    NSInteger leftValue = [array[left] integerValue];
    // 左右 哨兵法
    while (left < right) {
        
        while ([array[right] integerValue] >= leftValue && left < right) {
            right--;
        }
        
        while ([array[left] integerValue] <= leftValue && left < right) {
            left++;
        }
        
        [array exchangeObjectAtIndex:left withObjectAtIndex:right];
    }
    
    [array exchangeObjectAtIndex:start withObjectAtIndex:left];

    return left;
}

+(void)quickSort:(NSMutableArray *)array start:(NSInteger )start end:(NSInteger)end {
    
    // 1.if start <= end; return
    // 2. 全排序
    // 3. 左 排序
    // 4. 右 排序
    
    if (start >= end) {
        return;
    }
    
    NSInteger mid = [self postion2:array start:start end:end];
    [self quickSort:array start:start end:mid-1];
    [self quickSort:array start:mid+1 end:end];
}

    

@end
