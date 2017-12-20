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
    
    // MARK: Comparing < with Integers
    
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
    static func <(lhs: BigInteger, rhs: Int) -> Bool {
        let temp = BigInteger(rhs)
        return lhs < temp
    }
    
    static func <(lhs: BigInteger, rhs: Int64) -> Bool {
        let temp = BigInteger(rhs)
        return lhs < temp
    }
    
    static func <(lhs: BigInteger, rhs: UInt) -> Bool {
        let temp = BigInteger(rhs)
        return lhs < temp
    }
    
    static func <(lhs: BigInteger, rhs: UInt64) -> Bool {
        let temp = BigInteger(rhs)
        return lhs < temp
    }
    
    // MARK: Comparing <= with Integers
    
    /// Returns a Boolean value indicating whether the value of the first
    /// argument is less than or equal to that of the second argument.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    static func <=(lhs: BigInteger, rhs: Int) -> Bool {
        let temp = BigInteger(rhs)
        return lhs <= temp
    }
    
    static func <=(lhs: BigInteger, rhs: Int64) -> Bool {
        let temp = BigInteger(rhs)
        return lhs <= temp
    }
    
    static func <=(lhs: BigInteger, rhs: UInt) -> Bool {
        let temp = BigInteger(rhs)
        return lhs <= temp
    }
    
    static func <=(lhs: BigInteger, rhs: UInt64) -> Bool {
        let temp = BigInteger(rhs)
        return lhs <= temp
    }
    
    // MARK: Comparing >= with Integers
    
    /// Returns a Boolean value indicating whether the value of the first
    /// argument is greater than or equal to that of the second argument.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    static func >=(lhs: BigInteger, rhs: Int) -> Bool {
        let temp = BigInteger(rhs)
        return lhs >= temp
    }
    
    static func >=(lhs: BigInteger, rhs: Int64) -> Bool {
        let temp = BigInteger(rhs)
        return lhs >= temp
    }
    
    static func >=(lhs: BigInteger, rhs: UInt) -> Bool {
        let temp = BigInteger(rhs)
        return lhs >= temp
    }
    
    static func >=(lhs: BigInteger, rhs: UInt64) -> Bool {
        let temp = BigInteger(rhs)
        return lhs >= temp
    }
    
    // MARK: Comparing > with Integers
    
    /// Returns a Boolean value indicating whether the value of the first
    /// argument is greater than that of the second argument.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    static func >(lhs: BigInteger, rhs: Int) -> Bool {
        let temp = BigInteger(rhs)
        return lhs > temp
    }
    
    static func >(lhs: BigInteger, rhs: Int64) -> Bool {
        let temp = BigInteger(rhs)
        return lhs > temp
    }
    
    static func >(lhs: BigInteger, rhs: UInt) -> Bool {
        let temp = BigInteger(rhs)
        return lhs > temp
    }
    
    static func >(lhs: BigInteger, rhs: UInt64) -> Bool {
        let temp = BigInteger(rhs)
        return lhs > temp
    }
    
    // MARK: Comparing < with Integers
    
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
    static func <(lhs: Int, rhs: BigInteger) -> Bool {
        let temp = BigInteger(lhs)
        return temp < rhs
    }
    
    static func <(lhs: Int64, rhs: BigInteger) -> Bool {
        let temp = BigInteger(lhs)
        return temp < rhs
    }
    
    static func <(lhs: UInt, rhs: BigInteger) -> Bool {
        let temp = BigInteger(lhs)
        return temp < rhs
    }
    
    static func <(lhs: UInt64, rhs: BigInteger) -> Bool {
        let temp = BigInteger(lhs)
        return temp < rhs
    }
    
    // MARK: Comparing <= with Integers
    
    /// Returns a Boolean value indicating whether the value of the first
    /// argument is less than or equal to that of the second argument.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    static func <=(lhs: Int, rhs: BigInteger) -> Bool {
        let temp = BigInteger(lhs)
        return temp <= rhs
    }
    
    static func <=(lhs: Int64, rhs: BigInteger) -> Bool {
        let temp = BigInteger(lhs)
        return temp <= rhs
    }
    
    static func <=(lhs: UInt, rhs: BigInteger) -> Bool {
        let temp = BigInteger(lhs)
        return temp <= rhs
    }
    
    static func <=(lhs: UInt64, rhs: BigInteger) -> Bool {
        let temp = BigInteger(lhs)
        return temp <= rhs
    }
    
    // MARK: Comparing >= with Integers
    
    /// Returns a Boolean value indicating whether the value of the first
    /// argument is greater than or equal to that of the second argument.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    static func >=(lhs: Int, rhs: BigInteger) -> Bool {
        let temp = BigInteger(lhs)
        return temp >= rhs
    }
    
    static func >=(lhs: Int64, rhs: BigInteger) -> Bool {
        let temp = BigInteger(lhs)
        return temp >= rhs
    }
    
    static func >=(lhs: UInt, rhs: BigInteger) -> Bool {
        let temp = BigInteger(lhs)
        return temp >= rhs
    }
    
    static func >=(lhs: UInt64, rhs: BigInteger) -> Bool {
        let temp = BigInteger(lhs)
        return temp >= rhs
    }
    
    // MARK: Comparing > with Integers
    
    /// Returns a Boolean value indicating whether the value of the first
    /// argument is greater than that of the second argument.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    static func >(lhs: Int, rhs: BigInteger) -> Bool {
        let temp = BigInteger(lhs)
        return temp > rhs
    }
    
    static func >(lhs: Int64, rhs: BigInteger) -> Bool {
        let temp = BigInteger(lhs)
        return temp > rhs
    }
    
    static func >(lhs: UInt, rhs: BigInteger) -> Bool {
        let temp = BigInteger(lhs)
        return temp > rhs
    }
    
    static func >(lhs: UInt64, rhs: BigInteger) -> Bool {
        let temp = BigInteger(lhs)
        return temp > rhs
    }
}


