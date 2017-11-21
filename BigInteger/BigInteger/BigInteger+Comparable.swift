//
//  BigInteger+Comparable.swift
//  BigInteger
//
//  Created by Vladimir Abramichev on 12/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import Foundation

// MARK: Comparable

extension BigInteger: Comparable {
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
    static func <(lhs: BigInteger, rhs: BigInteger) -> Bool {
        return BigInteger.compare(lhs, rhs) < 0
    }
    
    /// Returns a Boolean value indicating whether the value of the first
    /// argument is less than or equal to that of the second argument.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    static func <=(lhs: BigInteger, rhs: BigInteger) -> Bool {
        return BigInteger.compare(lhs, rhs) <= 0
    }
    
    /// Returns a Boolean value indicating whether the value of the first
    /// argument is greater than or equal to that of the second argument.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    static func >=(lhs: BigInteger, rhs: BigInteger) -> Bool {
        return BigInteger.compare(lhs, rhs) >= 0
    }
    
    /// Returns a Boolean value indicating whether the value of the first
    /// argument is greater than that of the second argument.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    static func >(lhs: BigInteger, rhs: BigInteger) -> Bool {
        return BigInteger.compare(lhs, rhs) > 0
    }
    
    static private func compare(_ lhs: BigInteger, _ rhs: BigInteger) -> Int {
        switch (lhs.sign, rhs.sign) {
        case let (a, b) where a == b && !a :
            return BigInteger.compare(-rhs, -lhs)
        case let (a, b) where a != b:
            return a ? 1 : -1
        default:
            break
        }
        
        let comparison = Array.compare(lhs: lhs.array, rhs: rhs.array)
        return lhs.sign ? comparison : -comparison
    }
}
