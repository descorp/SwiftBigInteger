//
//  BigIntegerAdditionBasicValuesTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 14/12/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerAdditionBasicValuesTests: XCTestCase {
    
    func testZero() {
        let a = BigInteger.zero
        let b = BigInteger(value: 10)
        
        XCTAssertEqual(a + b, BigInteger(value: 10))
        XCTAssertEqual(b + a, BigInteger(value: 10))
        XCTAssertEqual(a + 10, BigInteger(value: 10))
        XCTAssertEqual(10 + a, BigInteger(value: 10))
    }
    
    func testNan() {
        let a = BigInteger.nan
        let b = BigInteger(value: 10)
        
        XCTAssertTrue((a + b).isNaN)
        XCTAssertTrue((b + a).isNaN)
        XCTAssertTrue((a + 10).isNaN)
        XCTAssertTrue((10 + a).isNaN)
    }
    
    func testInfinity() {
        let a = BigInteger.infinit
        let b = BigInteger(value: 10)
        
        XCTAssertTrue((a + b).isInfinit)
        XCTAssertTrue((b + a).isInfinit)
        XCTAssertTrue((a + 10).isInfinit)
        XCTAssertTrue((10 + a).isInfinit)
    }
}
