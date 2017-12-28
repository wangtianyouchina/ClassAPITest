//
//  Memento.m
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/28.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import "Memento.h"
@interface Memento ()
@property(nonatomic,copy) NSString *state;
@end

@implementation Memento

-(instancetype)initWithState:(NSString *)state {
    self = [super init];
    if (self) {
        self.state = state;
    }
    return self;
}

-(NSString *)state {
    return _state;
}
@end
