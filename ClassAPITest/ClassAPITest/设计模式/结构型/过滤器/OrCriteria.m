//
//  OrCriteria.m
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/21.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import "OrCriteria.h"

@implementation OrCriteria
{
    Criteria *crit;
    Criteria *otherCrit;
}
-(void)andCriteriaWithCiteria:(Criteria *)cit otherCirteria:(Criteria *)otherCit {
    crit = cit;
    otherCrit = otherCit;
}

-(NSArray<Person *> *)meetCriteria:(NSArray<Person *> *)persons {
    NSArray *firstCriterapersons = [crit meetCriteria:persons];
    NSArray *secondCriterapersons = [crit meetCriteria:persons];
    
    NSMutableArray *mutArray = [NSMutableArray arrayWithArray:firstCriterapersons];
    for (Person *person in secondCriterapersons) {
        if(![mutArray containsObject:person]) {
            [mutArray addObject:person];
        }
    }
    return mutArray.copy;
}
@end
