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

        switch (lhs, rhs) {
        case let (lhs,rhs) where lhs.isNaN || rhs.isNaN:
            return BigInteger.nan
        case let (lhs,rhs) where lhs.isInfinit && rhs.isInfinit && rhs.sign == lhs.sign:
            return BigInteger.nan
        case let (lhs,rhs) where lhs.isInfinit && rhs.isInfinit && rhs.sign != lhs.sign:
            return lhs.sign ? BigInteger.infinit : -BigInteger.infinit
        case  let (lhs,_) where lhs.isInfinit:
            return lhs
        case  let (_,rhs) where rhs.isInfinit:
            return -rhs
        case let (lhs, rhs) where lhs.sign != rhs.sign:
            return lhs + -rhs
        default:
            break
        }

        let value = BigInteger.subtract(lhs.array, rhs.array)
        if value == [0] {
            return BigInteger.zero
        }

        let comparisom = Container.compare(lhs.array, rhs.array)
        return BigInteger(raw: value, sign: comparisom > 0 ? lhs.sign : !lhs.sign)
    }
    
    static func -(lhs: BigInteger, rhs: Int) -> BigInteger {
        return lhs - BigInteger(rhs)
    }
    
    static func -(lhs: BigInteger, rhs: Int64) -> BigInteger {
        return lhs - BigInteger(rhs)
    }
    
    static func -(lhs: BigInteger, rhs: UInt) -> BigInteger {
        return lhs - BigInteger(rhs)
    }
    
    static func -(lhs: BigInteger, rhs: UInt64) -> BigInteger {
        return lhs - BigInteger(rhs)
    }
    
    static func -(lhs: Int, rhs: BigInteger) -> BigInteger {
        return BigInteger(lhs) - rhs
    }
    
    static func -(lhs: Int64, rhs: BigInteger) -> BigInteger {
        return BigInteger(lhs) - rhs
    }
    
    static func -(lhs: UInt, rhs: BigInteger) -> BigInteger {
        return BigInteger(lhs) - rhs
    }
    
    static func -(lhs: UInt64, rhs: BigInteger) -> BigInteger {
        return BigInteger(lhs) - rhs
    }
    
    static func -=(lhs: inout BigInteger, rhs: BigInteger) {
        lhs = lhs - rhs
    }
    
    static func -=(lhs: inout BigInteger, rhs: Int) {
        lhs = lhs - BigInteger(rhs)
    }
    
    static func -=(lhs: inout BigInteger, rhs: Int64) {
        lhs = lhs - BigInteger(rhs)
    }
    
    static func -=(lhs: inout BigInteger, rhs: UInt) {
        lhs = lhs - BigInteger(rhs)
    }
    
    static func -=(lhs: inout BigInteger, rhs: UInt64) {
        lhs = lhs - BigInteger(rhs)
    }
    
    static internal func subtract(_ lhs: ContiguousArray<Int8>, _ rhs: ContiguousArray<Int8>) -> ContiguousArray<Int8> {
        var biggest, smallest : ContiguousArray<Int8>
        
        let compare = Container.compare(lhs, rhs)
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
                biggest[i] = Int8(10 + value)
            } else {
                biggest[i] = Int8(value)
            }
            
            i += 1
        }
        
        return biggest
    }
}
