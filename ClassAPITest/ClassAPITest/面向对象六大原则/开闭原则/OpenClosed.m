//
//  OpenClosed.m
//  ClassAPITest
//
//  Created by 王天佑 on 2018/5/7.
//  Copyright © 2018年 xiaomaguohe. All rights reserved.
//

#import "OpenClosed.h"

@implementation WTYCircle
-(double)getArea {
    return 0;
}
@end


@implementation OpenClosed

-(void)test {
    AreaManager *manager = [[AreaManager alloc] init];
    NSArray *array = @[[[WTYCircle alloc] init]];
    [manager calulateArea:array];
}

@end

@implementation AreaManager
-(double)calulateArea:(NSArray *)shapes {
    /*
     // 这样设计 如何添加 三角形 就要改这个类 违反了开闭
    double area = 0;
    for (id shape in shapes) {
        if ([shape isKindOfClass:[Rectangle class]]) {
            Rectangle *rect = (Rectangle *)shape;
            area += (rect.length) * rect.height;
        } else if ([shape isKindOfClass:[Circle class]]) {
            Circle *circle = (Circle *)shape;
            area += circle.radius * circle.radius * 3.14;
        } else {
            NSAssert(YES, @"不支持的类型");
        }
    }
    return area;
     */
    double area = 0;
    for (id shape in shapes) {
        if ([shape conformsToProtocol:@protocol(ShapeProtocol)]) {
            id<ShapeProtocol> newShape = shape;
            area += [newShape  getArea];
        }
    }
    return area;
}
@end

