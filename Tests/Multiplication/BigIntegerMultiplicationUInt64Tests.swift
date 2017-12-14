//
//  BigIntegerMultiplicationUInt64Tests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 13/12/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerMultiplicationUInt64Tests: XCTestCase {
    
    func testPostfixMultiply() {
        var a = BigInteger(value: 123456)
        let b : UInt64 = 123456
        a *= b

        XCTAssertEqual(a, BigInteger(value: 15241383936))
        XCTAssertTrue(a.sign)
    }
    
    func testMultiplyByZero() {
        let a = BigInteger()
        let b : UInt64 = 123456
        let result1 = a * b
        let result2 = b * a
        XCTAssertEqual(result1, BigInteger())
        XCTAssertEqual(result2, BigInteger())
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testMultiplyByOne() {
        let a = BigInteger(value: 1)
        let b : UInt64 = 123456
        let result1 = a * b
        let result2 = b * a
        XCTAssertEqual(result1, BigInteger(value: 123456))
        XCTAssertEqual(result2, BigInteger(value: 123456))
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testMultiplyByNegativeOne() {
        let a = BigInteger(value: -1)
        let b : UInt64 = 123456
        let result1 = a * b
        let result2 = b * a
        XCTAssertEqual(result1, BigInteger(value: -123456))
        XCTAssertEqual(result2, BigInteger(value: -123456))
        XCTAssertFalse(result1.sign)
        XCTAssertFalse(result2.sign)
    }
    
    func testMultiply() {
        let a = BigInteger(value: 123456)
        let b : UInt64 = 123456
        let result1 = a * b
        let result2 = b * a
        XCTAssertEqual(result1, BigInteger(value: 15241383936))
        XCTAssertEqual(result2, BigInteger(value: 15241383936))
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testMultiplyNegative() {
        let a = BigInteger(value: -123456)
        let b : UInt64 = 123456
        let result1 = a * b
        let result2 = b * a
        XCTAssertEqual(result1, BigInteger(value: -15241383936))
        XCTAssertEqual(result2, BigInteger(value: -15241383936))
        XCTAssertFalse(result1.sign)
        XCTAssertFalse(result2.sign)
    }
}
