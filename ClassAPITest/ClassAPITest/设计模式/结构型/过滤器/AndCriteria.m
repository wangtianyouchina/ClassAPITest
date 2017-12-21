//
//  AndCriteria.m
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/21.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import "AndCriteria.h"

@implementation AndCriteria
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
    return [otherCrit meetCriteria:firstCriterapersons];
}

@end
