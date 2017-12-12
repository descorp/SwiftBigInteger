//
//  BigInteger+EquatableInt.swift
//  BigInteger
//
//  Created by Vladimir Abramichev on 28/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import Foundation

extension BigInteger {
    
    /// Returns a Boolean value indicating whether two values are not equal.
    ///
    /// Equality is the inverse of inequality. For any values `a` and `b`,
    /// `a == b` implies that `a != b` is `false`.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    static func !=(lhs: Int, rhs: BigInteger) -> Bool {
        let temp = BigInteger(value: lhs)
        return temp != rhs
    }
    
    static func !=(lhs: Int64, rhs: BigInteger) -> Bool {
        let temp = BigInteger(value: lhs)
        return temp != rhs
    }
    
    static func !=(lhs: UInt, rhs: BigInteger) -> Bool {
        let temp = BigInteger(value: lhs)
        return temp != rhs
    }
    
    static func !=(lhs: UInt64, rhs: BigInteger) -> Bool {
        let temp = BigInteger(value: lhs)
        return temp != rhs
    }
    
    /// Returns a Boolean value indicating whether two values are not equal.
    ///
    /// Equality is the inverse of inequality. For any values `a` and `b`,
    /// `a == b` implies that `a != b` is `false`.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    static func !=(lhs: BigInteger, rhs: Int) -> Bool {
        let temp = BigInteger(value: rhs)
        return temp != lhs
    }
    
    static func !=(lhs: BigInteger, rhs: Int64) -> Bool {
        let temp = BigInteger(value: rhs)
        return temp != lhs
    }
    
    static func !=(lhs: BigInteger, rhs: UInt) -> Bool {
        let temp = BigInteger(value: rhs)
        return temp != lhs
    }
    
    static func !=(lhs: BigInteger, rhs: UInt64) -> Bool {
        let temp = BigInteger(value: rhs)
        return temp != lhs
    }
}
