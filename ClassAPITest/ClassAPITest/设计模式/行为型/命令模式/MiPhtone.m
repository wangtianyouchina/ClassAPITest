//
//  MiPhtone.m
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/26.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import "MiPhtone.h"

@implementation MiPhtone

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.commandList = [@[] mutableCopy];
    }
    return self;
}
-(void)setCommnad:(Command *)command {
    [self.commandList addObject:command];
    
}

-(void)onButtonWasPushed:(NSInteger)slot {
    
    if (slot < self.commandList.count) {
        [self.commandList[slot] excute];
    }
}
@end
