//
//  StartState.m
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/21.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import "StartState.h"
#import "StopState.h"
@implementation StartState

-(void)start {
    
    NSLog(@"已经是开灯状态了 什么也不干");
    
}

-(void)stop {
    NSLog(@"关灯了");
    _context.state = [[StopState alloc] initWithContext:_context];
    
}
@end
