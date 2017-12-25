//
//  StopState.m
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/21.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import "StopState.h"
#import "StartState.h"
@implementation StopState

-(void)start {
    
    NSLog(@"开灯了");
    _context.state = [[StartState  alloc] initWithContext:_context];

}

-(void)stop {
    NSLog(@"已经是关灯状态了 什么也不干");
    
}


@end
