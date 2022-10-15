//
//  ArrayTest.swift
//  ClassAPITest
//
//  Created by 王天佑 on 2020/3/19.
//  Copyright © 2020 xiaomaguohe. All rights reserved.
//

import Foundation

class ArrayTest {
    
    func arrTest() {
        
        //初始化 通过字面量 类型自动推断
        let array1 = [1,2,3]
        print(array1)
        // 初始化方法
        let array2 = Array<Int>()
        print(array2)
    }
}
