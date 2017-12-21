//
//  AndCriteria.h
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/21.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import "Criteria.h"

@interface AndCriteria : Criteria
-(void)andCriteriaWithCiteria:(Criteria *)cit otherCirteria:(Criteria *)otherCit;
@end
