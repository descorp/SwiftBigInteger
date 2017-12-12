//
//  BigInteger+Copy.swift
//  BigInteger
//
//  Created by Vladimir Abramichev on 12/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import Foundation

extension BigInteger {
    internal func copy() -> BigInteger {
        var result = BigInteger()
        result.array = self.array
        result.sign = self.sign
        return result
    }
}
