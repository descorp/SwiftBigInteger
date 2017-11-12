//
//  BigInteger.swift
//  BigInteger
//
//  Created by Vladimir Abramichev on 12/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import Foundation

struct BigInteger {
    
    internal var array: [Int8]
    var positive: Bool 
    
    init(value: Int = 0) {
        positive = value >= 0
        array = BigInteger.splitOnDigits(UInt64(abs(value)))
    }
    
    init(value: Int64) {
        positive = value >= 0
        array = BigInteger.splitOnDigits(UInt64(abs(value)))
    }
    
    init(value: UInt64) {
        positive = value >= 0
        array = BigInteger.splitOnDigits(value)
    }
    
    private static func splitOnDigits(_ value: UInt64) -> [Int8] {
        var result = [Int8]()
        var temp = value
        
        while temp > 0 {
            result.append(Int8(temp % 10))
            temp = temp / 10
        }
        
        return result
    }
}

