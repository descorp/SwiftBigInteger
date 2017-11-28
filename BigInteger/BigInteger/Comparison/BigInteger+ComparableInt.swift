//
//  BigInteger+Comparable.swift
//  BigInteger
//
//  Created by Vladimir Abramichev on 12/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import Foundation

// MARK: Comparable

extension BigInteger {
    /// Returns a Boolean value indicating whether the value of the first
    /// argument is less than that of the second argument.
    ///
    /// This function is the only requirement of the `Comparable` protocol. The
    /// remainder of the relational operator functions are implemented by the
    /// standard library for any type that conforms to `Comparable`.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    static func <<T : SignedInteger>(lhs: BigInteger, rhs: T) -> Bool {
        let temp = BigInteger(value: rhs)
        return BigInteger.compare(lhs, temp) < 0
    }
    
    /// Returns a Boolean value indicating whether the value of the first
    /// argument is less than or equal to that of the second argument.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    static func <=<T : SignedInteger>(lhs: BigInteger, rhs: T) -> Bool {
        let temp = BigInteger(value: rhs)
        return BigInteger.compare(lhs, temp) <= 0
    }
    
    /// Returns a Boolean value indicating whether the value of the first
    /// argument is greater than or equal to that of the second argument.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    static func >=<T : SignedInteger>(lhs: BigInteger, rhs: T) -> Bool {
        let temp = BigInteger(value: rhs)
        return BigInteger.compare(lhs, temp) >= 0
    }
    
    /// Returns a Boolean value indicating whether the value of the first
    /// argument is greater than that of the second argument.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    static func ><T : SignedInteger>(lhs: BigInteger, rhs: T) -> Bool {
        let temp = BigInteger(value: rhs)
        return BigInteger.compare(lhs, temp) > 0
    }
    
    /// Returns a Boolean value indicating whether the value of the first
    /// argument is less than that of the second argument.
    ///
    /// This function is the only requirement of the `Comparable` protocol. The
    /// remainder of the relational operator functions are implemented by the
    /// standard library for any type that conforms to `Comparable`.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    static func <<T : SignedInteger>(lhs: T, rhs: BigInteger) -> Bool {
        let temp = BigInteger(value: lhs)
        return BigInteger.compare(temp, rhs) < 0
    }
    
    /// Returns a Boolean value indicating whether the value of the first
    /// argument is less than or equal to that of the second argument.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    static func <=<T : SignedInteger>(lhs: T, rhs: BigInteger) -> Bool {
        let temp = BigInteger(value: lhs)
        return BigInteger.compare(temp, rhs) <= 0
    }
    
    /// Returns a Boolean value indicating whether the value of the first
    /// argument is greater than or equal to that of the second argument.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    static func >=<T : SignedInteger>(lhs: T, rhs: BigInteger) -> Bool {
        let temp = BigInteger(value: lhs)
        return BigInteger.compare(temp, rhs) >= 0
    }
    
    /// Returns a Boolean value indicating whether the value of the first
    /// argument is greater than that of the second argument.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    static func ><T : SignedInteger>(lhs: T, rhs: BigInteger) -> Bool {
        let temp = BigInteger(value: lhs)
        return BigInteger.compare(temp, rhs) > 0
    }
}


