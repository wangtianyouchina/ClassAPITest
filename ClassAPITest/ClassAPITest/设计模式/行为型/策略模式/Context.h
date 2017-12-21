//
//  Context.h
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/21.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Strategy.h"
@interface Context : NSObject
// 什么时间定义 只能初始化方法 传递参数
@property(strong,nonatomic) Strategy *strategy;

-(void)executeStrategyWithA:(int)a b:(int)b;
@end
