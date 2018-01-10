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
    public static func ==(lhs: BigInteger, rhs: BigInteger) -> Bool {
        if lhs.isNaN || lhs.isNaN {
            return false
        }
        
        if lhs.isInfinit && rhs.isInfinit && lhs.sign == rhs.sign {
            return true
        }
        
        if lhs.isInfinit && rhs.isInfinit {
            return false
        }
        
        if lhs.sign != rhs.sign {
            return false
        }
        
        if lhs.array.count != rhs.array.count {
            return false
        }
        
        return lhs.array.elementsEqual(rhs.array)
    }
    
    /// Returns a Boolean value indicating whether two values are not equal.
    ///
    /// Inequality is the inverse of equality. For any values `a` and `b`, `a != b`
    /// implies that `a == b` is `false`.
    ///
    /// This is the default implementation of the not-equal-to operator (`!=`)
    /// for any type that conforms to `Equatable`.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    public static func !=(lhs: BigInteger, rhs: BigInteger) -> Bool {
        if lhs.isNaN && rhs.isNaN {
            return true
        }
        
        if lhs.isNaN || rhs.isNaN {
            return false
        }
        
        return !(lhs == rhs)
    }
}
