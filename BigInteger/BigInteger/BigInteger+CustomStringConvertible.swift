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
    /// Instead of accessing this property directly, convert an instance of any
    /// type to a string by using the `String(describing:)` initializer. For
    /// example:
    var description: String {
        var str = ""
        array.reversed().forEach { i in str += String(i) }
        return str
    }
}
