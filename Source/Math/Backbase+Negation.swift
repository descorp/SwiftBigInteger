//
//  Backbase+Negation.swift
//  BigInteger
//
//  Created by Vladimir Abramichev on 13/12/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import Foundation

extension BigInteger {
    
    // MARK: negation
    static prefix func -(item: BigInteger) -> BigInteger {
        var result = item
        result.sign = !result.sign
        return result
    }
}
