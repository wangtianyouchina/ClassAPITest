//
//  Context.m
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/21.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import "Context.h"

@implementation Context

-(void)executeStrategyWithA:(int)a b:(int)b {
    [self.strategy doOperationWithA:a b:b];
}
@end
