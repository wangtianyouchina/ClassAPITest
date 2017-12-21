//
//  ShapeDecorator.h
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/21.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"
@interface ShapeDecorator : Shape
// 可以改变属性
// 可以改变方法调用
-(instancetype)shapeWithSpape:(Shape *)shape;
@property(nonatomic,strong) Shape *shape;
@end
