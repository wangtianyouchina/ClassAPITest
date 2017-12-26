//
//  TVOnCommand.h
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/26.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import "Command.h"
@class TV;
@interface TVOnCommand : Command
-(instancetype)initWithTV:(TV *)tv;
@end
