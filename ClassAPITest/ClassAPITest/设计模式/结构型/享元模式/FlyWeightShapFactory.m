//
//  FlyWeightShapFactory.m
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/26.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import "FlyWeightShapFactory.h"
@interface FlyWeightShapFactory()
@property(nonatomic,strong) NSMutableDictionary *circleDic;
@end

@implementation FlyWeightShapFactory
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.circleDic = [@{} mutableCopy];
    }
    return self;
}
-(Shape *)getCircle:(NSString *)colorName {
    
    Shape *shape = self.circleDic[colorName];
    
    if (shape == nil) {
        shape = [[Shape alloc] init];
        shape.colorName = colorName;
        self.circleDic[colorName] = shape;
    }
    
    return shape;
}
@end
