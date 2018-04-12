//
//  BinaryTreeTestCase.m
//  ClassAPITestTests
//
//  Created by 王天佑 on 2018/4/12.
//  Copyright © 2018年 xiaomaguohe. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BinaryTree.h"

@interface BinaryTreeTestCase : XCTestCase
@property (nonatomic,strong) BinaryTree *tree;
@end

@implementation BinaryTreeTestCase

- (void)setUp {
    [super setUp];
    self.tree = [[BinaryTree alloc] initWithDataArray:@[@1,@2,@3,@4,@5,@6,@7,@8]];

}
// 前序遍历
-(void)testfrontEm {
    BinaryTree *tree = [[BinaryTree alloc] initWithDataArray:@[@1,@2,@3,@4,@5,@6,@7,@8]];
    [tree enumerateObjectsWithOptions:BinaryEnumerationOptionFront usingBlock:^(BinaryTreeNode *obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"%@",obj.data);
    }];
}
// 测试 前 中 --> tree
-(void)testBuildTree {
    
    BinaryTree *tree = [[BinaryTree alloc] initWithFrontDataArray:@[@1,@2,@4,@5,@3,@6,@7] midDataArray:@[@4,@2,@5,@1,@6,@3,@7]];
    [tree enumerateObjectsWithOptions:BinaryEnumerationOptionFront usingBlock:^(BinaryTreeNode *obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"%@",obj.data);
    }];
}
-(void)testCount {
    
    NSLog(@" ---- %ld",self.tree.count);
}

- (void)tearDown {
    
    [super tearDown];
}

- (void)testExample {
    
}

- (void)testPerformanceExample {
    [self measureBlock:^{
        NSMutableArray *array = [@[] mutableCopy];
        for (int i = 0; i < 100000000; i ++) {
            [array addObject:@(i)];
        }
    }];
}

@end
