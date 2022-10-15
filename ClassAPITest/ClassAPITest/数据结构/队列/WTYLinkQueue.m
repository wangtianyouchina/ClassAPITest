//
//  WTYLinkQueue.m
//  ClassAPITest
//
//  Created by 王天佑 on 2019/8/13.
//  Copyright © 2019 xiaomaguohe. All rights reserved.
//

#import "WTYLinkQueue.h"

@implementation WTYLinkQueue
-(NSError *)delNode:(QueueNode *)node {
    
    QueueNode *head = self.head;
    QueueNode *preNode = nil;
    QueueNode *curNode = head;
    QueueNode *delNode = nil;
    
    while (delNode == nil && curNode != nil) {
        
        if ([curNode.key isEqualToString:node.key]) {
            delNode = curNode;
        }
        else {
            preNode = curNode;
            curNode = curNode.next;
        }
    }
    
    if (delNode == nil) {
        NSLog(@"不存在node");
        return nil;
    }
    
    if (preNode == nil) {
        self.head = nil;
        return nil;
    }
    
    preNode.next = delNode.next;
    
    return nil;
}
-(NSInteger)count {
    NSUInteger count = 0;
    QueueNode *node = self.head;
    while (node != nil) {
        count ++;
        node = node.next;
    }
    return count;
}
@end
