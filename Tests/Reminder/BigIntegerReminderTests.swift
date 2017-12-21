//
//  BigIntegerDivisionTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 15/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerReminderTests: XCTestCase {

    func testPostfixDivision() {
        var a = BigInteger(145)
        let b = BigInteger(12)

        a %= b
        XCTAssertEqual(a, BigInteger(1))
        XCTAssertTrue(a.sign)
    }

    func testDividezeroByzero() {
        let a = BigInteger.zero
        let b = BigInteger.zero

        let result = a % b
        XCTAssertTrue(result.isNaN)
        XCTAssertTrue(result.sign)
    }

    func testDivideByzero() {
        let a = BigInteger(144)
        let b = BigInteger.zero

        let result = a % b
        XCTAssertTrue(result.isInfinit)
        XCTAssertTrue(result.sign)
    }

    func testDividezeroByMinusOne() {
        let a = BigInteger.zero
        let b = BigInteger(-1)

        let result = a % b
        XCTAssertEqual(result, BigInteger.zero)
        XCTAssertTrue(result.sign)
    }

    func testDividezeroByOne() {
        let a = BigInteger.zero
        let b = BigInteger(1)

        let result = a % b
        XCTAssertEqual(result, BigInteger.zero)
        XCTAssertTrue(result.sign)
    }

    func testDivideOposite() {
        let a = BigInteger(12)
        let b = BigInteger(-12)

        let result1 = a % b
        let result2 = b % a
        XCTAssertEqual(result1, BigInteger(0))
        XCTAssertTrue(result1.sign)
        XCTAssertEqual(result2, BigInteger(0))
        XCTAssertTrue(result2.sign)
    }

    func testDivideEquilNegatives() {
        let a = BigInteger(-12)
        let b = BigInteger(-12)

        let result = a % b
        XCTAssertEqual(result, BigInteger(0))
        XCTAssertTrue(result.sign)
    }

    func testDivideEquil() {
        let a = BigInteger(12)
        let b = BigInteger(12)

        let result = a % b
        XCTAssertEqual(result, BigInteger(0))
        XCTAssertTrue(result.sign)
    }

    func testDivideByBiggerNondivider() {
        let a = BigInteger(149)
        let b = BigInteger(12)

        let result1 = a % b
        XCTAssertEqual(result1, BigInteger(5))
        XCTAssertTrue(result1.sign)
        
        let result2 = b % a
        XCTAssertEqual(result2, b)
        XCTAssertTrue(result2.sign)
    }
}
