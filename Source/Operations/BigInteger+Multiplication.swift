//
//  BigInteger+Multiplication.swift
//  BigInteger
//
//  Created by Vladimir Abramichev on 21/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import Foundation

extension BigInteger {
    
    // MARK: multiplication
    public static func *(lhs: BigInteger, rhs: BigInteger) -> BigInteger {
        if lhs.isNaN || rhs.isNaN {
            return BigInteger.nan
        }
        
        if lhs.isInfinit && rhs.isInfinit  {
            return rhs.sign == lhs.sign ? BigInteger.infinit : -BigInteger.infinit
        }
        
        if lhs.isInfinit {
            return lhs
        }
        
        if rhs.isInfinit {
            return rhs
        }
        
        if lhs.isZero || rhs.isZero {
            return zero
        }
        
        let value = BigInteger.multiply(lhs.array, rhs.array)
        return BigInteger(raw: value, sign: lhs.sign == rhs.sign)
    }
    
    public static func *(lhs: BigInteger, rhs: Int) -> BigInteger {
        return lhs * BigInteger(rhs)
    }
    
    public static func *(lhs: BigInteger, rhs: Int64) -> BigInteger {
        return lhs * BigInteger(rhs)
    }
    
    public static func *(lhs: BigInteger, rhs: UInt) -> BigInteger {
        return lhs * BigInteger(rhs)
    }
    
    public static func *(lhs: BigInteger, rhs: UInt64) -> BigInteger {
        return lhs * BigInteger(rhs)
    }
    
    public static func *(lhs: Int, rhs: BigInteger) -> BigInteger {
        return rhs * BigInteger(lhs)
    }
    
    public static func *(lhs: Int64, rhs: BigInteger) -> BigInteger {
        return rhs * BigInteger(lhs)
    }
    
    public static func *(lhs: UInt, rhs: BigInteger) -> BigInteger {
        return rhs * BigInteger(lhs)
    }
    
    public static func *(lhs: UInt64, rhs: BigInteger) -> BigInteger {
        return rhs * BigInteger(lhs)
    }
    
    public static func *=(lhs: inout BigInteger, rhs: BigInteger) {
        lhs = lhs * rhs
    }
    
    public static func *=(lhs: inout BigInteger, rhs: Int) {
        lhs = lhs * BigInteger(rhs)
    }
    
    public static func *=(lhs: inout BigInteger, rhs: Int64) {
        lhs = lhs * BigInteger(rhs)
    }
    
    public static func *=(lhs: inout BigInteger, rhs: UInt) {
        lhs = lhs * BigInteger(rhs)
    }
    
    public static func *=(lhs: inout BigInteger, rhs: UInt64) {
        lhs = lhs * BigInteger(rhs)
    }
    
    static internal func multiply(_ lhs: ContiguousArray<Int8>, _ rhs: ContiguousArray<Int8>) -> ContiguousArray<Int8> {
        var layers: [ContiguousArray<Int8>] = []
        
        for i in lhs.reversed() {
            
            var n = 0
            for _ in layers {
                layers[n].insert(0, at: 0)
                n += 1
            }
            
            var t = ContiguousArray<Int8>()
            for j in 0...(rhs.count-1) {
                let value = i * rhs[j]
                if t.count == j {
                    t.append(value % 10)
                } else {
                    let additionValue = t[j] + value % 10
                    t[j] = additionValue % 10
                    if additionValue > 9 {
                        t.append(1)
                    }
                }
                
                if value > 9 {
                    if t.count == j + 1 {
                        t.append(value / 10)
                    } else {
                        let additionValue = t[j + 1] + value / 10
                        t[j+1] = additionValue
                    }
                }
            }
            layers.append(t)
        }
        
        return layers.reduce(ContiguousArray<Int8>()) { (current, next) in BigInteger.add(current, next) }
    }
}
