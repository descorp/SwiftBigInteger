//
//  BigInteger+Reminder.swift
//  BigInteger
//
//  Created by Vladimir Abramichev on 19/12/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import Foundation

extension BigInteger {
    
    /// Returns a BigInteger value containing a remainder of division
    /// of left argument by right argument.
    ///
    /// - Parameters:
    ///   - lhs: A value to devide.
    ///   - rhs: Another value to devide.
    /// - Return:
    ///     Value of reminder
    ///
    static func %(lhs: BigInteger, rhs: BigInteger) -> BigInteger {
        if lhs.isNaN || rhs.isNaN {
            return BigInteger.nan
        }
        
        switch (lhs, rhs) {
        case let (a,b) where a.isZero && b.isZero:
            return BigInteger.nan
        case let (a,b) where a.isInfinit && b.isInfinit:
            return BigInteger.nan
            
        case let (a,b) where a.isZero && b.isInfinit:
            return a.sign == b.sign ? BigInteger.zero : -BigInteger.zero
        case let (a,b) where a.isInfinit && b.isZero:
            return a.sign == b.sign ? BigInteger.infinit : -BigInteger.infinit
            
        case let (a,_) where a.isZero:
            return BigInteger.zero
        case let (a,b) where b.isZero:
            return a.sign == b.sign ? BigInteger.infinit : -BigInteger.infinit
            
        case let (a,b) where a.isInfinit:
            return a.sign == b.sign ? BigInteger.infinit : -BigInteger.infinit
        case let (_,b) where b.isInfinit:
            return BigInteger.zero
            
        case let (a,b) where BigInteger.abs(a) < BigInteger.abs(b):
            return a
        case let (a,b) where BigInteger.abs(a) == BigInteger.abs(b):
            return BigInteger.zero
        default:
            break
        }
        
        let result = BigInteger.leftover(lhs.array, rhs.array)
        return BigInteger(raw: result, sign: lhs.sign)
    }
    
    static func %(lhs: BigInteger, rhs: Int) -> BigInteger {
        return lhs % BigInteger(rhs)
    }
    
    static func %(lhs: BigInteger, rhs: Int64) -> BigInteger {
        return lhs % BigInteger(rhs)
    }
    
    static func %(lhs: BigInteger, rhs: UInt) -> BigInteger {
        return lhs % BigInteger(rhs)
    }
    
    static func %(lhs: BigInteger, rhs: UInt64) -> BigInteger {
        return lhs % BigInteger(rhs)
    }
    
    static func %(lhs: Int, rhs: BigInteger) -> BigInteger {
        return BigInteger(lhs)  % rhs
    }
    
    static func %(lhs: Int64, rhs: BigInteger) -> BigInteger {
        return BigInteger(lhs)  % rhs
    }
    
    static func %(lhs: UInt, rhs: BigInteger) -> BigInteger {
        return BigInteger(lhs) % rhs
    }
    
    static func %(lhs: UInt64, rhs: BigInteger) -> BigInteger {
        return BigInteger(lhs) % rhs
    }
    
    static func %=(lhs: inout BigInteger, rhs: BigInteger) {
        lhs = lhs % rhs
    }
    
    static func %=(lhs: inout BigInteger, rhs: Int) {
        lhs = lhs % BigInteger(rhs)
    }
    
    static func %=(lhs: inout BigInteger, rhs: Int64) {
        lhs = lhs % BigInteger(rhs)
    }
    
    static func %=(lhs: inout BigInteger, rhs: UInt) {
        lhs = lhs % BigInteger(rhs)
    }
    
    static func %=(lhs: inout BigInteger, rhs: UInt64) {
        lhs = lhs % BigInteger(rhs)
    }
    
    static internal func leftover(_ lhs: Container, _ rhs: Container) -> Container {
        var result: Container = []
        var temp: Container = []
        
        for i in (0...(lhs.count - 1)).reversed() {
            temp.insert(lhs[i], at: 0)
            var compare = Container.compare(temp, rhs)
            if compare < 0 {
                continue
            }
            
            var divider: Int8 = 1
            var division: Container = [0]
            var nextDivision = rhs
            
            while compare >= 0 {
                divider += 1
                division = nextDivision
                nextDivision = BigInteger.add(division, rhs)
                compare = Container.compare(temp, nextDivision)
            }
            
            result = BigInteger.subtract(temp, division).trimZeros()
        }
        
        return result
    }
}
