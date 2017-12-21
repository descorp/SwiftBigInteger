//
//  BigIntegerCompareWithOtherTypesTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 28/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerCompareWithIntegerTypesTests: XCTestCase {

    func testCompareSigned() {
        let b = BigInteger(42)
        let a = -42

        XCTAssertTrue(a < b)
        XCTAssertFalse(-a > b)
        XCTAssertTrue(b > a)
        XCTAssertFalse(b < -a)
        XCTAssertTrue(a <= b)
        XCTAssertTrue(-a >= b)
        XCTAssertTrue(b >= a)
        XCTAssertTrue(b <= -a)
    }

    func testCompareUnsigned() {
        let a = BigInteger(-42)
        let b : UInt = 42

        XCTAssertTrue(a < b)
        XCTAssertFalse(-a > b)
        XCTAssertTrue(b > a)
        XCTAssertFalse(b < -a)
        XCTAssertTrue(a <= b)
        XCTAssertTrue(-a >= b)
        XCTAssertTrue(b >= a)
        XCTAssertTrue(b <= -a)
    }

    func testCompareSigned64() {
        let b = BigInteger(42)
        let a: Int64 = -42

        XCTAssertTrue(a < b)
        XCTAssertFalse(-a > b)
        XCTAssertTrue(b > a)
        XCTAssertFalse(b < -a)
        XCTAssertTrue(a <= b)
        XCTAssertTrue(-a >= b)
        XCTAssertTrue(b >= a)
        XCTAssertTrue(b <= -a)
    }

    func testCompareUnsigned64() {
        let a = BigInteger(-42)
        let b : UInt64 = 42

        XCTAssertTrue(a < b)
        XCTAssertFalse(-a > b)
        XCTAssertTrue(b > a)
        XCTAssertFalse(b < -a)
        XCTAssertTrue(a <= b)
        XCTAssertTrue(-a >= b)
        XCTAssertTrue(b >= a)
        XCTAssertTrue(b <= -a)
    }
}
