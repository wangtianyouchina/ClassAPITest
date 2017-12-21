//
//  Criteria.h
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/21.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Criteria : NSObject
//@property(nonatomic,strong) NSArray<Criteria *> *meetCriteria;
//@property(nonatomic,strong) NSArray<Person *> *persons;
-(NSArray<Person *> *)meetCriteria:(NSArray<Person *> *)persons;
@end
