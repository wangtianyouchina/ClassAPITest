//
//  LinkTest.swift
//  ClassAPITestTests
//
//  Created by 王天佑 on 2019/8/21.
//  Copyright © 2019 xiaomaguohe. All rights reserved.
//

import XCTest

class LinkTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let link = SingleLink()
        var nums = [1,2,2,2,3,4,5]
        let count = link.removeDuplicates(&nums)
        
        print("\(count)..\(nums)")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
