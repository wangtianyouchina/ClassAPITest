//
//  AbstractLogger.m
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/28.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import "AbstractLogger.h"

@implementation AbstractLogger
-(instancetype)initWithLevel:(NSInteger )level nextLogger:(AbstractLogger *)logger {
    self = [super init];
    if (self) {
        self.level = level;
        self.nextLogger = logger;
    }
    return self;
}

-(void)logMessage:(NSString *)message level:(NSInteger)level {
    
    if (self.level <= level) {
        NSLog(@"%@",message);
    }
    
    if (self.nextLogger) {
        [self.nextLogger logMessage:message level:level];
    }
    
}

-(void)write:(NSString *)message {
    
}
@end
