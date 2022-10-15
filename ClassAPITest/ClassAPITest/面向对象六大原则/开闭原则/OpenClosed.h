//
//  OpenClosed.h
//  ClassAPITest
//
//  Created by 王天佑 on 2018/5/7.
//  Copyright © 2018年 xiaomaguohe. All rights reserved.
//
/*
 * 开闭原则 是面向对象世界里最基础的设计原则,它指导我们建立一个稳定,灵活, 可扩展的系统
 *  开闭原则明确的告诉我们：软件实现应该对扩展开放，对修改关闭，其含义是说一个软件应该通过扩展来实现变化，而不是通过修改已有的代码来实现变化的
 *一个软件产品只要在生命周期内，都会发生变化，即然变化是一个事实，我们就应该在设计时尽量适应这些变化，以提高项目的稳定性和灵活性，真正实现“拥抱变化”。开闭原则告诉我们应尽量通过扩展软件实体的行为来实现变化，而不是通过修改现有代码来完成变化，它是为软件实体的未来事件而制定的对现行开发设计进行约束的一个原则
 */

#import <Foundation/Foundation.h>
@class AreaManager;
@class Rectangle;
@class Circle;
/*
 * 开闭原则 还有更具体的 可变性封装原则
 * 好处:可复用性好 可维护性好  加新的组件，来满足不断变化的需求,不用担心软件系统中原有组件的稳定性,变化中的软件系统有一定的稳定性和延续性。

 * 软件系统中的各个组件: 模块 类 函数等 应该在不修改原有代码的基础上 引入新功能
 * 开: 对功能扩展开放  闭:对调用方修改关闭(即修改原有的代码对外部的使用是透明的)
 */
@interface OpenClosed : NSObject

-(void)test;
@end



@protocol ShapeProtocol<NSObject>
-(double)getArea;
@end



@interface AreaManager:NSObject
// 数组指定 元素遵从协议
-(double)calulateArea:(NSArray<ShapeProtocol> *)shapes;
@end

@interface WTYRectangle:NSObject
@property(nonatomic,assign) double length;
@property(nonatomic,assign) double height;

@end

@implementation WTYRectangle

@end


@interface WTYCircle:NSObject<ShapeProtocol>
@property(nonatomic,assign) double radius;
@end

