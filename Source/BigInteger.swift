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
    
    typealias Container = ContiguousArray<Int8>
    
    // MARK: Private fields
    
    internal var array: Container
    
    // MARK: Public static values
    
    /// Shortcut for BigInteger with zero value
    static let zero: BigInteger = BigInteger.init(raw: [0], sign: true)
    
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
    internal(set) var sign: Bool
    
    // MARK: Public constructors
    
    /// Constructor
    ///
    /// Converts unsigned integer into Big integer.
    /// - Parameter value: UInt
    init<T: UnsignedInteger>(_ value: T) {
        sign = true
        array = Container(value.asNumericArray())
    }
    
    /// Constructor
    ///
    /// Converts signed simple integer into Big Integer.
    /// - Parameter value: value of Int
    init<T: SignedInteger>(_ value: T) {
        sign = value >= 0
        array = Container(value.asNumericArray())
    }
    
    /// Optional constructor
    ///
    /// Converts string into Big integer.
    /// Should only contain numbers and '-' sign in left side to indicate a nagative value.
    /// Any other non-numeric charecter will be ignored.
    /// - Parameter value: string containing big integer.
    ///
    init?(_ value: String) {
        
        let temp = value.removeNoneNumericCharecters()
        guard !temp.isEmpty else { return nil }
        let numericArray = temp.asNumericArray()!
        
        sign = !value.hasPrefix("-")
        array = Container(numericArray.reversed()).trimZeros()
    }
    
    // MARK: Private constructors
    
    internal init(raw array: Container, sign: Bool) {
        self.array = array.trimZeros()
        self.sign = sign
    }
}

