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
    var sign: Bool
    
    init() {
        sign = true
        array = [0]
    }
    
    init<T: UnsignedInteger>(value: T) {
        sign = true
        array = splitOnDigits(value).reversed()
    }
    
    init<T: SignedInteger>(value: T) {
        sign = value >= 0
        array = splitOnDigits(value).reversed()
    }
    
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
}

