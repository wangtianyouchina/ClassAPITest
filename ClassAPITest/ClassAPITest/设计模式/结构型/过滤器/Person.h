//
//  Person.h
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/21.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property(nonatomic,strong) NSString *name;
@property(nonatomic,strong) NSString *gender;
@property(nonatomic,strong) NSString *maritalStatus;
-(instancetype)initWithName:(NSString *)name  gender:(NSString *)gender maritalStatus:(NSString *)maritalStatus;
@end

