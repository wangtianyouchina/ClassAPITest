//
//  LiskovSubstitution.h
//  ClassAPITest
//
//  Created by 王天佑 on 2018/5/8.
//  Copyright © 2018年 xiaomaguohe. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 * 里氏替换原则(Liskov Substitution Principle, LSP)：所有引用父类的地方必须能使用其子类的对象。
 * 反之弊端: 不能实现开闭原则
 * 子类可以扩展父类的功能，但不能改变父类原有的功能
 *
 子类可以实现父类的抽象方法，但不能覆盖父类的非抽象方法。
 子类中可以增加自己特有的方法。
 当子类的方法重载父类的方法时，方法的前置条件（即方法的形参）要比父类方法的输入参数更宽松。
 当子类的方法实现父类的抽象方法时，方法的后置条件（即方法的返回值）要比父类更严格。参数列表必须与被重写方法的相同
 */

@interface LiskovSubstitution : NSObject
-(void)clientTest;
@end
@interface A : NSObject
-(void)add:(NSInteger )a b:(NSInteger)b;
// a-b
-(void)reduce:(NSInteger)a b:(NSInteger)b;
@end
@interface B : A

// a+b
-(void)reduce:(NSInteger)a b:(NSInteger)b;

// 调用 reduce //
-(void)add2:(NSInteger )a b:(NSInteger)b;



@end

