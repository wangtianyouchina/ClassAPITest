//
//  Originator.m
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/28.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import "Originator.h"

@implementation Originator
-(Memento *)saveStateToMementTo {
    return [[Memento alloc] initWithState:self.state];
}
-(void)setStateFromMemento:(Memento *)memento {
    
    self.state = memento.state;
}
@end
