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
    static func *(lhs: BigInteger, rhs: BigInteger) -> BigInteger {
        let zero = BigInteger()
        if lhs == zero || rhs == zero {
            return zero
        }
        
        let value = BigInteger.multiply(lhs.array, rhs.array)
        return BigInteger(raw: value, sign: lhs.sign == rhs.sign)
    }
    
    static func *(lhs: BigInteger, rhs: Int) -> BigInteger {
        return lhs * BigInteger(value: rhs)
    }
    
    static func *(lhs: Int, rhs: BigInteger) -> BigInteger {
        return rhs * BigInteger(value: lhs)
    }
    
    static func *=(lhs: inout BigInteger, rhs: BigInteger) {
        lhs = lhs * rhs
    }
    
    static func *=(lhs: inout BigInteger, rhs: Int) {
        lhs = lhs * BigInteger(value: rhs)
    }
    
    static internal func multiply(_ lhs: [Int8], _ rhs: [Int8]) -> [Int8] {
        var layers: [[Int8]] = []
        
        for i in lhs.reversed() {
            
            var n = 0
            for _ in layers {
                layers[n].insert(0, at: 0)
                n += 1
            }
            
            var t = [Int8]()
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
                        t[j+1] = additionValue % 10
                        if additionValue > 9 {
                            t.append(1)
                        }
                    }
                }
            }
            layers.append(t)
        }
        
        return layers.reduce([Int8]()) { (current, next) in BigInteger.add(current, next) }
    }
}
