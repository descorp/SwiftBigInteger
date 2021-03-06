//
//  BigIntegerDivisionUIntTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 13/12/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest
@testable import BigInteger

class BigIntegerReminderUIntTests: XCTestCase {

    func testPostfixDivision() {
        var a = BigInteger(145)
        let b: UInt = 12

        a %= b
        XCTAssertEqual(a, BigInteger(1))
        XCTAssertTrue(a.sign)
    }

    func testDivideBisBiggerThanA() {
        let a = BigInteger(12)
        let b: UInt = 146

        let result1 = a % b
        let result2 = b % a
        XCTAssertEqual(result1, a)
        XCTAssertEqual(result2, BigInteger(2))
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }

    func testDivideBisBiggerThanNegativeA() {
        let a = BigInteger(-12)
        let b: UInt = 147

        let result1 = a % b
        let result2 = b % a
        XCTAssertEqual(result1, a)
        XCTAssertEqual(result2, BigInteger(3))
        XCTAssertFalse(result1.sign)
        XCTAssertTrue(result2.sign)
    }
}
