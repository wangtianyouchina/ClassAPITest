//
//  LightOnCommand.m
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/26.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import "LightOnCommand.h"
#import "Light.h"
@interface LightOnCommand ()
@property(nonatomic,strong) Light *light;
@end
@implementation LightOnCommand
-(instancetype)initWithLight:(Light *)light {
    self = [super init];
    if (self) {
        self.light  = light;
    }
    return self;
}
-(void)excute {
    
    [self.light on];
}

-(void)undo {
    [self.light off];
}
-(void)redo {
    [self.light on];
}
@end
