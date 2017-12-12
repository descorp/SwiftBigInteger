//
//  StringExtensions.swift
//  BigInteger
//
//  Created by Vladimir Abramichev on 21/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import Foundation

extension String {
    /** Check is string contains only digits or sign chars, and do not starts with 0
     - Returns: Is string is valid Integer string
     */
    internal var isValidNumber: Bool {
        return self.range(of: numberRegex, options: .regularExpression, range: nil, locale: nil) != nil
    }
}
