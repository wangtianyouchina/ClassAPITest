//
//  ShapeMaker.h
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/21.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"
@interface ShapeMaker : NSObject

@property(nonatomic,strong) Shape *circle;
@property(nonatomic,strong) Shape *rectangle;
@property(nonatomic,strong) Shape *square;

-(void)drawCircle;
-(void)drawRectangle;
-(void)drawSquare;



@end
