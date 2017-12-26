//
//  LightOnCommand.h
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/26.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import "Command.h"
@class Light;
@interface LightOnCommand : Command
-(instancetype)initWithLight:(Light *)light;
@end
