//
//  BigIntegerAdditionUIntTests.swift
//  BigInteger
//
//  Created by Vladimir Abramichev on 12/12/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerAdditionUInt64Tests: XCTestCase {
    
    func testPostfixAdd() {
        var a = BigInteger(value: 12345)
        let b: UInt64 = 12345
        
        a += b
        XCTAssertEqual(a, BigInteger(value: 24690))
        XCTAssertTrue(a.sign)
    }
    
    func testAddZeroAndZero() {
        let a = BigInteger()
        let b : UInt64 = 0
        
        let result1 = a + b
        let result2 = b + a
        XCTAssertEqual(result1, BigInteger())
        XCTAssertEqual(result2, BigInteger())
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testAddZeroAndOne() {
        let a = BigInteger()
        let b : UInt64 = 1
        
        let result1 = a + b
        let result2 = b + a
        XCTAssertEqual(result1, BigInteger(value: 1))
        XCTAssertEqual(result2, BigInteger(value: 1))
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testAddZeroAndMinusOne() {
        let a = BigInteger(value: -1)
        let b : UInt64 = 0
        
        let result1 = a + b
        let result2 = b + a
        XCTAssertEqual(result1, BigInteger(value: -1))
        XCTAssertEqual(result2, BigInteger(value: -1))
        XCTAssertFalse(result1.sign)
        XCTAssertFalse(result2.sign)
    }
    
    func testAdd() {
        let a = BigInteger(value: 12345)
        let b : UInt64 = 12345
        
        let result1 = a + b
        let result2 = b + a
        XCTAssertEqual(result1, BigInteger(value: 24690))
        XCTAssertEqual(result2, BigInteger(value: 24690))
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
}
