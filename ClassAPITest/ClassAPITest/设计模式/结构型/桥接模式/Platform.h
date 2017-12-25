//
//  Platform.h
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/25.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Monkey.h"
@interface Platform : NSObject
@property(nonatomic,strong) Monkey *mokey;
-(void)show;
@end
