//
//  BigIntegerSubtractionTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 15/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerSubtractionTests: XCTestCase {

    func testPostfixSubstraction() {
        var a = BigInteger(12345)
        let b = BigInteger(12340)

        a -= b
        XCTAssertEqual(a, BigInteger(5))
        XCTAssertTrue(a.sign)
    }

    func testSubtractZeroAndZero() {
        let a = BigInteger.zero
        let b = BigInteger.zero

        let result = a - b
        XCTAssertEqual(result, BigInteger.zero)
        XCTAssertTrue(result.sign)
    }

    func testSubtractZeroAndMinusOne() {
        let a = BigInteger.zero
        let b = BigInteger(-1)

        let result = a - b
        XCTAssertEqual(result, BigInteger(1))
        XCTAssertTrue(result.sign)
    }

    func testSubtractZeroAndOne() {
        let a = BigInteger.zero
        let b = BigInteger(1)

        let result = a - b
        XCTAssertEqual(result, BigInteger(-1))
        XCTAssertFalse(result.sign)
    }

    func testSubtractOposite() {
        let a = BigInteger(12345)
        let b = BigInteger(-12345)

        let result = a - b
        XCTAssertEqual(result, BigInteger(24690))
        XCTAssertTrue(result.sign)
    }

    func testSubtractEquilNegatives() {
        let a = BigInteger(-12345)
        let b = BigInteger(-12345)

        let result = a - b
        XCTAssertEqual(result, BigInteger.zero)
        XCTAssertTrue(result.sign)
    }

    func testSubtractEquil() {
        let a = BigInteger(12345)
        let b = BigInteger(12345)

        let result = a - b
        XCTAssertEqual(result, BigInteger.zero)
        XCTAssertTrue(result.sign)
    }

    func testSubtract() {
        let a = BigInteger(45)
        let b = BigInteger(36)

        let result = a - b
        XCTAssertEqual(result, BigInteger(9))
        XCTAssertTrue(result.sign)
    }

    func testSubtractAisBiggerThanB() {
        let a = BigInteger(12345)
        let b = BigInteger(12340)

        let result = a - b
        XCTAssertEqual(result, BigInteger(5))
        XCTAssertTrue(result.sign)
    }

    func testSubtractBisBiggerThanA() {
        let a = BigInteger(12340)
        let b = BigInteger(12345)

        let result = a - b
        XCTAssertEqual(result, BigInteger(-5))
        XCTAssertFalse(result.sign)
    }
}
