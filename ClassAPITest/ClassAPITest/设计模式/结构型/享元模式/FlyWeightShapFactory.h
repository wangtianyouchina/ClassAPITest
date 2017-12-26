//
//  FlyWeightShapFactory.h
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/26.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"
@interface FlyWeightShapFactory : NSObject
-(Shape *)getCircle:(NSString *)colorName;
@end
