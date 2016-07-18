//
//  NSArrayTestCase.m
//  ClassAPITest
//
//  Created by wang.tianyou on 16/7/18.
//  Copyright © 2016年 xiaomaguohe. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface NSArrayTestCase : XCTestCase

@end

@implementation NSArrayTestCase

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

//@property (readonly) NSUInteger count;
-(void)testCount {

    NSMutableArray *array = [@[@"1",@"2"] mutableCopy];
    NSString *obj = [array objectAtIndex:0];
    XCTAssertEqual(@"1", obj,@"1两个数不相待");
    
    array[0] = @"new1";
    array[3] = @"new1";
//    XCTAssertEqual(@"new1", obj,@"new1两个数不相待");

}
//- (ObjectType)objectAtIndex:(NSUInteger)index;
//- (instancetype)init NS_DESIGNATED_INITIALIZER;
//- (instancetype)initWithObjects:(const ObjectType [])objects count:(NSUInteger)cnt NS_DESIGNATED_INITIALIZER;
//- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder NS_DESIGNATED_INITIALIZER;

-(void)testInit {
    NSArray *array = [NSArray array];
    XCTAssertNil(array,@"创建成功");
}


- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
