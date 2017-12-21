//
//  DesignPatternTest.m
//  ClassAPITest
//
//  Created by 王天佑 on 2017/12/21.
//  Copyright © 2017年 xiaomaguohe. All rights reserved.
//

#import "DesignPatternTest.h"
#import "ShapeFactory.h"


#import "AbstractFactory.h"
#import "Shape.h"
#import "ZDColor.h"
#import "FactoryProducer.h"
// 建造者
#import "MealBuilder.h"
#import "Meal.h"
//策略
#import "Strategy.h"
#import "Context.h"
#import "OpearationAdd.h"

//过滤器模式

#import "Person.h"
#import "Criteria.h"
#import "CriteriaMale.h"
#import "AndCriteria.h"
#import "CriteriaSingle.h"
//装饰者
#import "ShapeDecorator.h"
#import "RedShapeDecorator.h"

@implementation DesignPatternTest

+(void)test {
    
    
    
    
    
}

+(void)test_ShapeDecorator {
    
    Shape *shape = [[Shape alloc] init];
    
    shape = [[RedShapeDecorator alloc] shapeWithSpape:shape];
    
    [shape draw];
    
}

//过滤器模式
+(void)test_Criteria {
    NSMutableArray *mutArr = [@[] mutableCopy];
    
    [mutArr addObject:[[Person alloc] initWithName:@"小王" gender:@"男" maritalStatus:@"single"]];
    [mutArr addObject:[[Person alloc] initWithName:@"小明" gender:@"男" maritalStatus:@"single"]];
    [mutArr addObject:[[Person alloc] initWithName:@"小红" gender:@"女" maritalStatus:@"single"]];
    [mutArr addObject:[[Person alloc] initWithName:@"小王" gender:@"男" maritalStatus:@"single"]];
    [mutArr addObject:[[Person alloc] initWithName:@"小王" gender:@"女" maritalStatus:@"max"]];
    
    Criteria * mal = [[CriteriaMale alloc] init];
    Criteria * single = [[CriteriaSingle alloc] init];

    Criteria *addCir = [[AndCriteria alloc] init];
    NSArray *array = [mal meetCriteria:mutArr];
    array = [single meetCriteria:array];
    NSLog(@"%@",array);

}

//策略模式
+(void)test_Strategy {
    
    Context *cont = [[Context alloc] init];
    cont.strategy = [[OpearationAdd alloc] init];
    [cont executeStrategyWithA:1 b:1];
    
}

//建造者  需要建造 复杂对象时 用建造者 模式
+(void)test_MealBuilder {
    
    MealBuilder *builder = [[MealBuilder alloc] init];
    Meal *meal = [builder prepareVegMeal];
    
}
//抽象工厂
+(void)test_abstractFactory {
    
    AbstractFactory *factory = [FactoryProducer factoryWithName:@"ZDShapFactory"];
    ZDShape *shape = [factory getShapWithName:@"ZDCircle"];
    [shape draw];
    
    
    factory = [FactoryProducer factoryWithName:@"ZDColorFactory"];
    ZDColor *color = [factory getColorWithName:@"ZDRed"];
    [color colorName];
    
}


// 简单工厂
+(void)test_sampleFactory {
    
    ShapeFactory *factory = [[ShapeFactory alloc] init];
    Shape *shape = [factory shapeWithName:@"Circle"];
    [shape draw];
    
    shape = [factory shapeWithName:@"Square"];
    [shape draw];
    
    shape = [factory shapeWithName:@"Rectangle"];
    [shape draw];

    
}

@end
