//
//  StateContext.m
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/21.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import "StateContext.h"
#import "State.h"
#import "StopState.h"
@implementation StateContext

//-(instancetype)initWithState:(State *)state {
//    self = [super init];
//    if(self) {
//        self.state = state;
//    }
//    return self;
//}
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.state = [[StopState alloc] initWithContext:self];
    }
    return self;
}
-(void)start {
    [self.state start];
    
}
-(void)stop {
    [self.state stop];
}
@end
