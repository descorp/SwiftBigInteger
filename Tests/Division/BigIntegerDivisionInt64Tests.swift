//
//  BigIntegerDivisionInt64Tests.swift
//  BigInteger
//
//  Created by Vladimir Abramichev on 13/12/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerDivisionIInt64Tests: XCTestCase {

    func testPostfixSubstraction() {
        var a = BigInteger(144)
        let b: Int64 = 12

        a /= b
        XCTAssertEqual(a, BigInteger(12))
        XCTAssertTrue(a.sign)
    }

    func testDividezeroByzero() {
        let a = BigInteger.zero
        let b: Int64 = 0

        let result1 = a / b
        let result2 = b / a
        XCTAssertTrue(result1.isNaN)
        XCTAssertTrue(result2.isNaN)
    }

    func testDivideByzero() {
        let a = BigInteger(144)
        let b: Int64 = 0

        let result1 = a / b
        let result2 = b / a
        XCTAssertTrue(result1.isInfinit)
        XCTAssertEqual(result2, BigInteger.zero)
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }

    func testDividezeroByMinusOne() {
        let a = BigInteger.zero
        let b: Int64 = -1

        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger.zero)
        XCTAssertTrue(result2.isInfinit)
        XCTAssertTrue(result1.sign)
        XCTAssertFalse(result2.sign)
    }

    func testDividezeroByOne() {
        let a = BigInteger.zero
        let b: Int64 = 1

        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger.zero)
        XCTAssertTrue(result2.isInfinit)
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }

    func testDivideOposite() {
        let a = BigInteger(12)
        let b: Int64 = -12

        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger(-1))
        XCTAssertEqual(result2, BigInteger(-1))
        XCTAssertFalse(result1.sign)
        XCTAssertFalse(result2.sign)
    }

    func testDivideEquilNegatives() {
        let a = BigInteger(-12)
        let b: Int64 = -12

        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger(1))
        XCTAssertEqual(result2, BigInteger(1))
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }

    func testDivideEquil() {
        let a = BigInteger(12)
        let b: Int64 = 12

        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger(1))
        XCTAssertEqual(result2, BigInteger(1))
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }

    func testDivideByBiggerNondivider() {
        let a = BigInteger(145)
        let b: Int64 = 12

        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger(12))
        XCTAssertEqual(result2, BigInteger.zero)
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }

    func testDivideBisBiggerThanA() {
        let a = BigInteger(12)
        let b: Int64 = 144

        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger.zero)
        XCTAssertEqual(result2, BigInteger(12))
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }

    func testDivideBisBiggerThanNegativeA() {
        let a = BigInteger(-12)
        let b: Int64 = 144

        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger.zero)
        XCTAssertEqual(result2, BigInteger(-12))
        XCTAssertTrue(result1.sign)
        XCTAssertFalse(result2.sign)
    }
}
