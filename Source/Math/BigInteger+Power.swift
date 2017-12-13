//
//  BigInteger+Math.swift
//  BigInteger
//
//  Created by Vladimir Abramichev on 13/12/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import Foundation

extension BigInteger {
    
    // MARK: negation
    static prefix func -(item: BigInteger) -> BigInteger {
        var result = item
        result.sign = !result.sign
        return result
    }
    
    // MARK: power
    static func ^(lhs: BigInteger, rhs: Int) -> BigInteger {
        return BigInteger.pow(lhs: lhs, rhs: UInt64(abs(rhs)))
    }
    
    static func ^(lhs: BigInteger, rhs: Int64) -> BigInteger {
        return BigInteger.pow(lhs: lhs, rhs: UInt64(abs(rhs)))
    }
    
    static func ^(lhs: BigInteger, rhs: UInt) -> BigInteger {
        return BigInteger.pow(lhs: lhs, rhs: UInt64(rhs))
    }
    
    static func ^(lhs: BigInteger, rhs: UInt64) -> BigInteger {
        return BigInteger.pow(lhs: lhs, rhs: UInt64(rhs))
    }
    
    private static func pow(lhs: BigInteger, rhs: UInt64) -> BigInteger {
        if(rhs == 0) { return BigInteger(value: 1) }
        if(rhs == 1) { return lhs }
        
        var temp = lhs
        for _ in 1...rhs {
            temp *= lhs
        }
        
        return temp
    }
}
