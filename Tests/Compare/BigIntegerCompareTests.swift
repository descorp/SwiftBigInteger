//
//  BigIntegerCompareTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 15/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerCompareTests: XCTestCase {
    
    func testEquility() {
        let b = BigInteger(value: -42)
        let a = BigInteger(value: 42)
        
        XCTAssertTrue(a != b)
        XCTAssertTrue(b != a)
        XCTAssertTrue(a == -b)
        XCTAssertTrue(b == -a)
        XCTAssertTrue(a == a)
        XCTAssertTrue(b == b)
    }
        
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
        
        func testNegation() {
            let a = BigInteger(value: -5)
            let b = BigInteger(value: 5)
            
            XCTAssertFalse(a.sign)
            XCTAssertTrue(b.sign)
            XCTAssertFalse((-b).sign)
            XCTAssertTrue((-a).sign)
            
            XCTAssertFalse(a == b, "a != b")
            XCTAssertTrue(a == -b, "a = -b")
            XCTAssertTrue(-a == b, "-a = b")
            XCTAssertFalse(-a == -b, "-a != -b")
        }
}
