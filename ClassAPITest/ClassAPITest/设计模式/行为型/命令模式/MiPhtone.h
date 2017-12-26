//
//  MiPhtone.h
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/26.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"
// Invoker
@interface MiPhtone : NSObject
@property(nonatomic,strong) NSMutableArray<Command *> *commandList;
-(void)setCommnad:(Command *)command;
-(void)onButtonWasPushed:(NSInteger)slot;

@end
