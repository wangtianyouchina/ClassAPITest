//
//  User.m
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/28.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import "User.h"
#import "ChatRoom.h"
@implementation User

-(void)sendMessage:(NSString *)message {
    [ChatRoom showMessage:message];
}
@end
