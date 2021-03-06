//
//  ZDColorFactory.m
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/21.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import "ZDColorFactory.h"

@implementation ZDColorFactory
+(ZDShape *)getShapWithName:(NSString *)name {
    
    return nil;
}

+(ZDColor *)getColorWithName:(NSString *)name {
    
    ZDColor *sharp = nil;
    
    Class class = NSClassFromString(name);
    
    @try {
        sharp = [[class alloc] init];
    } @catch (NSException *exception) {
        
    } @finally {
        
    }
    
    return sharp;
}

@end
