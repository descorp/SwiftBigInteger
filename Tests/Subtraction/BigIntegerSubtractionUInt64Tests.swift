//
//  BigIntegerSubtractionUInt64Tests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 13/12/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerSubtractionUInt64Tests: XCTestCase {

    func testPostfixSubstraction() {
        var a = BigInteger(12345)
        let b: UInt64 = 12340

        a -= b
        XCTAssertEqual(a, BigInteger(5))
        XCTAssertTrue(a.sign)
    }

    func testSubtractZeroAndZero() {
        let a: UInt64 = 0
        let b = BigInteger.zero

        let result1 = a - b
        let result2 = b - a
        XCTAssertEqual(result1, BigInteger.zero)
        XCTAssertEqual(result2, BigInteger(0))
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }

    func testSubtractZeroAndMinusOne() {
        let a: UInt64 = 0
        let b = BigInteger(-1)

        let result1 = a - b
        let result2 = b - a
        XCTAssertEqual(result1, BigInteger(1))
        XCTAssertEqual(result2, BigInteger(-1))
        XCTAssertTrue(result1.sign)
        XCTAssertFalse(result2.sign)
    }

    func testSubtractZeroAndOne() {
        let a: UInt64 = 0
        let b = BigInteger(1)

        let result1 = a - b
        let result2 = b - a
        XCTAssertEqual(result1, BigInteger(-1))
        XCTAssertEqual(result2, BigInteger(1))
        XCTAssertFalse(result1.sign)
        XCTAssertTrue(result2.sign)
    }

    func testSubtractOposite() {
        let a: UInt64 = 12345
        let b = BigInteger(-12345)

        let result1 = a - b
        let result2 = b - a
        XCTAssertEqual(result1, BigInteger(24690))
        XCTAssertEqual(result2, BigInteger(-24690))
        XCTAssertTrue(result1.sign)
        XCTAssertFalse(result2.sign)
    }

    func testSubtractEquil() {
        let a: UInt64 = 12345
        let b = BigInteger(12345)

        let result1 = a - b
        let result2 = b - a
        XCTAssertEqual(result1, BigInteger.zero)
        XCTAssertEqual(result2, BigInteger.zero)
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }

    func testSubtractAisBiggerThanB() {
        let a: UInt64 = 12345
        let b = BigInteger(12340)

        let result1 = a - b
        let result2 = b - a
        XCTAssertEqual(result1, BigInteger(5))
        XCTAssertEqual(result2, BigInteger(-5))
        XCTAssertTrue(result1.sign)
        XCTAssertFalse(result2.sign)
    }

    func testSubtractBisBiggerThanA() {
        let a: UInt64 = 12340
        let b = BigInteger(12345)

        let result1 = a - b
        let result2 = b - a
        XCTAssertEqual(result1, BigInteger(-5))
        XCTAssertEqual(result2, BigInteger(5))
        XCTAssertFalse(result1.sign)
        XCTAssertTrue(result2.sign)
    }
}
