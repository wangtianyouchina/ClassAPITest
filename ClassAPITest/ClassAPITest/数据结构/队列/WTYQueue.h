//
//  WTYQueue.h
//  ClassAPITest
//
//  Created by 王天佑 on 2019/8/13.
//  Copyright © 2019 xiaomaguohe. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface QueueNode :NSObject
@property(nonatomic,copy) NSString *key;
@property(nonatomic,strong) id data;
@property(nonatomic,strong) QueueNode *next;
+(QueueNode *)nodeWithKey:(NSString *)key;
@end

@interface WTYQueue : NSObject
@property(nonatomic,assign) NSUInteger count;
@property(nonatomic,assign) NSUInteger maxCount;
@property(nonatomic,assign) BOOL isEmpty;
@property(nonatomic,assign) BOOL isFull;

// 1.创建 销毁 2.增删改查
-(instancetype)initWithHeadNode:(QueueNode *)node;
-(QueueNode *)headNode;
-(QueueNode *)tailNode;

-(NSError *)enNode:(QueueNode *)node; // 添加数据
-(NSError *)delNode:(QueueNode *)node; // 删除数据
// 3.清空队列
// 4.
-(NSString *)description;
@end

