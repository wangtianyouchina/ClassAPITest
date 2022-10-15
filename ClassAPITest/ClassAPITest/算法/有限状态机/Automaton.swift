//
//  Automaton.swift
//  ClassAPITest
//
//  Created by 王天佑 on 2020/6/5.
//  Copyright © 2020 xiaomaguohe. All rights reserved.
//

import Foundation

/*
 算法 字符串 转 数字  -11> -11 +11> 11   123sss > 123   sss22 > 12
 */


/*

                ' '    +/-    number    other
    start        start    signed    in_number    end
    signed       end    end    in_number    end
    in_number    end    end    in_number    end
    end          end    end    end    end

 */

extension Character {
    func toInt() -> Int32 {
        return Int32((String(self) as NSString).character(at: 0))
    }
}
class Automaton {
    
    var state = "state"
    var sign = 1
    var ans:Int32 = 1 // 数字
    var table = ["state":["state","signed","in_number","end"],
                 "signed":["end","end","in_number","end"],
                 "in_number":["end","end","in_number","end"],
                 "end":["end","end","end","end"]
    ]
    
    func get_col(chr:Character) -> Int{
            
        if chr.isWhitespace { return 0 }
        if chr == "+" || chr == "-" { return 1 }
        if chr.isNumber { return 2 }
        return 3
    }
    
    func tran(chr:Character) {
        state = table[state]![get_col(chr: chr)]
        if state == "in_number" {
            if ans > (Int32.max / 10 - chr.toInt()) {
                ans = Int32.max
            }
            else {
                ans = ans * 10 + chr.toInt()
            }
        }
        else if state == "signed"{
            sign = (chr == "-" ? -1 : 1)
        }
    }
    
}

func main() {
    
    let str = "124ddd"
    
    func atoi(str : String ) -> Int32 {
        
        let auto = Automaton()
        for c in str {
            auto.tran(chr: c)
        }
        
        if auto.sign == 1 { return  auto.ans}
        else {
            if auto.ans >= (Int32.max - 1) {
                return Int32.min
            }
            else {
                return  auto.ans * -1
            }
        }
    }
    
}
