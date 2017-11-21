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
        switch (lhs.sign, rhs.sign) {
        case let (a, b) where a == b:
            return BigInteger.add(lhs, rhs)
        default:
            return lhs.sign ? BigInteger.subtract(lhs, rhs) : BigInteger.subtract(rhs, lhs)
        }
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
    
    static internal func add(_ lhs: BigInteger, _ rhs: BigInteger) -> BigInteger {
        var biggest, smallest : [Int8]
        if lhs.array.count > rhs.array.count {
            biggest = lhs.array
            smallest = rhs.array
        } else {
            biggest = rhs.array
            smallest = lhs.array
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
        
        return BigInteger(raw: biggest, sign: lhs.sign)
    }
}
