//
//  BigInteger.swift
//  BigInteger
//
//  Created by Vladimir Abramichev on 12/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import Foundation

/// Implementation of Big integer value.
struct BigInteger {
    
    // MARK: Private fields
    
    internal var array: ContiguousArray<Int8>
    
    // MARK: Public static values
    
    /// Shortcut for BigInteger with zero value
    static let zero: BigInteger = BigInteger()
    
    /// Return true if current BigInteger is zero
    var isZero: Bool {
        return self.array.count == 1 && array[0] == 0
    }
    
    /// A quiet NaN ("not a number").
    ///
    /// A NaN compares not equal, not greater than, and not less than every
    /// value, including itself. Passing a NaN to an operation generally results
    /// in NaN.
    ///
    ///     // x > BigInteger.nan == false
    ///     // x < BigInteger.nan == false
    ///     // x == BigInteger.nan == false
    ///
    /// Because a NaN always compares not equal to itself, to test whether a
    /// floating-point value is NaN, use its `isNaN` property instead of the
    /// equal-to operator (`==`). In the following example, `y` is NaN.
    ///
    ///     let y = x + BigInteger.nan
    ///     print(y == BigInteger.nan)
    ///     // Prints "false"
    ///     print(y.isNaN)
    ///     // Prints "true"
    static let nan: BigInteger = BigInteger(raw: [], sign: true)
    
    /// Return true if current BigInteger is NaN
    var isNaN: Bool {
        return self.array == []
    }
    
    /// Positive infinity.
    ///
    /// Infinity compares greater than all finite numbers and equal to other
    /// infinite values.
    ///
    ///     BigInteger.infinity  >  BigInteger.infinity // false
    ///     BigInteger.infinity  <  BigInteger.infinity // false
    ///     BigInteger.infinity ==  BigInteger.infinity // true
    static let infinit: BigInteger = BigInteger(raw: [99], sign: true)
    
    /// Returns true if current BigInteger is Infinite
    var isInfinit: Bool {
        return self.array != [] && self.array[0] > 9
    }
    
    // MARK: Public fields
    
    /// Indicate if value is positive or negative
    var sign: Bool
    
    // MARK: Public constructors
    
    /// Constructor for Big Integer - creating 'zero' Big integer.
    internal init() {
        sign = true
        array = [0]
    }
    
    /// Constructor for Big Integer - converts unsigned integer into Big integer.
    /// - Parameter value: UInt
    init(value: UInt) {
        sign = true
        array = splitOnDigitsAndReverse(value)
    }
    
    /// Constructor for Big Integer - converts unsigned integer into Big integer.
    /// - Parameter value: value UInt64
    init(value: UInt64) {
        sign = true
        array = splitOnDigitsAndReverse(value)
    }
    
    /// Constructor for Big Integer - converts signed integer into Big integer.
    /// - Parameter value: value of Int
    init(value: Int) {
        sign = value >= 0
        array = splitOnDigitsAndReverse(value)
    }
    
    /// Constructor for Big Integer - converts signed integer into Big integer.
    /// - Parameter value: value of Int64
    init(value: Int64) {
        sign = value >= 0
        array = splitOnDigitsAndReverse(value)
    }
    
    /// Optional constructor for Big Integer - converts string into Big integer.
    /// - Parameter value: string containing big integer. May only contain numbers and '-' sign in left side to indicate a nagative value
    init?(value: String) {
        guard value.isValidNumber else { return nil }
        var temp = value
        if value.hasPrefix("-") {
            sign = false
            temp.removeFirst(1)
        } else {
            sign = true
        }
        
        array = ContiguousArray<Int8>(convertFrom(temp).reversed())
    }
    
    // MARK: Private constructors
    
    internal init(raw array: ContiguousArray<Int8>, sign: Bool) {
        self.array = array.trimZeros()
        self.sign = sign
    }
}

