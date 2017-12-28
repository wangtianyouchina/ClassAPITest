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

//状态设计模式
#import "State.h"
#import "StopState.h"
#import "StateContext.h"

//桥接模式
#import "Platform.h"
#import "Monkey.h"
#import "WinPlatform.h"
#import "IosMonkey.h"

// 享元模式
#import "FlyWeightShapFactory.h"

//命令模式
#import "MiPhtone.h"
#import "TVOnCommand.h"
#import "LightOnCommand.h"
#import "TV.h"
#import "Light.h"

//中介者模式
#import "User.h"
#import "ChatRoom.h"

//备忘录
#import "Originator.h"
#import "Memento.h"
#import "CareTaker.h"
//责任链
#import "AbstractLogger.h"
#import "ConsoleLogger.h"
#import "ErrorLogger.h"
#import "FileLogger.h"

@implementation DesignPatternTest

+(void)test {
    
    
    // 状态设计模式
    [self test_StateContext];
    //桥接模式
    [self test_Bridge];
    //享元模式
    [self test_FlyWeight];
    //命令
    [self test_Command];
    
    [self test_Mediator];
    
    [self test_Memento];
    
    [self test_ChainOfResponsibility];
    
}

//责任链
+(void)test_ChainOfResponsibility {
    
    ConsoleLogger *console = [[ConsoleLogger alloc] initWithLevel:1 nextLogger:nil];
    ErrorLogger *error = [[ErrorLogger alloc] initWithLevel:2 nextLogger:nil];
    FileLogger *file = [[FileLogger alloc] initWithLevel:3 nextLogger:nil];
    
    console.nextLogger = error;
    error.nextLogger =file;
    
    
    [console logMessage:@"error 错误信息" level:2];
    
}

// 备忘录
+(void)test_Memento {
    
    Originator *originator = [[Originator alloc] init];
    CareTaker *taker = [[CareTaker alloc] init];
    
    originator.state = @"state 1";
    originator.state = @"state 2";
    [taker addMemento:originator.saveStateToMementTo];
    originator.state = @"state 3";
    [taker addMemento:originator.saveStateToMementTo];
    originator.state = @"state 4";
    
    NSLog(@"current State = %@ ",originator.state);
    [originator setStateFromMemento:[taker getMementoAtIndex:0]];
    NSLog(@"current State = %@ ",originator.state);
    [originator setStateFromMemento:[taker getMementoAtIndex:1]];
    NSLog(@"current State = %@ ",originator.state);

    
}

+(void)test_Mediator {
    
    User *xiaoming = [[User alloc] init];
    xiaoming.name = @"小明";
    
    User *xiaoHong = [[User alloc] init];
    xiaoHong.name = @"小红";
    
    
    [xiaoming sendMessage:@"小红 你好"];
    
    [xiaoHong sendMessage:@"小明 你好"];

    
}


+(void)test_Command {
    
    MiPhtone *phone = [[MiPhtone alloc] init];
    
    TVOnCommand *command = [[TVOnCommand alloc] initWithTV:[[TV alloc] init]];
    
    LightOnCommand *lightOnCommand = [[LightOnCommand alloc] initWithLight:[[Light alloc]init]];
    [phone setCommnad:command];
    [phone setCommnad:lightOnCommand];
    
    
    // 先开电视 再开灯
    [phone onButtonWasPushed:0];
    [phone onButtonWasPushed:1];
    
    
    
    
    
}
+(void)test_FlyWeight {
    
    FlyWeightShapFactory *facory = [[FlyWeightShapFactory alloc] init];
    Shape *red = [facory getCircle:@"red"];
    Shape *green = [facory getCircle:@"green"];
    Shape *blue = [facory getCircle:@"blue"];
    Shape *wight = [facory getCircle:@"wight"];
    
    Shape *newRed = [facory getCircle:@"red"];
    
    if (red == newRed) {
        NSLog(@"复用了之前的redshape");
    }
    

    
    
}

// 桥接模式
+(void)test_Bridge {
    WinPlatform *win = [[WinPlatform alloc] init];
    win.mokey = [[IosMonkey alloc] init];
    [win show];
}
// 状态设计模式
+(void)test_StateContext {
    
    StateContext *context = [[StateContext alloc] init];
    
    [context start];
    
    [context  stop];
    
    
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
