//
//  BigIntegerAdditionTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 15/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerAdditionTests: XCTestCase {
    
    func testAddZeroAndZero() {
        let a = BigInteger()
        let b = BigInteger()
        
        let result = a + b
        XCTAssertEqual(result, BigInteger())
        XCTAssertTrue(result.sign)
    }
    
    func testAddZeroAndOne() {
        let a = BigInteger()
        let b = BigInteger(value: 1)
        
        let result = a + b
        XCTAssertEqual(result, BigInteger(value: 1))
        XCTAssertTrue(result.sign)
    }
    
    func testAddZeroAndMinusOne() {
        let a = BigInteger()
        let b = BigInteger(value: -1)
        
        let result = a + b
        XCTAssertEqual(result, BigInteger(value: -1))
        XCTAssertFalse(result.sign)
    }
    
    func testAdd() {
        let a = BigInteger(value: 12345)
        let b = BigInteger(value: 12345)
        
        let result = a + b
        XCTAssertEqual(result, BigInteger(value: 24690))
        XCTAssertTrue(result.sign)
    }
    
    func testAddNegatives() {
        let a = BigInteger(value: -12345)
        let b = BigInteger(value: -12345)
        
        let result = a + b
        XCTAssertEqual(result, BigInteger(value: -24690))
        XCTAssertFalse(result.sign)
    }
    
    func testAddOposite() {
        let a = BigInteger(value: 12345)
        let b = BigInteger(value: -12345)
        
        let result = a + b
        XCTAssertEqual(result, BigInteger())
        XCTAssertTrue(result.sign)
    }
}
