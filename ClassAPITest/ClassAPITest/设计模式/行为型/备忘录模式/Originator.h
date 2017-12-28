//
//  Originator.h
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/28.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Memento.h"
@interface Originator : NSObject
@property(nonatomic,strong) NSString *state;

-(Memento *)saveStateToMementTo;
-(void)setStateFromMemento:(Memento *)memento;

@end
