//
//  BigIntegerDivisionTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 15/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest
@testable import BigInteger

class BigIntegerDivisionITests: XCTestCase {

    func testPostfixDivision() {
        var a = BigInteger(144)
        let b = BigInteger(12)

        a /= b
        XCTAssertEqual(a, BigInteger(12))
        XCTAssertTrue(a.sign)
    }

    func testDividezeroByzero() {
        let a = BigInteger.zero
        let b = BigInteger.zero

        let result = a / b
        XCTAssertTrue(result.isNaN)
        XCTAssertTrue(result.sign)
    }

    func testDivideByzero() {
        let a = BigInteger(144)
        let b = BigInteger.zero

        let result = a / b
        XCTAssertTrue(result.isInfinit)
        XCTAssertTrue(result.sign)
    }

    func testDividezeroByMinusOne() {
        let a = BigInteger.zero
        let b = BigInteger(-1)

        let result = a / b
        XCTAssertEqual(result, BigInteger.zero)
        XCTAssertTrue(result.sign)
    }

    func testDividezeroByOne() {
        let a = BigInteger.zero
        let b = BigInteger(1)

        let result = a / b
        XCTAssertEqual(result, BigInteger.zero)
        XCTAssertTrue(result.sign)
    }

    func testDivideOposite() {
        let a = BigInteger(12)
        let b = BigInteger(-12)

        let result = a / b
        XCTAssertEqual(result, BigInteger(-1))
        XCTAssertFalse(result.sign)
    }

    func testDivideEquilNegatives() {
        let a = BigInteger(-12)
        let b = BigInteger(-12)

        let result = a / b
        XCTAssertEqual(result, BigInteger(1))
        XCTAssertTrue(result.sign)
    }

    func testDivideEquil() {
        let a = BigInteger(12)
        let b = BigInteger(12)

        let result = a / b
        XCTAssertEqual(result, BigInteger(1))
        XCTAssertTrue(result.sign)
    }

    func testDivideByBiggerNondivider() {
        let a = BigInteger(145)
        let b = BigInteger(12)

        let result = a / b
        XCTAssertEqual(result, BigInteger(12))
        XCTAssertTrue(result.sign)
    }

    func testDivideBisBiggerThanA() {
        let a = BigInteger(12)
        let b = BigInteger(144)

        let result = a / b
        XCTAssertEqual(result, BigInteger(0))
        XCTAssertTrue(result.sign)
    }

    func testDivideBisBiggerThanNegativeA() {
        let a = BigInteger(-12)
        let b = BigInteger(144)

        let result = a / b
        XCTAssertEqual(result, BigInteger(0))
        XCTAssertTrue(result.sign)
    }
}
