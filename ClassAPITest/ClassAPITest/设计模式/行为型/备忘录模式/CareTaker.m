//
//  CareTaker.m
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/28.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import "CareTaker.h"

@implementation CareTaker
{
    NSMutableArray *memenArr;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        memenArr = [@[] mutableCopy];
    }
    return self;
}
-(void)addMemento:(Memento *)memen {
    
    [memenArr addObject:memen];
}
-(Memento *)getMementoAtIndex:(NSInteger )index {
    return memenArr[index];
}
@end
