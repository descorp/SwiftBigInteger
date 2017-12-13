//
//  BigIntegerMathTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 13/12/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerMathPowerTests: XCTestCase {
    
    func testPowerOne() {
        let a = BigInteger(value: 2)
        
        let result = a^1
        XCTAssertEqual(result.description, a.description)
    }
    
    func testPowerZero() {
        let a = BigInteger(value: 2)
        
        let result = a^0
        XCTAssertEqual(result.description, "1")
    }
    
    func testPower() {
        let a = BigInteger(value: 2)
        
        let result = a^2
        XCTAssertEqual(result.description, "4")
    }
    
    func testPowerNegativeEven() {
        let a = BigInteger(value: -2)
        
        let result = a^2
        XCTAssertEqual(result.description, "4")
    }
    
    func testPowerNegativeOdd() {
        let a = BigInteger(value: -2)
        
        let result = a^3
        XCTAssertEqual(result.description, "-8")
    }
}
