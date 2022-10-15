//
//  Heap.swift
//  ClassAPITest
//
//  Created by 王天佑 on 2019/8/13.
//  Copyright © 2019 xiaomaguohe. All rights reserved.
//

import Foundation

public struct Heap<T> {
    
    var nodes = [T]()
    private var orderriteria:(T,T) -> Bool
    public init(sort:@escaping (T,T)->Bool) {
        self.orderriteria = sort
    }
    //初始化方法
    public init(array:[T],sort:@escaping (T,T)->Bool) {
        self.orderriteria = sort
        self.configureHeap(from: array)
    }
    public mutating func configureHeap(from array:[T]) {
        nodes = array;
        
        for i in stride(from: nodes.count/2-1, to: 0, by: 1) {
            
            shiftDown(from: i, until: nodes.count)
        }
    }
    // 基本方法
    
    func parentIndex(ofIndex:Int) -> Int {
        return 1
    }
    
    internal mutating func shiftUp(_ index:Int) {
        
        var childIndex = index
        let child = nodes[childIndex]
        var parentIndex = self.parentIndex(ofIndex: childIndex)
        
        while childIndex > 0 && orderriteria(child,nodes[parentIndex]) {
            nodes[childIndex] = nodes[parentIndex]
            childIndex = parentIndex
            parentIndex = self.parentIndex(ofIndex: childIndex)
        }
        nodes[childIndex] = child
    }
    
    func leftChildIndex(ofIndex:Int) -> Int {
        return 1
    }
    // 左闭 右开
    internal mutating func shiftDown(from index:Int ,until endIndex:Int) {
        
        let leftChildIndex = self.leftChildIndex(ofIndex: index) // 左
        let rightChildIndex = leftChildIndex + 1 // 右
        
        var first = index
        
        if leftChildIndex < endIndex && orderriteria(nodes[leftChildIndex],nodes[first]) {
            first = leftChildIndex
        }
        
        if rightChildIndex < endIndex && orderriteria(nodes[rightChildIndex],nodes[first]) {
            first = rightChildIndex
        }
        
        if first == index {
            return
        }
        nodes.swapAt(index, first)
        shiftDown(from: first, until: endIndex)
    }
    
        
}
