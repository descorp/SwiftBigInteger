//
//  ArrayExtensions.swift
//  BigInteger
//
//  Created by Vladimir Abramichev on 21/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import Foundation

extension Array where Element: Comparable {
    
    static func compare(lhs: Array, rhs: Array) -> Int {
        if lhs.count != rhs.count {
            return lhs.count > rhs.count ? 1 : -1
        }
        
        for i in stride(from: lhs.count-1, to: 0, by: -1) {
            let lhsv = lhs[i]
            let rhsv = rhs[i]
            if lhsv != rhsv {
                return lhsv < rhsv ? -1 : 1
            }
        }
        
        return 0
    }
    
}
