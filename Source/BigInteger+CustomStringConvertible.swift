//
//  CustomStringConvertible.swift
//  BigInteger
//
//  Created by Vladimir Abramichev on 12/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import Foundation

extension BigInteger : CustomStringConvertible {
    
    /// A textual representation of this instance.
    ///
    public var description: String {
        if self.isInfinit {
            return (sign ? "" : "-" ) + "inf"
        }
        
        if self.isNaN {
            return "nan"
        }
        
        
        return (sign ? "" : "-" ) + array.reversed().toString()
    }
}
