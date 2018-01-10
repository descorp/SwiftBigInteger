//
//  BigIntegerMultiplicationUInt64Tests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 13/12/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest
@testable import BigInteger

class BigIntegerMultiplicationUInt64Tests: XCTestCase {

    func testPostfixMultiply() {
        var a = BigInteger(123456)
        let b : UInt64 = 123456
        a *= b

        XCTAssertEqual(a, BigInteger(15241383936))
        XCTAssertTrue(a.sign)
    }

    func testMultiplyByZero() {
        let a = BigInteger.zero
        let b : UInt64 = 123456
        let result1 = a * b
        let result2 = b * a
        XCTAssertEqual(result1, BigInteger.zero)
        XCTAssertEqual(result2, BigInteger.zero)
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }

    func testMultiplyByOne() {
        let a = BigInteger(1)
        let b : UInt64 = 123456
        let result1 = a * b
        let result2 = b * a
        XCTAssertEqual(result1, BigInteger(123456))
        XCTAssertEqual(result2, BigInteger(123456))
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }

    func testMultiplyByNegativeOne() {
        let a = BigInteger(-1)
        let b : UInt64 = 123456
        let result1 = a * b
        let result2 = b * a
        XCTAssertEqual(result1, BigInteger(-123456))
        XCTAssertEqual(result2, BigInteger(-123456))
        XCTAssertFalse(result1.sign)
        XCTAssertFalse(result2.sign)
    }

    func testMultiply() {
        let a = BigInteger(123456)
        let b : UInt64 = 123456
        let result1 = a * b
        let result2 = b * a
        XCTAssertEqual(result1, BigInteger(15241383936))
        XCTAssertEqual(result2, BigInteger(15241383936))
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }

    func testMultiplyNegative() {
        let a = BigInteger(-123456)
        let b : UInt64 = 123456
        let result1 = a * b
        let result2 = b * a
        XCTAssertEqual(result1, BigInteger(-15241383936))
        XCTAssertEqual(result2, BigInteger(-15241383936))
        XCTAssertFalse(result1.sign)
        XCTAssertFalse(result2.sign)
    }
}
