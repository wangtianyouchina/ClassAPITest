//
//  Meal.h
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/21.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Packing.h"
@interface Meal : NSObject
-(NSString *)name;
-(Packing *)packing;
-(float)price;

@property(nonatomic,strong) NSString *items;
@end
