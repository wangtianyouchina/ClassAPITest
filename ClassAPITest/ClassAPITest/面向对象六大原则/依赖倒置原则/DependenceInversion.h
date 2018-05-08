//
//  DependenceInversion.h
//  ClassAPITest
//
//  Created by 王天佑 on 2018/5/7.
//  Copyright © 2018年 xiaomaguohe. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 *  依赖倒置
 *  抽象不应该依赖具体  具体应该依赖抽象; 高层次不应该依赖低层次  应该依赖高层次, 低层次应该依赖高层次,也不反对依赖同层次;
 *  人话: 向上看齐: 1.有上向上,没上看同级, 不能向下看
 *
 */
@interface DependenceInversion : NSObject

@end


@interface Car : NSObject
/*
 * 多态: 面向对象:父类指针可以指向子类
 * 1.子类化 实现多态  2.函数重载
 */
-(void)run;
-(void)turn;
-(void)stop;
@end
@interface HondaCar : Car
@end

@interface FordCar : Car
@end

@interface AutoSystem:NSObject
// 依赖抽象 再添加车, 不需要改变这个类, 对修改关闭了, 对扩展开放
-(void)runCar:(Car *)car;
// 依赖具体, 如果再添加车 就要再添加方法 对修改开放了 . . .
-(void)runHondCar:(HondaCar *)car;
@end
