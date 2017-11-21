//
//  ArrayExtensions.swift
//  BigInteger
//
//  Created by Vladimir Abramichev on 21/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import Foundation

extension Array where Element: Comparable {
    
    /// Compare two arrays by lenght
    internal static func compare(lhs: Array, rhs: Array) -> Int {
        if lhs.count != rhs.count {
            return lhs.count > rhs.count ? 1 : -1
        }
        
        var i = 0
        while i < lhs.count {
            let lhsv = lhs[i]
            let rhsv = rhs[i]
            if lhsv != rhsv {
                return lhsv < rhsv ? -1 : 1
            }
            i += 1
        }
        
        return 0
    }
}

extension Array where Element: BinaryInteger {
    
    internal func trimZeros() -> Array {
        var temp = self
        while temp[0] == 0 && temp.count > 1 {
            temp.remove(at: 0)
        }
        
        return temp
    }
}

extension Array where Element: BinaryInteger {
    
    /// Agregates all elements of Integer-based array into one string
    /// - Parameter prefix: string sequence that will be placed before actual content of the array
    /// - Returns: A string that agregates whole array into one string
    internal func toString(prefix: String = "") -> String {
        return self.reduce(prefix) { (current, next) in current + String(describing: next)}
    }
}
