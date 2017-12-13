//
//  BigIntegerSubtractionInt64Tests.swift
//  BigInteger
//
//  Created by Vladimir Abramichev on 13/12/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerSubtractionInt64Tests: XCTestCase {
    
    func testSubtractZeroAndZero() {
        let a: Int64 = 0
        let b = BigInteger()
        
        let result1 = a - b
        let result2 = b - a
        XCTAssertEqual(result1, BigInteger())
        XCTAssertEqual(result2, BigInteger(value: 0))
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testSubtractZeroAndMinusOne() {
        let a: Int64 = 0
        let b = BigInteger(value: -1)
        
        let result1 = a - b
        let result2 = b - a
        XCTAssertEqual(result1, BigInteger(value: 1))
        XCTAssertEqual(result2, BigInteger(value: -1))
        XCTAssertTrue(result1.sign)
        XCTAssertFalse(result2.sign)
    }
    
    func testSubtractZeroAndOne() {
        let a: Int64 = 0
        let b = BigInteger(value: 1)
        
        let result1 = a - b
        let result2 = b - a
        XCTAssertEqual(result1, BigInteger(value: -1))
        XCTAssertEqual(result2, BigInteger(value: 1))
        XCTAssertFalse(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testSubtractOposite() {
        let a: Int64 = 12345
        let b = BigInteger(value: -12345)
        
        let result1 = a - b
        let result2 = b - a
        XCTAssertEqual(result1, BigInteger(value: 24690))
        XCTAssertEqual(result2, BigInteger(value: -24690))
        XCTAssertTrue(result1.sign)
        XCTAssertFalse(result2.sign)
    }
    
    func testSubtractEquilNegatives() {
        let a: Int64 = -12345
        let b = BigInteger(value: -12345)
        
        let result1 = a - b
        let result2 = b - a
        XCTAssertEqual(result1, BigInteger())
        XCTAssertEqual(result2, BigInteger())
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testSubtractEquil() {
        let a: Int64 = 12345
        let b = BigInteger(value: 12345)
        
        let result1 = a - b
        let result2 = b - a
        XCTAssertEqual(result1, BigInteger())
        XCTAssertEqual(result2, BigInteger())
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testSubtractAisBiggerThanB() {
        let a: Int64 = 12345
        let b = BigInteger(value: 12340)
        
        let result1 = a - b
        let result2 = b - a
        XCTAssertEqual(result1, BigInteger(value: 5))
        XCTAssertEqual(result2, BigInteger(value: -5))
        XCTAssertTrue(result1.sign)
        XCTAssertFalse(result2.sign)
    }
    
    func testSubtractBisBiggerThanA() {
        let a: Int64 = 12340
        let b = BigInteger(value: 12345)
        
        let result1 = a - b
        let result2 = b - a
        XCTAssertEqual(result1, BigInteger(value: -5))
        XCTAssertEqual(result2, BigInteger(value: 5))
        XCTAssertFalse(result1.sign)
        XCTAssertTrue(result2.sign)
    }
}

