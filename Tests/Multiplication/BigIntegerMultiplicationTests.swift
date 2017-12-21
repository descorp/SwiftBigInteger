//
//  BigIntegerMultiplicationTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 15/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerMultiplicationTests: XCTestCase {

    func testPostfixMultiply() {
        var a = BigInteger(123456)
        let b = BigInteger(123456)
        a *= b

        XCTAssertEqual(a, BigInteger(15241383936))
        XCTAssertTrue(a.sign)
    }

    func testMultiplyByZero() {
        let a = BigInteger.zero
        let b = BigInteger(123456)
        let result = a * b
        XCTAssertEqual(result, BigInteger.zero)
        XCTAssertTrue(result.sign)
    }

    func testMultiplyNegativeByZero() {
        let a = BigInteger.zero
        let b = BigInteger(-123456)
        let result = a * b
        XCTAssertEqual(result, BigInteger.zero)
        XCTAssertTrue(result.sign)
    }

    func testMultiplyByOne() {
        let a = BigInteger(1)
        let b = BigInteger(123456)
        let result = a * b
        XCTAssertEqual(result, BigInteger(123456))
        XCTAssertTrue(result.sign)
    }

    func testMultiplyByNegativeOne() {
        let a = BigInteger(-1)
        let b = BigInteger(123456)
        let result = a * b
        XCTAssertEqual(result, BigInteger(-123456))
        XCTAssertFalse(result.sign)
    }

    func testMultiply() {
        let a = BigInteger(123456)
        let b = BigInteger(123456)
        let result = a * b
        XCTAssertEqual(result, BigInteger(15241383936))
        XCTAssertTrue(result.sign)
    }
    
    func testMultiplyWithLotOf999() {
        let a = BigInteger(999999999)
        let b = BigInteger(999999999)
        let result = a * b
        XCTAssertEqual(result, BigInteger(999999998000000001))
        XCTAssertTrue(result.sign)
    }

    func testMultiplyNegative() {
        let a = BigInteger(123456)
        let b = BigInteger(-123456)
        let result = a * b
        XCTAssertEqual(result, BigInteger(-15241383936))
        XCTAssertFalse(result.sign)
    }

    func testMultiplyTwoNegative() {
        let a = BigInteger(-123456)
        let b = BigInteger(-123456)
        let result = a * b
        XCTAssertEqual(result, BigInteger(15241383936))
        XCTAssertTrue(result.sign)
    }
}
