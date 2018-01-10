//
//  BigIntegerMathNegationTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 13/12/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest
@testable import BigInteger

class BigIntegerMathNegationTests: XCTestCase {

    func testNegation() {
        let a = BigInteger(-5)
        let b = BigInteger(5)

        XCTAssertFalse(a.sign)
        XCTAssertTrue(b.sign)
        XCTAssertFalse((-b).sign)
        XCTAssertTrue((-a).sign)

        XCTAssertFalse(a == b, "a != b")
        XCTAssertTrue(a == -b, "a = -b")
        XCTAssertTrue(-a == b, "-a = b")
        XCTAssertFalse(-a == -b, "-a != -b")
    }

    func testNegationInt() {
        let a = BigInteger(-5)
        let b = 5

        XCTAssertFalse(a.sign)
        XCTAssertTrue((-a).sign)

        XCTAssertFalse(a == b)
        XCTAssertTrue(a == -b)
        XCTAssertTrue(-a == b)
        XCTAssertFalse(-a == -b)
    }

    func testNegationInt64() {
        let a = BigInteger(-5)
        let b: Int64 = 5

        XCTAssertFalse(a.sign)
        XCTAssertTrue((-a).sign)

        XCTAssertFalse(a == b)
        XCTAssertTrue(a == -b)
        XCTAssertTrue(-a == b)
        XCTAssertFalse(-a == -b)
    }

    func testNegationUInt64() {
        let a = BigInteger(-5)
        let b: UInt64 = 5

        XCTAssertFalse(a.sign)
        XCTAssertTrue((-a).sign)

        XCTAssertFalse(a == b)
        XCTAssertTrue(-a == b)
    }

    func testNegationUInt() {
        let a = BigInteger(-5)
        let b: UInt = 5

        XCTAssertFalse(a.sign)
        XCTAssertTrue((-a).sign)

        XCTAssertFalse(a == b)
        XCTAssertTrue(-a == b)
    }
}
