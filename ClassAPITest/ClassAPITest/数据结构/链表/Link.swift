//
//  Link.swift
//  ClassAPITest
//
//  Created by 王天佑 on 2019/8/20.
//  Copyright © 2019 xiaomaguohe. All rights reserved.
//

import Foundation

//protocol NodeProtocol {
//    var key{
//    }
//    var data {
//
//    }
//}

class LinkNode:NSObject {
    
    var data:String?
    var pre:LinkNode?
    var next:LinkNode?
}


public class SingleLink:NSObject {
    
    
    override init() {
        
    }
    init(head:LinkNode) {
        self.head = head
    }
    
    var head:LinkNode?
    var tail:LinkNode?
    
    var count:NSInteger {
        get {
            var count = 0
            var node:LinkNode? = head
            while node != nil {
                count += 1
                node = node?.next
            }
            return count
        }
    }
    
    func findNode(findNode:LinkNode) -> LinkNode? {
        
        var node:LinkNode? = head
        while node != nil {
            if node!.data == findNode.data {
                return node
            }
        }
        
        return nil
    }
    
    func delNode(node:LinkNode) -> Void {
        
        if head == nil {
            return // 链表为空
        }
        var preNode:LinkNode? = nil
        var searchNode:LinkNode? = head
        
        while searchNode != nil {
            if searchNode!.data == node.data {
                break
            }
            preNode = searchNode
            searchNode = searchNode?.next
        }
        
        if let node = searchNode {
            if let pre = preNode {
                pre.next = node.next
            }
            else {
                head = nil
            }
            // 查到了
        }
        else {
            // 没有查到
        }
    }
    
    func insertNode(node:LinkNode,atNode:LinkNode) -> Void {
        
    }
    func addNode(node:LinkNode) -> Void {
        
    }
    
    
    public func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        
        
        var i = 0
        var j = 1
        while j < nums.count {
            if nums[i] != nums[j] {
                i += 1
            }
            else {
                nums.remove(at: j)
                j -= 1
            }
            j += 1

        }
        
        return i+1;
        
    }

}
