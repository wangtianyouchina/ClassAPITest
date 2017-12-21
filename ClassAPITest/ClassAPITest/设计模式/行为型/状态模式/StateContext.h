//
//  StateContext.h
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/21.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "State.h"
@interface StateContext : NSObject
-(instancetype)initWithState:(State *)state;
@property(nonatomic,strong,readonly) State *state;
@end
