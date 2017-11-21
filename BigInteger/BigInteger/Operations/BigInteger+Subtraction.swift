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
        if lhs.sign == rhs.sign {
            let value = BigInteger.subtract(lhs.array, rhs.array)
            if value == [0] {
                return BigInteger()
            }
            
            let comparisom = Array.compare(lhs.array, rhs.array)
            return BigInteger(raw: value, sign: comparisom > 0 ? lhs.sign : !lhs.sign)
        }
        
        return lhs + -rhs
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
    
    static internal func subtract(_ lhs: [Int8], _ rhs: [Int8]) -> [Int8] {
        var biggest, smallest : [Int8]
        
        let compare = Array.compare(lhs, rhs)
        if compare > 0 {
            biggest = lhs
            smallest = rhs
        } else if compare < 0 {
            biggest = rhs
            smallest = lhs
        } else {
            return [0]
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
        
        return biggest
    }
}
