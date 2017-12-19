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
        if lhs.isNaN || rhs.isNaN {
            return BigInteger.nan
        }
        
        if lhs.isInfinit && rhs.isInfinit && rhs.sign != lhs.sign  {
            return BigInteger.nan
        }
        
        if lhs.isInfinit && rhs.isInfinit && rhs.sign == lhs.sign  {
            return lhs.sign ? BigInteger.infinit : -BigInteger.infinit
        }
        
        if lhs.isInfinit {
            return lhs
        }
        
        if rhs.isInfinit {
            return rhs
        }
        
        if lhs.sign == rhs.sign {
            let result = BigInteger.add(lhs.array, rhs.array)
            return BigInteger(raw: result, sign: lhs.sign)
        }
        
        return lhs - -rhs
    }
    
    static func +(lhs: BigInteger, rhs: Int) -> BigInteger {
        return lhs + BigInteger(value: rhs)
    }
    
    static func +(lhs: BigInteger, rhs: Int64) -> BigInteger {
        return lhs + BigInteger(value: rhs)
    }
    
    static func +(lhs: BigInteger, rhs: UInt) -> BigInteger {
        return lhs + BigInteger(value: rhs)
    }
    
    static func +(lhs: BigInteger, rhs: UInt64) -> BigInteger {
        return lhs + BigInteger(value: rhs)
    }
    
    static func +(lhs: Int, rhs: BigInteger) -> BigInteger {
        return rhs + BigInteger(value: lhs)
    }
    
    static func +(lhs: Int64, rhs: BigInteger) -> BigInteger {
        return rhs + BigInteger(value: lhs)
    }
    
    static func +(lhs: UInt, rhs: BigInteger) -> BigInteger {
        return rhs + BigInteger(value: lhs)
    }
    
    static func +(lhs: UInt64, rhs: BigInteger) -> BigInteger {
        return rhs + BigInteger(value: lhs)
    }
    
    static func +=(lhs: inout BigInteger, rhs: BigInteger) {
        lhs = lhs + rhs
    }
    
    static func +=(lhs: inout BigInteger, rhs: Int) {
        lhs = lhs + BigInteger(rhs)
    }
    
    static func +=(lhs: inout BigInteger, rhs: Int64) {
        lhs = lhs + BigInteger(rhs)
    }
    
    static func +=(lhs: inout BigInteger, rhs: UInt) {
        lhs = lhs + BigInteger(rhs)
    }
    
    static func +=(lhs: inout BigInteger, rhs: UInt64) {
        lhs = lhs + BigInteger(rhs)
    }
    
    static internal func add(_ lhs: ContiguousArray<Int8>, _ rhs: ContiguousArray<Int8>) -> ContiguousArray<Int8> {
        if lhs == [] {
            return rhs
        }
        
        if rhs == [] {
            return lhs
        }
        
        var biggest, smallest : ContiguousArray<Int8>
        
        if lhs.count > rhs.count {
            biggest = lhs
            smallest = rhs
        } else {
            biggest = rhs
            smallest = lhs
        }
        
        for i in 0...(smallest.count - 1) {
            let value = biggest[i] + smallest[i]
            biggest[i] =  value % 10
            
            if value / 10 > 0 {
                if biggest.count > i + 1 {
                    biggest[i + 1] += 1
                } else {
                    biggest.append(1)
                }
            }
        }
        
        for i in 0...(biggest.count - 1) {
            if biggest[i] > 9 {
                biggest[i] = biggest[i] % 10
                if biggest.count > i + 1 {
                    biggest[i + 1] += 1
                } else {
                    biggest.append(1)
                }
            }
        }
        
        return biggest
    }
}
