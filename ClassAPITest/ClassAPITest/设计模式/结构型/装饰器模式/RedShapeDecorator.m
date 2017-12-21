//
//  RedShapeDecorator.m
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/21.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import "RedShapeDecorator.h"

@implementation RedShapeDecorator

-(void)draw {
    
    [self.shape draw];
    [self setRedBorder:self.shape];
    
}

-(void)setRedBorder:(Shape *)shape {
    NSLog(@"加了红色");
}
@end
