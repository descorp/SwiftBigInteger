//
//  IntSubtractionBigIntegerTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 28/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class IntSubtractionBigIntegerTests: XCTestCase {
    
    func testSubtractZeroAndZero() {
        let a = 0
        let b = BigInteger()
        
        let result = a - b
        XCTAssertEqual(result, BigInteger())
        XCTAssertTrue(result.sign)
    }
    
    func testSubtractZeroAndMinusOne() {
        let a = 0
        let b = BigInteger(value: -1)
        
        let result = a - b
        XCTAssertEqual(result, BigInteger(value: 1))
        XCTAssertTrue(result.sign)
    }
    
    func testSubtractZeroAndOne() {
        let a = 0
        let b = BigInteger(value: 1)
        
        let result = a - b
        XCTAssertEqual(result, BigInteger(value: -1))
        XCTAssertFalse(result.sign)
    }
    
    func testSubtractOposite() {
        let a = 12345
        let b = BigInteger(value: -12345)
        
        let result = a - b
        XCTAssertEqual(result, BigInteger(value: 24690))
        XCTAssertTrue(result.sign)
    }
    
    func testSubtractEquilNegatives() {
        let a = -12345
        let b = BigInteger(value: -12345)
        
        let result = a - b
        XCTAssertEqual(result, BigInteger())
        XCTAssertTrue(result.sign)
    }
    
    func testSubtractEquil() {
        let a = 12345
        let b = BigInteger(value: 12345)
        
        let result = a - b
        XCTAssertEqual(result, BigInteger())
        XCTAssertTrue(result.sign)
    }
    
    func testSubtractAisBiggerThanB() {
        let a = 12345
        let b = BigInteger(value: 12340)
        
        let result = a - b
        XCTAssertEqual(result, BigInteger(value: 5))
        XCTAssertTrue(result.sign)
    }
    
    func testSubtractBisBiggerThanA() {
        let a = 12340
        let b = BigInteger(value: 12345)
        
        let result = a - b
        XCTAssertEqual(result, BigInteger(value: -5))
        XCTAssertFalse(result.sign)
    }
}
