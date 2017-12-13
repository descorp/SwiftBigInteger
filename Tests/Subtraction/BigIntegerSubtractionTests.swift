//
//  BigIntegerSubtractionTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 15/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerSubtractionTests: XCTestCase {
    
    func testPostfixSubstraction() {
        var a = BigInteger(value: 12345)
        let b = BigInteger(value: 12340)
        
        a -= b
        XCTAssertEqual(a, BigInteger(value: 5))
        XCTAssertTrue(a.sign)
    }
    
    func testSubtractZeroAndZero() {
        let a = BigInteger()
        let b = BigInteger()
        
        let result = a - b
        XCTAssertEqual(result, BigInteger())
        XCTAssertTrue(result.sign)
    }
    
    func testSubtractZeroAndMinusOne() {
        let a = BigInteger()
        let b = BigInteger(value: -1)
        
        let result = a - b
        XCTAssertEqual(result, BigInteger(value: 1))
        XCTAssertTrue(result.sign)
    }
    
    func testSubtractZeroAndOne() {
        let a = BigInteger()
        let b = BigInteger(value: 1)
        
        let result = a - b
        XCTAssertEqual(result, BigInteger(value: -1))
        XCTAssertFalse(result.sign)
    }
    
    func testSubtractOposite() {
        let a = BigInteger(value: 12345)
        let b = BigInteger(value: -12345)
        
        let result = a - b
        XCTAssertEqual(result, BigInteger(value: 24690))
        XCTAssertTrue(result.sign)
    }
    
    func testSubtractEquilNegatives() {
        let a = BigInteger(value: -12345)
        let b = BigInteger(value: -12345)
        
        let result = a - b
        XCTAssertEqual(result, BigInteger())
        XCTAssertTrue(result.sign)
    }
    
    func testSubtractEquil() {
        let a = BigInteger(value: 12345)
        let b = BigInteger(value: 12345)
        
        let result = a - b
        XCTAssertEqual(result, BigInteger())
        XCTAssertTrue(result.sign)
    }
    
    func testSubtractAisBiggerThanB() {
        let a = BigInteger(value: 12345)
        let b = BigInteger(value: 12340)
        
        let result = a - b
        XCTAssertEqual(result, BigInteger(value: 5))
        XCTAssertTrue(result.sign)
    }
    
    func testSubtractBisBiggerThanA() {
        let a = BigInteger(value: 12340)
        let b = BigInteger(value: 12345)
        
        let result = a - b
        XCTAssertEqual(result, BigInteger(value: -5))
        XCTAssertFalse(result.sign)
    }
}


