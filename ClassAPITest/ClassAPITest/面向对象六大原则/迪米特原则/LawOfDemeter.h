//
//  LawOfDemeter.h
//  ClassAPITest
//
//  Created by 王天佑 on 2018/5/8.
//  Copyright © 2018年 xiaomaguohe. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 * 封装 :包装,隐藏信息
 * 好处: 减少耦合, 隐藏信息; 类内部可以自由修改; 对成员精确控制;
 *      可以容易修改类内部 , 无需要修改调用方
 *       可以对成员变量进行更精确的控制: age   setage {age>0 age<100}
*
 */
/*
 * 多态:单一接口,不同实现
 * 参数多态 子类型多态
 * 实现方式:
 * 函数: 重载
 * 接口:
 * 类继承
 */
/*
 * 继承
 * 利:
 *1.代码重用: 子类不可以用超类的变量和方法
 *2.代码的可靠性: 重用 产生的益处  利用可靠的(测试通过的)超类(api类)
 *3. . .  .
 * 弊:
 * 1.继承层级过深  耦合度增强
 * 2.超类修改,影响所有子类
 */
/*
 * 耦合 内聚 相辅相成
 * 各司其职 , 互不干涉
 * 高耦合:50个函数 1个函数修改 49个函数就要修改
 * 1.无直接耦合, 2.数据耦合,3.标记耦合(数据结构),4.控制耦合,5.公共耦合,6.内容耦合
 * 内聚
 * 高内聚: 1.可读生(只高度相关的功能易理解 炮兵就是开炮的) 2.复用性(独立的环境) 3.可维护行和易变性
 * 1.偶然内聚,2.逻辑内聚,3.时间内聚,4.通信内聚,5.顺序内聚,6.功能内聚
 */
/*
 * 组合:
 */
/*
 * 元数据编程 ,数据驱动
 */
/*
 * 迪米特法则（Law of Demeter）又叫作最少知识原则（Least Knowledge Principle 简写LKP），就是说一个对象应当对其他对象有尽可能少的了解,不和陌生人
 * 够用就好; 知道的越多 耦合越高
 * 生活中: 强调等级  阶级
 
 *  应用
 * 变量: 命名:以需求方的需求命名,不要以命名具体实现命名
 * 函数: 命名:以需求方命名; 以最小 少的数据结构传递参数,
 * 类设计: 设置成不变类 ,尽量降低类的成员变量 方法的访问权限
 * 关系: 尽量降低关联类的数量 , 数据结构 引用  函数引用  模块引用
 * 模块设计: 类之间的相互引用越少约好
 *
 *
 */




@interface LawOfDemeter : NSObject

@end
// 佣人
@interface Maid : NSObject
@property(nonatomic,copy) NSString *id;
-(void)cook;
@end

// 管家
@interface Butle : NSObject
@property(nonatomic,strong) NSMutableArray<Maid*> *maidArray;
-(void)cookCommand;
@end
//主人
@interface Master : NSObject
-(void)cookCommand:(Butle *)butle;

@end



