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
    
    internal var array: [Int8]
    var sign: Bool
    
    /// Constructor for Big Integer - creating 'zero' Big integer.
    init() {
        sign = true
        array = [0]
    }
    
    /// Constructor for Big Integer - converts unsigned integer into Big integer.
    /// - Parameter value: value of UInt, UInt32, UInt64, UInt16, UInt8
    init<T: UnsignedInteger>(value: T) {
        sign = true
        array = splitOnDigitsAndReverse(value)
    }
    
    /// Constructor for Big Integer - converts signed integer into Big integer.
    /// - Parameter value: value of Int, Int32, Int64, Int16, Int8
    init<T: SignedInteger>(value: T) {
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
        
        array = convertFrom(temp).reversed()
    }
    
    internal init(raw array: [Int8], sign: Bool) {
        self.array = array.trimZeros()
        self.sign = sign
    }
}

