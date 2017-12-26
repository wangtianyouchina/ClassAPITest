//
//  TVOnCommand.m
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/26.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import "TVOnCommand.h"
#import "TV.h"
@interface TVOnCommand()
@property(nonatomic,strong) TV *tv;
@end

@implementation TVOnCommand

-(instancetype)initWithTV:(TV *)tv {
    self = [super init];
    if (self) {
        self.tv  = tv;
    }
    return self;
}
-(void)excute {
    
    [self.tv on];
}

-(void)undo {
    [self.tv off];
}
-(void)redo {
    [self.tv on];
}

@end
