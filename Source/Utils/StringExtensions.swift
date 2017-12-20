//
//  StringExtensions.swift
//  BigInteger
//
//  Created by Vladimir Abramichev on 21/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import Foundation

internal let integerRegex = "^(-?)[1-9][0-9]*$"
internal let numberRegex = "^[0-9]*$"
internal let nonNumericCharacterRegex = "[^0-9]"

extension String {
    
    /// Check is string contains only digits or sign chars, and do not starts with 0
    ///
    /// - Returns: Is string is valid Integer string
    ///
    internal var isValidInteger: Bool {
        return self.range(of: integerRegex, options: .regularExpression, range: nil, locale: nil) != nil
    }
    
    /// Check is string contains only digits
    ///
    /// - Returns: Is string is valid Numeric string
    ///
    internal var isValidNumber: Bool {
        return self.range(of: numberRegex, options: .regularExpression, range: nil, locale: nil) != nil
    }
    
    /// Replace any occurances of non-numeric charecters in a string
    ///
    /// - Returns: string containing only numeric charecters
    ///
    internal func removeNoneNumericCharecters() -> String {
        return self.replacingOccurrences(of: nonNumericCharacterRegex, with: "", options: .regularExpression)
    }
    
    /// Converts string into array of Int8
    ///
    ///    String should that contain only Numeric charecters.
    ///    In case of non-numeric charecters returns nil
    ///
    /// - Returns: An array of Int8 or nil
    ///
    internal func asNumericArray() -> ContiguousArray<Int8>? {
        guard self.isValidNumber else { return nil }
        
        let value = self.unicodeScalars.map { Int8($0.value - 48) }
        return ContiguousArray<Int8>(value)
    }
}
