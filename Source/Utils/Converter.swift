//
//  Converter.swift
//  BigInteger
//
//  Created by Vladimir Abramichev on 13/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import Foundation

internal let numberRegex = "^(-?)[1-9][0-9]*$"

/** Converts integer value into array of Int8
 - Parameter value: Always positive integer value (UInt, UInt64 e.t.c)
 - Returns: An array of Int8
 */
internal func splitOnDigitsAndReverse(_ value: UInt) -> ContiguousArray<Int8> {
    return split(UInt64(value))
}

internal func splitOnDigitsAndReverse(_ value: UInt64) -> ContiguousArray<Int8> {
    return split(value)
}


/** Converts integer value into array of Int8
 - Parameter value: Any integer value (Int, Int64 e.t.c)
 - Returns: An array of Int8
 */
internal func splitOnDigitsAndReverse(_ value: Int) -> ContiguousArray<Int8> {
    return split(UInt64(abs(value)))
}


internal func splitOnDigitsAndReverse(_ value: Int64) -> ContiguousArray<Int8> {
    return split(UInt64(abs(value)))
}

/** Converts string that contains only Numeric chars into array of Int8
 - Parameter text: Only numeric string
 - Returns: An array of Int8
 */
internal func convertFrom(_ text: String) -> ContiguousArray<Int8> {
    var result = ContiguousArray<Int8>()
    for c in text.unicodeScalars {
        result.append(Int8(c.value - 48))
    }
    return result
}

private func split(_ value: UInt64) -> ContiguousArray<Int8> {
    if value  < 10 {
        return [Int8(value)]
    }
    
    var result = ContiguousArray<Int8>()
    var temp = value
    
    while temp > 0 {
        let a = temp % 10
        let digit = Int8(a)
        
        result.append(digit)
        temp = temp / 10
    }
    
    return result
}
