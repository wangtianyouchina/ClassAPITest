//
//  SingleResponsibility.h
//  ClassAPITest
//
//  Created by 王天佑 on 2018/5/8.
//  Copyright © 2018年 xiaomaguohe. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 * 单一职责原则 :对模块 类 协议 函数 变量
 * 一个类只负责一个功能领域中的相应职责，或者可以定义为：就一个类而言，应该只有一个引起它变化的原因。
 * 单一职责 对调用方 ,单一:是粒度问题 , 对于调用方 是否是单一整体
 */
@interface SingleResponsibility : NSObject

@end
// 引起PhoneProcol 变化的有两个原因
/*
 * 把PhoneProcol 拆成两个协议
 */
@protocol PhoneProcol<NSObject>
// 拨打电话
-(void)dial:(NSNumber *)number;
// 通话
-(void)chat:(id)obj;
// 听别人说话
-(void)listen:(id)obj;
// 挂电话
-(void)huangUp;
@end

@interface IConnectManager:NSObject<PhoneProcol>
@end
@interface DataTransfer:NSObject<PhoneProcol>
@end

