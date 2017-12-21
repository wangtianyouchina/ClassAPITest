//
//  CriteriaMale.m
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/21.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import "CriteriaMale.h"

@implementation CriteriaMale
-(NSArray<Person *> *)meetCriteria:(NSArray<Person *> *)persons {
    
    NSMutableArray *malePersons = [@[] mutableCopy];
    
    for (Person *person in persons) {
        
        if ([person.name compare:@"男"] == NSOrderedSame) {
            [malePersons addObject:person];
        }
    }
    
    return malePersons.copy;
}
@end
