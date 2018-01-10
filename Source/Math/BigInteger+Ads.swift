//
//  BigInteger+Ads.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 18/12/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import Foundation

extension BigInteger {
    
    public static func abs(_ value: BigInteger ) -> BigInteger {
        var temp : BigInteger = value
        temp.sign = true
        return temp
    }
}
