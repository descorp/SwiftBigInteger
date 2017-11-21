//
//  BigInteger+Subtraction.swift
//  BigInteger
//
//  Created by Vladimir Abramichev on 21/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import Foundation

extension BigInteger {
    
    // MARK: subtraction
    static func -(lhs: BigInteger, rhs: BigInteger) -> BigInteger {
        switch (lhs.sign, rhs.sign) {
        case let (a, b) where a == b:
            return BigInteger.subtract(lhs, rhs)
        default:
            return BigInteger.add(lhs, rhs)
        }
    }
    
    static func -(lhs: BigInteger, rhs: Int) -> BigInteger {
        return lhs - BigInteger(value: rhs)
    }
    
    static func -(lhs: Int, rhs: BigInteger) -> BigInteger {
        return BigInteger(value: lhs) - rhs
    }
    
    static func -=(lhs: inout BigInteger, rhs: BigInteger) {
        lhs = lhs - rhs
    }
    
    static func -=(lhs: inout BigInteger, rhs: Int) {
        lhs = lhs - BigInteger(value: rhs)
    }
    
    static internal func subtract(_ lhs: BigInteger, _ rhs: BigInteger) -> BigInteger {
        var biggest, smallest : [Int8]
        var sign: Bool
        
        let compare = Array.compare(lhs.array, rhs.array)
        if compare > 0 {
            biggest = lhs.array
            smallest = rhs.array
            sign = lhs.sign
        } else if compare < 0 {
            biggest = rhs.array
            smallest = lhs.array
            sign = !rhs.sign
        } else {
            return BigInteger()
        }
        
        var i = 0
        while i < smallest.count {
            let value = Int(biggest[i]) - Int(smallest[i])
            if value < 0 {
                var n = i + 1
                while biggest[n] == 0 {
                    biggest[n] = 9
                    n += 1
                }
                
                biggest[n] -= 1
            } else {
                biggest[i] = Int8(abs(value))
            }
            
            i += 1
        }
        
        return BigInteger(raw: biggest, sign: sign)
    }
}
