//
//  Converter.swift
//  BigInteger
//
//  Created by Vladimir Abramichev on 13/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import Foundation

extension UnsignedInteger {
    
    /** Converts integer value into array of Int8
     - Parameter value: Always positive integer value (UInt, UInt64 e.t.c)
     - Returns: An array of Int8
     */
    internal func asNumericArray() -> ContiguousArray<Int8> {
        return self.asArray()
    }
}

extension SignedInteger {
    
    /** Converts integer value into array of Int8
     - Parameter value: Always positive integer value (UInt, UInt64 e.t.c)
     - Returns: An array of Int8
     */
    internal func asNumericArray() -> ContiguousArray<Int8> {
        var temp = self
        if self < 0 {
            temp.negate()
        }
        
        return temp.asArray()
    }
}


extension BinaryInteger {
    
    /** Converts integer value into array of Int8
     - Parameter value: Always positive integer value (UInt, UInt64 e.t.c)
     - Returns: An array of Int8
     */
    internal func asArray() -> ContiguousArray<Int8> {
        if self.magnitude < 10 {
            return [Int8(self )]
        }
        
        var result = ContiguousArray<Int8>()
        var temp = self
        
        while temp > 0 {
            let digit = Int8(temp % 10)
            result.append(digit)
            temp = temp / 10
        }
        
        return result
    }
}
