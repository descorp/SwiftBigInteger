//
//  BigIntegerMathAbs.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 20/12/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerMathAbs: XCTestCase {
    
    func testPositiveValue() {
        let a = BigInteger(12345)
        let result = BigInteger.abs(a)
        
        XCTAssertTrue(result.sign)
        XCTAssertEqual(result.description, "12345")
    }
    
    func testNegativeValue() {
        let a = BigInteger(-12345)
        let result = BigInteger.abs(a)
        
        XCTAssertTrue(result.sign)
        XCTAssertEqual(result.description, "12345")
    }
}
