//
//  AbstractLogger.h
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/28.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//


enum {
    ZDINFO = 0,
    ZDDEBUG = 1,
    ZDERROR = 2
};

#import <Foundation/Foundation.h>

@interface AbstractLogger : NSObject
@property(nonatomic,assign) NSInteger level;
@property(nonatomic,strong) AbstractLogger *nextLogger;
-(instancetype)initWithLevel:(NSInteger )level nextLogger:(AbstractLogger *)logger;

-(void)logMessage:(NSString *)message level:(NSInteger)level;
-(void)write:(NSString *)message;

@end
