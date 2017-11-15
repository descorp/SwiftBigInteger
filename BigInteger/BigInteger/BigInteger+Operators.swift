//
//  BigInteger+Operators.swift
//  BigInteger
//
//  Created by Vladimir Abramichev on 12/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import Foundation

extension BigInteger {
    
    // MARK: addition
    static func +(lhs: BigInteger, rhs: BigInteger) -> BigInteger {
        return BigInteger.init()
    }
    
    static func +(lhs: BigInteger, rhs: Int) -> BigInteger {
        return BigInteger.init()
    }
    
    static func +(lhs: Int, rhs: BigInteger) -> BigInteger {
        return BigInteger.init()
    }
    
    static func +=(lhs: inout BigInteger, rhs: BigInteger) {
        
    }
    
    static func +=(lhs: inout BigInteger, rhs: Int) {
        
    }
}

extension BigInteger {
    
    // MARK: subtraction
    static func -(lhs: BigInteger, rhs: BigInteger) -> BigInteger {
        return BigInteger.init()
    }
    
    static func -(lhs: BigInteger, rhs: Int) -> BigInteger {
        return BigInteger.init()
    }
    
    static func -(lhs: Int, rhs: BigInteger) -> BigInteger {
        return BigInteger.init()
    }
    
    static func -=(lhs: inout BigInteger, rhs: BigInteger) {
        
    }
    
    static func -=(lhs: inout BigInteger, rhs: Int) {
        
    }
}

extension BigInteger {
    
    // MARK: multiplication
    static func *(lhs: BigInteger, rhs: BigInteger) -> BigInteger {
        return BigInteger.init()
    }
    
    static func *(lhs: BigInteger, rhs: Int) -> BigInteger {
        return BigInteger.init()
    }
    
    static func *(lhs: Int, rhs: BigInteger) -> BigInteger {
        return BigInteger.init()
    }
    
    static func *=(lhs: inout BigInteger, rhs: BigInteger) {
        
    }
    
    static func *=(lhs: inout BigInteger, rhs: Int) {
        
    }
}

extension BigInteger {
    
    // MARK: division
    static func /(lhs: BigInteger, rhs: BigInteger) -> BigInteger {
        return BigInteger.init()
    }
    
    static func /(lhs: BigInteger, rhs: Int) -> BigInteger {
        return BigInteger.init()
    }
    
    static func /(lhs: Int, rhs: BigInteger) -> BigInteger {
        return BigInteger.init()
    }
    
    static func /=(lhs: inout BigInteger, rhs: BigInteger) {
        
    }
    
    static func /=(lhs: inout BigInteger, rhs: Int) {
        
    }
}

extension BigInteger {
    
    // MARK: negation
    static prefix func -(item: BigInteger) -> BigInteger {
        var result = item.copy()
        result.sign = !result.sign
        return result
    }
    
    // MARK: power
    static func ^(lhs: BigInteger, rhs: Int) -> BigInteger {
        if(rhs == 0) { return BigInteger(value: 1) }
        if(rhs == 1) { return lhs }
        
        var temp = lhs.copy()
        for i in 1...rhs {
            temp *= lhs
        }
        
        return temp
    }
}
