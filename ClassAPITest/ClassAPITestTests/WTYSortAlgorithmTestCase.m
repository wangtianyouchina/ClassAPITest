//
//  WTYSortAlgorithmTestCase.m
//  ClassAPITestTests
//
//  Created by 王天佑 on 2018/4/20.
//  Copyright © 2018年 xiaomaguohe. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "WTYSortAlgorithm.h"
#include <stdio.h>
#include <stdlib.h>

@interface WTYSortAlgorithmTestCase : XCTestCase

@end

@implementation WTYSortAlgorithmTestCase

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

-(void)test_insertSort {
    NSMutableArray *mutArray = [@[@4,@5,@5,@3,@10,@51,@500,@120,@123] mutableCopy];
    
    [WTYSortAlgorithm insertSort:mutArray];
    
    for (NSNumber *num in mutArray) {
        NSLog(@"%@",num);
    }
    mutArray = [@[@9999] mutableCopy];
    
    [WTYSortAlgorithm insertSort:mutArray];
    
    for (NSNumber *num in mutArray) {
        NSLog(@"%@",num);
    }
    mutArray = [@[] mutableCopy];
    
    [WTYSortAlgorithm insertSort:mutArray];
    
    for (NSNumber *num in mutArray) {
        NSLog(@"%@",num);
    }
}
// 冒泡排序
-(void)test_bubbleSort {
    NSMutableArray *mutArray = [@[@4,@5,@5,@3,@10,@51,@500,@120,@123] mutableCopy];

    [WTYSortAlgorithm bubbleSort:mutArray];
    
    for (NSNumber *num in mutArray) {
        NSLog(@"%@",num);
    }
    mutArray = [@[@9999] mutableCopy];
    
    [WTYSortAlgorithm bubbleSort:mutArray];
    
    for (NSNumber *num in mutArray) {
        NSLog(@"%@",num);
    }
    mutArray = [@[] mutableCopy];
    
    [WTYSortAlgorithm bubbleSort:mutArray];
    
    for (NSNumber *num in mutArray) {
        NSLog(@"%@",num);
    }

    

}
// 快速排序
-(void)test_quickSort {
    
    NSMutableArray *mutArray = [@[@4,@5] mutableCopy];
    
    [WTYSortAlgorithm quickSort:mutArray start:0 end:mutArray.count-1];
    NSLog(@"%@",mutArray);
    
}
// 快速排序
-(void)test_quickSort2 {
    
    
    
    NSMutableArray *mutArray = [@[@4,@5] mutableCopy];
    [WTYSortAlgorithm quickSort2:mutArray start:0 end:mutArray.count-1];
    NSLog(@"%@",mutArray);
    
}
-(void)test_headSort {
    
    int aa[] = {2,4,1,8,3,10,9};
//    NSLog(@"%d", sizeof(aa)/sizeof(int));
    heapSort(aa, sizeof(aa)/sizeof(int));
    
    for (int i = 0; i < sizeof(aa)/sizeof(int); i ++) {
        NSLog(@"%d",aa[i]);
    }

    
}
- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
