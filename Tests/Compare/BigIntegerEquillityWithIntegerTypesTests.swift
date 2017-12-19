//
//  BigIntegerCompareWithOtherTypesTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 28/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerEquilityWithIntegerTypesTests: XCTestCase {

    func testEquilityUnsigned() {
        let b = BigInteger(42)
        let a : UInt = 42

        XCTAssertTrue(a == b)
        XCTAssertTrue(b == a)
        XCTAssertTrue(a != -b)
        XCTAssertTrue(-b != a)
    }

    func testEquilitySigned() {
        let a = BigInteger(42)
        let b = -42

        XCTAssertTrue(a != b)
        XCTAssertTrue(b != a)
        XCTAssertTrue(a == -b)
        XCTAssertTrue(-b == a)
    }

    func testEquilityUnsigned64() {
        let b = BigInteger(42)
        let a : UInt64 = 42

        XCTAssertTrue(a == b)
        XCTAssertTrue(b == a)
        XCTAssertTrue(a != -b)
        XCTAssertTrue(-b != a)
    }

    func testEquilitySigned64() {
        let a = BigInteger(42)
        let b: Int64 = -42

        XCTAssertTrue(a != b)
        XCTAssertTrue(b != a)
        XCTAssertTrue(a == -b)
        XCTAssertTrue(-b == a)
    }
}
