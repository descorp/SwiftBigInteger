//
//  BigIntegerCompareWithOtherTypesTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 28/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerCompareWithOtherTypesTests: XCTestCase {
    
    func testEquilityUnsigned() {
        let b = BigInteger(value: 42)
        let a : UInt = 42
        
        XCTAssertTrue(a == b)
        XCTAssertTrue(b == a)
        XCTAssertTrue(a != -b)
        XCTAssertTrue(-b != a)
    }
    
    func testEquilitySigned() {
        let a = BigInteger(value: 42)
        let b = -42
        
        XCTAssertTrue(a != b)
        XCTAssertTrue(b != a)
        XCTAssertTrue(a == -b)
        XCTAssertTrue(b == -a)
    }
    
    func testCompareSigned() {
        let b = BigInteger(value: 42)
        let a = -42
        
        XCTAssertTrue(a < b)
        XCTAssertFalse(-a > b)
        XCTAssertTrue(b > a)
        XCTAssertFalse(b < -a)
        XCTAssertTrue(a <= b)
        XCTAssertTrue(-a >= b)
        XCTAssertTrue(b >= a)
        XCTAssertTrue(b <= -a)
    }
    
    func testCompareUnsigned() {
        let a = BigInteger(value: -42)
        let b : UInt = 42
        
        XCTAssertTrue(a < b)
        XCTAssertFalse(-a > b)
        XCTAssertTrue(b > a)
        XCTAssertFalse(b < -a)
        XCTAssertTrue(a <= b)
        XCTAssertTrue(-a >= b)
        XCTAssertTrue(b >= a)
        XCTAssertTrue(b <= -a)
    }
    
    func testNegation() {
        let a = BigInteger(value: -5)
        let b = 5
        
        XCTAssertFalse(a.sign)
        XCTAssertTrue((-a).sign)
        
        XCTAssertFalse(a == b)
        XCTAssertTrue(a == -b)
        XCTAssertTrue(-a == b)
        XCTAssertFalse(-a == -b)
    }
}
