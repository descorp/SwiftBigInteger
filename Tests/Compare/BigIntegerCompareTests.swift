//
//  BigIntegerCompareTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 15/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerCompareTests: XCTestCase {

    func testCompareWithZero() {
        let a = BigInteger()
        let b = BigInteger(value: -42)
        let c = BigInteger(value: 42)
        
        XCTAssertTrue(a > b, " \(a) > \(b)")
        XCTAssertTrue(b < a)
        XCTAssertTrue(a >= b)
        XCTAssertTrue(b <= a)
        XCTAssertTrue(c > a)
        XCTAssertTrue(a < c)
        XCTAssertTrue(c >= a)
        XCTAssertTrue(a <= c)
    }
    
    func testCompare() {
        let a = BigInteger(value: 42)
        let b = BigInteger(value: -42)
        
        XCTAssertTrue(a > b)
        XCTAssertTrue(b < a)
        XCTAssertTrue(a >= b)
        XCTAssertTrue(b <= a)
    }
}
