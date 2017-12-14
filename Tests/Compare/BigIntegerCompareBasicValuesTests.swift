//
//  BigIntegerCompareBasicValues.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 14/12/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerCompareBasicValuesTests : XCTestCase {
    
    func testZero() {
        let a = BigInteger.zero
        let b = BigInteger(value: 10)
        
        XCTAssertTrue(a < b)
        XCTAssertTrue(b > a)
        XCTAssertTrue(a > -b)
        XCTAssertTrue(-b < a)
        XCTAssertTrue(a == BigInteger())
        XCTAssertTrue(a == BigInteger(value: 0))
        
        XCTAssertTrue(a < 10)
        XCTAssertTrue(10 > a)
        XCTAssertTrue(a > -10)
        XCTAssertTrue(-10 < a)
        XCTAssertTrue(a == 0)
    }
    
    func testNan() {
        let a = BigInteger.nan
        let b = BigInteger(value: 10)
        
        XCTAssertFalse(a < b)
        XCTAssertFalse(b > a)
        XCTAssertFalse(a > -b)
        XCTAssertFalse(-b < a)
        
        XCTAssertFalse(a < 10)
        XCTAssertFalse(10 > a)
        XCTAssertFalse(a > -10)
        XCTAssertFalse(-10 < a)
        
        XCTAssertFalse(a == a)
        XCTAssertFalse(a == -a)
        XCTAssertFalse(-a == a)
        XCTAssertFalse(a == b)
        XCTAssertFalse(b == a)
        XCTAssertFalse(a == 10)
        XCTAssertFalse(10 == a)
        
        XCTAssertTrue(a.isNaN)
        XCTAssertFalse(b.isNaN)
    }
    
    func testInfinity() {
        let a = BigInteger.infinit
        let b = BigInteger(value: 10)
        let c = -BigInteger.infinit
        
        XCTAssertTrue(a > b)
        XCTAssertTrue(b < a)
        XCTAssertTrue(a > -b)
        XCTAssertTrue(-b < a)
        
        XCTAssertTrue(a > 10)
        XCTAssertTrue(10 < a)
        XCTAssertTrue(a > -10)
        XCTAssertTrue(-10 < a)
        
        XCTAssertTrue(a == a)
        XCTAssertFalse(a == -a)
        XCTAssertFalse(-a == a)
        XCTAssertFalse(a == b)
        XCTAssertFalse(b == a)
        XCTAssertFalse(a == 10)
        XCTAssertFalse(10 == a)
        
        XCTAssertTrue(c < b)
        XCTAssertTrue(b > c)
        XCTAssertTrue(c < -b)
        XCTAssertTrue(-b > c)
        
        XCTAssertFalse(BigInteger.infinit > BigInteger.infinit)
        XCTAssertFalse(BigInteger.infinit < BigInteger.infinit)
        XCTAssertTrue(BigInteger.infinit == BigInteger.infinit)
        
        XCTAssertTrue(BigInteger.infinit > -BigInteger.infinit)
        XCTAssertTrue(-BigInteger.infinit < BigInteger.infinit)
        XCTAssertTrue(BigInteger.infinit != -BigInteger.infinit)
    }
}

