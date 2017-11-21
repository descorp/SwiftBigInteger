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
internal func splitOnDigits<T: UnsignedInteger>(_ value: T) -> [Int8] {
    var result = [Int8]()
    var temp = value
    
    while temp > 0 {
        result.append(Int8(temp % 10))
        temp = temp / 10
    }
    
    return result
}

/** Converts integer value into array of Int8
 - Parameter value: Any integer value (Int, Int64 e.t.c)
 - Returns: An array of Int8
 */
internal func splitOnDigitsAndReverse<T: SignedInteger>(_ value: T) -> [Int8] {
    return splitOnDigits(UInt64(abs(value)))
}

/** Converts string that contains only Numeric chars into array of Int8
 - Parameter text: Only numeric string
 - Returns: An array of Int8
 */
internal func convertFrom(_ text: String) -> [Int8] {
    var result = [Int8]()
    for c in text.unicodeScalars {
        result.append(Int8(c.value - 48))
    }
    return result
}
