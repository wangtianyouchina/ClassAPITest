//
//  WTYLinkQueue.h
//  ClassAPITest
//
//  Created by 王天佑 on 2019/8/13.
//  Copyright © 2019 xiaomaguohe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WTYQueue.h"
NS_ASSUME_NONNULL_BEGIN

@interface WTYLinkQueue : NSObject
@property(nonatomic,strong)QueueNode * head;
-(instancetype)queueWithNode:(QueueNode *)node;

-(NSInteger)count;
-(NSError *)delNode:(QueueNode *)node;
-(NSError *)enNodel:(QueueNode *)node;
-(QueueNode *)dequeue;
//-(QueueNode *)head;
-(QueueNode *)tail;
-(BOOL)isEmpty;
-(BOOL)isFull;
//  1.创建 2.销毁 3.入列 4.出列 5.是否是空,是否满,数量

@end

NS_ASSUME_NONNULL_END
