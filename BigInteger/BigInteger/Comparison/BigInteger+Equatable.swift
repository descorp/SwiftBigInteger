//
//  BigInteger+Equtable.swift
//  BigInteger
//
//  Created by Vladimir Abramichev on 12/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import Foundation

// MARK: Equatable

extension BigInteger: Equatable {
    
    /// Returns a Boolean value indicating whether two values are equal.
    ///
    /// Equality is the inverse of inequality. For any values `a` and `b`,
    /// `a == b` implies that `a != b` is `false`.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    static func ==(lhs: BigInteger, rhs: BigInteger) -> Bool {
        if lhs.sign != rhs.sign {
            return false
        }
        
        if lhs.array.count != rhs.array.count {
            return false
        }
        
        return lhs.array.elementsEqual(rhs.array)
    }
}
