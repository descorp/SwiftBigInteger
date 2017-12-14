//
//  BigIntegerMulticlicationBasicValuesTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 14/12/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerMulticlicationBasicValuesTests: XCTestCase {
    
    
    func testZero() {
        let a = BigInteger.zero
        let b = BigInteger(value: 10)
        
        XCTAssertEqual(a * b, BigInteger.zero)
        XCTAssertEqual(b * a, BigInteger.zero)
        XCTAssertEqual(a * 10, BigInteger.zero)
        XCTAssertEqual(10 * a, BigInteger.zero)
    }
    
    func testNan() {
        let a = BigInteger.nan
        let b = BigInteger(value: 10)
        
        XCTAssertTrue((a * b).isNaN)
        XCTAssertTrue((b * a).isNaN)
        XCTAssertTrue((a * 10).isNaN)
        XCTAssertTrue((10 * a).isNaN)
    }
    
    func testInfinity() {
        let a = BigInteger.infinit
        let b = BigInteger(value: 10)
        
        XCTAssertEqual(a * b, BigInteger.infinit)
        XCTAssertEqual(b * a, BigInteger.infinit)
        XCTAssertEqual(a * 10, BigInteger.infinit)
        XCTAssertEqual(10 * a, BigInteger.infinit)
    }
}
