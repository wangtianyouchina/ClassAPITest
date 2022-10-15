//
//  LawOfDemeter.m
//  ClassAPITest
//
//  Created by 王天佑 on 2018/5/8.
//  Copyright © 2018年 xiaomaguohe. All rights reserved.
//

#import "LawOfDemeter.h"

@implementation LawOfDemeter

@end
// 佣人
@implementation Maid
-(void)cook {
    NSLog(@"%@---- cook",self.id);
}
@end

// 管家
@implementation Butle

-(void)cookCommand {
    for (Maid *maid in self.maidArray) {
        [maid cook];
    }
}


@end
//主人
@implementation Master

/*
 * 违反了最少知道原则
-(void)cookCommand:(Butle *)butle {
    
    for (Maid *maid in butle.maidArray) {
        [maid cook];
    }
}
 */

// 符合最少知道原则
-(void)cookCommand:(Butle *)butle {
    [butle cookCommand];
}


@end
