//
//  BigIntegerTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 12/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest
@testable import BigInteger

class BigIntegerTests: XCTestCase {
    
    func testInit() {
        let a = BigInteger()
        XCTAssertEqual(a.description, "0")
        XCTAssertTrue(a.positive)
        
    }
    
    func testInitWithValue() {
        let a = BigInteger(value: 5)
        XCTAssertEqual(a.description, "5")
        XCTAssertTrue(a.positive)
    }
    
    func testInitWithNegativeValue() {
        let a = BigInteger(value: -5)
        XCTAssertEqual(a.description, "-5")
        XCTAssertFalse(a.positive)
    }
    
    func testInitFromUInt64() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testInitFromString() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testCompare() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testMultiply() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testAdd() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testNegation() {
        let a = BigInteger(value: -5)
        let b = BigInteger(value: 5)
        
        XCTAssertFalse(a.positive)
        XCTAssertTrue(b.positive)
        XCTAssertFalse((-b).positive)
        XCTAssertTrue((-a).positive)
        
        XCTAssertFalse(a == b, "a != b")
        XCTAssertTrue(a == -b, "a = -b")
        XCTAssertTrue(-a == b, "-a = b")
        XCTAssertFalse(-a == -b, "-a != -b")
    }
    
}
