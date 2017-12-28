//
//  CareTaker.h
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/28.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Memento.h"
@interface CareTaker : NSObject
-(void)addMemento:(Memento *)memen;
-(Memento *)getMementoAtIndex:(NSInteger )index;
@end
