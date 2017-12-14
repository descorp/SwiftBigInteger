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
    
    internal var array: ContiguousArray<Int8>
    var sign: Bool
    
    /// Constructor for Big Integer - creating 'zero' Big integer.
    init() {
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
    
    internal init(raw array: ContiguousArray<Int8>, sign: Bool) {
        self.array = array.trimZeros()
        self.sign = sign
    }
}

