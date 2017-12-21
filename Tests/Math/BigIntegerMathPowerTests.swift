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
        let a = BigInteger(2)

        let result = a^1
        XCTAssertEqual(result.description, a.description)
    }

    func testPowerZero() {
        let a = BigInteger(2)

        let result = a^0
        XCTAssertEqual(result.description, "1")
    }

    func testPower() {
        let a = BigInteger(2)

        let result = a^2
        XCTAssertEqual(result.description, "4")
    }

    func testPowerNegativeEven() {
        let a = BigInteger(-2)

        let result = a^2
        XCTAssertEqual(result.description, "4")
    }
    
    func testNegativePowerNegativeEven() {
        let a = BigInteger(-2)
        
        let result = a^(-2)
        XCTAssertEqual(result.description, "4")
    }

    func testPowerNegativeOdd() {
        let a = BigInteger(-2)

        let result = a^3
        XCTAssertEqual(result.description, "-8")
    }

    func testPowerNegativeEvenUInt() {
        let a = BigInteger(-2)

        let result = a^UInt(2)
        XCTAssertEqual(result.description, "4")
    }

    func testPowerNegativeEvenUInt64() {
        let a = BigInteger(-2)

        let result = a^UInt64(2)
        XCTAssertEqual(result.description, "4")
    }

    func testPowerNegativeEvenInt64() {
        let a = BigInteger(-2)

        let result = a^Int64(2)
        XCTAssertEqual(result.description, "4")
    }
}
