//
//  DataStructureTest.m
//  ClassAPITest
//
//  Created by 王天佑 on 2018/4/12.
//  Copyright © 2018年 xiaomaguohe. All rights reserved.
//

#import "DataStructureTest.h"
#import "BinaryTree.h"
#import "WTYQueue.h"
#import "ClassAPITest-Swift.h"
@implementation DataStructureTest

+(void)test {
    
//    BinaryTree *tree = [[BinaryTree alloc] initWithDataArray:@[@1,@2,@3,@8,@4,@19]];
    
//    [self testQueue];
    [self textOO];
}
+(void)textOO {
    
}
+(void)testQueue {
    
    QueueNode *node = [[QueueNode alloc] init];
    node.key = @"1";
    
    WTYQueue *queue = [[WTYQueue alloc] initWithHeadNode:node];
    queue.maxCount = 5;
    
    [queue enNode:[QueueNode nodeWithKey:@"2"]];
    [queue enNode:[QueueNode nodeWithKey:@"2"]];
    [queue enNode:[QueueNode nodeWithKey:@"2"]];
    [queue enNode:[QueueNode nodeWithKey:@"2"]];
    [queue enNode:[QueueNode nodeWithKey:@"2"]];
    [queue enNode:[QueueNode nodeWithKey:@"2"]];
    [queue enNode:[QueueNode nodeWithKey:@"2"]];
    [queue enNode:[QueueNode nodeWithKey:@"3"]];
    [queue enNode:[QueueNode nodeWithKey:@"4"]];
    [queue enNode:[QueueNode nodeWithKey:@"6"]];
    [queue enNode:[QueueNode nodeWithKey:@"10"]];
    
    [queue description];
    
    [queue delNode:[QueueNode nodeWithKey:@"3"]];
    [queue description];
    [queue enNode:[QueueNode nodeWithKey:@"10"]];
    


    
}
@end
