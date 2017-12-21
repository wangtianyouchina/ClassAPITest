//
//  ShapeFactory.h
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/21.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"
@interface ShapeFactory : NSObject

-(Shape *)shapeWithName:(NSString *)name;
-(Shape *)circle;
-(Shape *)square;
-(Shape *)Rectangle;

+(Shape *)shapeWithName:(NSString *)name;
+(Shape *)circle;
+(Shape *)square;
+(Shape *)Rectangle;



@end
