//
//  BigInteger+Addition.swift
//  BigInteger
//
//  Created by Vladimir Abramichev on 21/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import Foundation

extension BigInteger {
    
    // MARK: addition
    static func +(lhs: BigInteger, rhs: BigInteger) -> BigInteger {
        if lhs.sign == rhs.sign {
            let result = BigInteger.add(lhs.array, rhs.array)
            return BigInteger(raw: result, sign: lhs.sign)
        }
        
        return lhs - -rhs
    }
    
    static func +(lhs: BigInteger, rhs: Int) -> BigInteger {
        return lhs + BigInteger(value: rhs)
    }
    
    static func +(lhs: Int, rhs: BigInteger) -> BigInteger {
        return rhs + BigInteger(value: lhs)
    }
    
    static func +=(lhs: inout BigInteger, rhs: BigInteger) {
        lhs = lhs + rhs
    }
    
    static func +=(lhs: inout BigInteger, rhs: Int) {
        lhs = lhs + BigInteger(value: rhs)
    }
    
    static internal func add(_ lhs: [Int8], _ rhs: [Int8]) -> [Int8] {
        var biggest, smallest : [Int8]
        if lhs.count > rhs.count {
            biggest = lhs
            smallest = rhs
        } else {
            biggest = rhs
            smallest = lhs
        }
        
        var i = 0
        while i < smallest.count {
            let value = biggest[i] + smallest[i]
            biggest[i] =  value % 10
            
            if value / 10 > 0 {
                if biggest.count > i + 1 {
                    biggest[i + 1] += 1
                } else {
                    biggest.append(1)
                }
            }
            i += 1
        }
        
        return biggest
    }
}
