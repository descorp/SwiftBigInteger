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
    static func !=<T : SignedInteger>(lhs: T, rhs: BigInteger) -> Bool {
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
    static func !=<T : SignedInteger>(lhs: BigInteger, rhs: T) -> Bool {
        let temp = BigInteger(value: rhs)
        return temp != lhs
    }
    
    /// Returns a Boolean value indicating whether two values are not equal.
    ///
    /// Equality is the inverse of inequality. For any values `a` and `b`,
    /// `a == b` implies that `a != b` is `false`.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    static func !=<T : UnsignedInteger>(lhs: T, rhs: BigInteger) -> Bool {
        let temp = BigInteger(value: lhs)
        if !rhs.sign {
            return true
        }
        
        return temp != lhs
    }
    
    /// Returns a Boolean value indicating whether two values are not equal.
    ///
    /// Equality is the inverse of inequality. For any values `a` and `b`,
    /// `a == b` implies that `a != b` is `false`.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    static func !=<T : UnsignedInteger>(lhs: BigInteger, rhs: T) -> Bool {
        let temp = BigInteger(value: rhs)
        if !lhs.sign {
            return true
        }
        
        return temp != lhs
    }
}
