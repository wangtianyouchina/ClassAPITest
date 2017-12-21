//
//  ShapCache.m
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/21.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import "ShapCache.h"
#import "Circle.h"
#import "Square.h"

@implementation ShapCache

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self initData];
    }
    return self;
}

-(void)initData {
    
    NSMutableDictionary *dic = [@{} mutableCopy];
    Circle *sharp = [[Circle alloc] init];
    dic[@"Circle"] = sharp;
    
    sharp = [[Square alloc] init];
    dic[@"Square"] = sharp;
    
    self.shapeDic = dic;

    
    
}

@end
