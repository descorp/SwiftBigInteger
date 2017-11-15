//
//  BigIntegerMultiplicationTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 15/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerMultiplicationTests: XCTestCase {
    
    func testMultiplyByZero() {
        let a = BigInteger()
        let b = BigInteger(value: 123456)
        let result = a * b
        XCTAssertEqual(result, BigInteger())
        XCTAssertTrue(result.sign)
    }
    
    func testMultiplyNegativeByZero() {
        let a = BigInteger()
        let b = BigInteger(value: -123456)
        let result = a * b
        XCTAssertEqual(result, BigInteger())
        XCTAssertTrue(result.sign)
    }
    
    func testMultiplyByOne() {
        let a = BigInteger(value: 1)
        let b = BigInteger(value: 123456)
        let result = a * b
        XCTAssertEqual(result, BigInteger(value: 123456))
        XCTAssertTrue(result.sign)
    }
    
    func testMultiplyByNegativeOne() {
        let a = BigInteger(value: -1)
        let b = BigInteger(value: 123456)
        let result = a * b
        XCTAssertEqual(result, BigInteger(value: 123456))
        XCTAssertFalse(result.sign)
    }
    
    func testMultiply() {
        let a = BigInteger(value: 123456)
        let b = BigInteger(value: 123456)
        let result = a * b
        XCTAssertEqual(result, BigInteger(value: 15241383936))
        XCTAssertTrue(result.sign)
    }
    
    func testMultiplyNegative() {
        let a = BigInteger(value: 123456)
        let b = BigInteger(value: -123456)
        let result = a * b
        XCTAssertEqual(result, BigInteger(value: -15241383936))
        XCTAssertFalse(result.sign)
    }
    
    func testMultiplyTwoNegative() {
        let a = BigInteger(value: -123456)
        let b = BigInteger(value: -123456)
        let result = a * b
        XCTAssertEqual(result, BigInteger(value: 15241383936))
        XCTAssertTrue(result.sign)
    }
}
