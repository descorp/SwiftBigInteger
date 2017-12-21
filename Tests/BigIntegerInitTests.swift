//
//  BigIntegerTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 12/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest
@testable import BigInteger

class BigIntegerInitTests: XCTestCase {

    func testInit() {
        let a = BigInteger.zero
        XCTAssertEqual(a.description, "0")
        XCTAssertTrue(a.sign)
    }

    func testInitWithValue() {
        let a = BigInteger(5)
        XCTAssertEqual(a.description, "5")
        XCTAssertTrue(a.sign)
    }

    func testInitWithPositiveValue() {
        let a = BigInteger(1234567)
        XCTAssertEqual(a.description, "1234567")
        XCTAssertTrue(a.sign)
    }

    func testInitWithNegativeValue() {
        let a = BigInteger(-1234567)
        XCTAssertEqual(a.description, "-1234567")
        XCTAssertFalse(a.sign)
    }

    func testInitWithPositiveString() {
        let str = "123456789012345678901234567890"
        let a = BigInteger(str)
        XCTAssertNotNil(a)
        XCTAssertEqual(a!.description, str)
        XCTAssertTrue(a!.sign)
    }

    func testInitWithNegativeString() {
        let str = "-123456789012345678901234567890"
        let a = BigInteger(str)
        XCTAssertNotNil(a)
        XCTAssertEqual(a!.description, str)
        XCTAssertFalse(a!.sign)
    }

    func testInitWithStringWithZeros() {
        let str = "000000023456789012345678900"
        let a = BigInteger(str)
        XCTAssertNotNil(a)
        XCTAssertEqual(a!.description, "23456789012345678900")
        XCTAssertTrue(a!.sign)
    }

    func testInitWithNegativeStringWithZeros() {
        let str = "-000000023456789012345678900"
        let a = BigInteger(str)
        XCTAssertNotNil(a)
        XCTAssertEqual(a!.description, "-23456789012345678900")
        XCTAssertFalse(a!.sign)
    }

    func testInitWithStringWithSpaces() {
        let str = "123 456 789 012 345 678 900"
        let a = BigInteger(str)
        XCTAssertNotNil(a)
        XCTAssertEqual(a!.description, "123456789012345678900")
        XCTAssertTrue(a!.sign)
    }

    func testInitWithFloatString() {
        let str = "0.123456789012345678901234567890"
        let a = BigInteger(str)
        XCTAssertNotNil(a)
        XCTAssertEqual(a!.description, "123456789012345678901234567890")
        XCTAssertTrue(a!.sign)
    }

    func testInitWithInvalidString() {
        let str = "-Fifty five"
        let a = BigInteger(str)
        XCTAssertNil(a)
    }

    func testInitWithLongString() {
        var str = "0"
        var result: [Int8] = [0]
        for _ in 0...200 {
            let i = Int8(arc4random() % 10)
            str += String(i)
            result.append(i)
        }
        let a = BigInteger(str)

        XCTAssertNotNil(a)
        XCTAssertEqual(a!.description, result.drop { $0 == 0 }.toString())
    }

    func testInitWithLongNegativeString() {
        var str = "-"
        var result: [Int8] = []
        for _ in 0...200 {
            let i = Int8(arc4random() % 10)
            str += String(i)
            result.append(i)
        }
        let a = BigInteger(str)

        XCTAssertNotNil(a)
        XCTAssertEqual(a!.description, result.drop { $0 == 0 }.toString(prefix: "-"))
    }
}
