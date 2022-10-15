//
//  WTYQueue.m
//  ClassAPITest
//
//  Created by 王天佑 on 2019/8/13.
//  Copyright © 2019 xiaomaguohe. All rights reserved.
//

#import "WTYQueue.h"
@implementation QueueNode
+(QueueNode *)nodeWithKey:(NSString *)key {
    QueueNode *node = [[QueueNode alloc] init];
    node.key = key;
    return node;
}
@end
@interface WTYQueue()
@property(nonatomic,strong) NSMutableArray *items;
@property(nonatomic,assign) NSInteger headIndex;
@property(nonatomic,assign) NSInteger tailIndex;

@end

typedef enum {
    QueueErrorDefault = 0,
    QueueErrorIsEmpty,
    QueueErrorIsFull,
    QueueErrorNoInit,
    QueueErrorNodeInexistence

} QueueError;

@implementation WTYQueue

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.items = [@[] mutableCopy];
        self.headIndex = -1;
        self.tailIndex = -1;
        self.maxCount = 20;
        
    }
    return self;
}
-(BOOL)isEmpty {
    
    if (self.items.count == 0) {
        return  YES;
    }
    else {
        return NO;
    }
}
-(BOOL)isFull {
    if (self.items.count >= self.maxCount) {
        return YES;
    }
    else {
        return  NO;
    }
}

-(NSUInteger)count {
    return self.items.count;
}


-(instancetype)initWithHeadNode:(QueueNode *)node {
    self = [self init];
    [self.items addObject:node];
    return self;
}

-(BOOL)enNode:(QueueNode *)node {
    
    NSAssert(node != nil, @"节点不能为空");
    NSAssert(self.items != nil, @"数组没有初始化");
    
    if (self.isFull) {
        NSLog(@"队列已满");
        return NO;
    }
    
    [self.items addObject:node];
    return YES;
}
-(NSError *)delNode:(QueueNode *)node {
    NSAssert(node != nil, @"节点不能为空");
    NSAssert(self.items != nil, @"数组没有初始化");
    if (self.isEmpty) {
        return [[self class] errorWithCode:QueueErrorIsEmpty]; // 队列为空
    }
    NSInteger index = [self indexNode:node];
    if (index < 0) {
        return [[self class] errorWithCode:QueueErrorNodeInexistence];// 没在队列里
    }
    
    [self.items removeObjectAtIndex:index];
    return nil;
}

-(QueueNode *)headNode {
    if (self.isEmpty) {
        return nil;
    }
    
    return self.items.firstObject;
}
-(QueueNode *)tailNode {
    if (self.isEmpty) {
        return nil;
    }
    return self.items.lastObject;
}

-(NSInteger)indexNode:(QueueNode *)node {
    
    __block NSUInteger index = -1;
    [self.items enumerateObjectsUsingBlock:^(QueueNode  *obj, NSUInteger idx, BOOL * _Nonnull stop) {
       
        if ([obj.key isEqualToString:node.key]) {
            *stop = YES;
            index = idx;
        }
    }];
    
    return index;
}

+(NSError *)errorWithCode:(QueueError)code {
    NSString *localizedDescription;
    switch (code) {
        case QueueErrorDefault:
            localizedDescription = @"默认错误";
            break;
        case QueueErrorIsEmpty:
            localizedDescription = @"队列为空";
            break;
        case QueueErrorIsFull:
            localizedDescription = @"队列已满";
            break;
        case QueueErrorNoInit:
            localizedDescription = @"队列没有初始化";
            break;
        case QueueErrorNodeInexistence:
            localizedDescription = @"队列不存在该节点";
            break;
        default:
            break;
    }
    NSDictionary *userInfo = [NSDictionary dictionaryWithObject:localizedDescription forKey:NSLocalizedDescriptionKey];
    NSError *error = [NSError errorWithDomain:@"queueDOmain" code:code userInfo:userInfo];
    return error;
}

-(NSString *)description {
    
    for (QueueNode *node in self.items) {
        printf("%s ",[node.key UTF8String]);
    }
    return @"";
}
@end
