//
//  BigIntegerSubtractionIntTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 28/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest


class BigIntegerSubtractionIntTests: XCTestCase {
    
    func testSubtractZeroAndZero() {
        let a = BigInteger()
        let b = 0
        
        let result = a - b
        XCTAssertEqual(result, BigInteger())
        XCTAssertTrue(result.sign)
    }
    
    func testSubtractZeroAndMinusOne() {
        let a = BigInteger()
        let b = -1
        
        let result = a - b
        XCTAssertEqual(result, BigInteger(value: 1))
        XCTAssertTrue(result.sign)
    }
    
    func testSubtractZeroAndOne() {
        let a = BigInteger()
        let b = 1
        
        let result = a - b
        XCTAssertEqual(result, BigInteger(value: -1))
        XCTAssertFalse(result.sign)
    }
    
    func testSubtractOposite() {
        let a = BigInteger(value: 12345)
        let b = -12345
        
        let result = a - b
        XCTAssertEqual(result, BigInteger(value: 24690))
        XCTAssertTrue(result.sign)
    }
    
    func testSubtractEquilNegatives() {
        let a = BigInteger(value: -12345)
        let b = -12345
        
        let result = a - b
        XCTAssertEqual(result, BigInteger())
        XCTAssertTrue(result.sign)
    }
    
    func testSubtractEquil() {
        let a = BigInteger(value: 12345)
        let b = 12345
        
        let result = a - b
        XCTAssertEqual(result, BigInteger())
        XCTAssertTrue(result.sign)
    }
    
    func testSubtractAisBiggerThanB() {
        let a = BigInteger(value: 12345)
        let b = 12340
        
        let result = a - b
        XCTAssertEqual(result, BigInteger(value: 5))
        XCTAssertTrue(result.sign)
    }
    
    func testSubtractBisBiggerThanA() {
        let a = BigInteger(value: 12340)
        let b = 12345
        
        let result = a - b
        XCTAssertEqual(result, BigInteger(value: -5))
        XCTAssertFalse(result.sign)
    }
}
