//
//  Subject.m
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/28.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import "Subject.h"
#import "Observer.h"
@interface Subject()
@property(nonatomic,strong) NSMutableArray *observerArr;
@end
@implementation Subject
- (instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}
-(void)addObserver:(Observer *)observer {
    
    [self.observerArr addObject:observer];
}

-(void)removeObserver:(Observer *)observer {
    [self.observerArr removeObject:observer];
}

-(void)notify {
    
    for (Observer *obj in self.observerArr) {
        [obj update];
    }
    
}
-(NSMutableArray *)observerArr {
    if (_observerArr) {
        return _observerArr;
    }
    _observerArr = [@[] mutableCopy];
    return _observerArr;
}
@end
