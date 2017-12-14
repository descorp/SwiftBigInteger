//
//  BigIntegerEquilityBasicValues.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 14/12/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerEquilityBasicValues: XCTestCase {
    
    func testZero() {
        let a = BigInteger.zero
        let b = BigInteger(value: 10)
        
        XCTAssertTrue(a == BigInteger())
        XCTAssertTrue(a == BigInteger(value: 0))
        XCTAssertTrue(a == 0)
    }
    
    func testNan() {
        let a = BigInteger.nan
        let b = BigInteger(value: 10)
        
        XCTAssertFalse(a == a)
        XCTAssertFalse(a == -a)
        XCTAssertFalse(-a == a)
        XCTAssertFalse(a == b)
        XCTAssertFalse(b == a)
        XCTAssertFalse(a == 10)
        XCTAssertFalse(10 == a)
        
        XCTAssertTrue(a != a)
        XCTAssertTrue(a != -a)
        XCTAssertTrue(-a != a)
        XCTAssertFalse(a != b)
        XCTAssertFalse(b != a)
        XCTAssertFalse(a != 10)
        XCTAssertFalse(10 != a)
        
        XCTAssertTrue(a.isNaN)
        XCTAssertFalse(b.isNaN)
    }
    
    func testInfinity() {
        let a = BigInteger.infinit
        let b = BigInteger(value: 10)
        let c = -BigInteger.infinit
        
        XCTAssertTrue(a == a)
        XCTAssertTrue(a != c)
        XCTAssertTrue(c != a)
        XCTAssertFalse(a == b)
        XCTAssertFalse(b == a)
        XCTAssertFalse(a == 10)
        XCTAssertFalse(10 == a)
        
        XCTAssertTrue(BigInteger.infinit == BigInteger.infinit)
        XCTAssertTrue(BigInteger.infinit != -BigInteger.infinit)
    }
}
