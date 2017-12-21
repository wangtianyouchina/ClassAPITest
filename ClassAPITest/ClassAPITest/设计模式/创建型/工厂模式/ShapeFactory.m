//
//  ShapeFactory.m
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/21.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import "ShapeFactory.h"

@implementation ShapeFactory

-(Shape *)shapeWithName:(NSString *)name {
    
    Shape *sharp = nil;
    
    Class class = NSClassFromString(name);
    
    @try {
        sharp = [[class alloc] init];
    } @catch (NSException *exception) {

    } @finally {
        
    }
    
    return sharp;
}

@end
