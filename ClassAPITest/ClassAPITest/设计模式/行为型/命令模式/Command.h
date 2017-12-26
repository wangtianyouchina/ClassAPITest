//
//  Command.h
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/26.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//
/*
 * 类  Client  Invoker  command(具体command 等) receiver
 *
 *
 *
 */

#import <Foundation/Foundation.h>

@interface Command : NSObject
-(void)excute;
-(void)undo;
-(void)redo;
@end
