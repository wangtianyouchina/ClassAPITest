//
//  State.m
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/21.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import "State.h"

@implementation State
-(instancetype)initWithContext:(StateContext *)context {
    self = [super init];
    if(self) {
        _context = context;
    }
    return self;
}
-(void)start {
    
}
-(void)stop {
    
}
@end


