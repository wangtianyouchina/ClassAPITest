//
//  Subject.h
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/28.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Observer;
@interface Subject : NSObject
-(void)addObserver:(Observer *)observer;
-(void)removeObserver:(Observer *)observer;
-(void)notify;
@end
