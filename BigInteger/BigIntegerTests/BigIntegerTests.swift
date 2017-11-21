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
        XCTAssertTrue(a.sign)
    }
    
    func testInitWithValue() {
        let a = BigInteger(value: 5)
        XCTAssertEqual(a.description, "5")
        XCTAssertTrue(a.sign)
    }
    
    func testInitWithNegativeValue() {
        let a = BigInteger(value: -1234567)
        XCTAssertEqual(a.description, "-1234567")
        XCTAssertFalse(a.sign)
    }
    
    func testInitWithPositiveString() {
        let str = "-123456789012345678901234567890"
        let a = BigInteger(value: str)
        XCTAssertNotNil(a)
        XCTAssertEqual(a!.description, str)
        XCTAssertFalse(a!.sign)
    }
    
    func testInitWithNegativeString() {
        let str = "-123456789012345678901234567890"
        let a = BigInteger(value: str)
        XCTAssertNotNil(a)
        XCTAssertEqual(a!.description, str)
        XCTAssertFalse(a!.sign)
    }
    
    func testInitWithInvalidString() {
        let str = "0.123456789012345678901234567890"
        let a = BigInteger(value: str)
        XCTAssertNil(a)
    }
    
    func testInitWithLongString() {
        var str = ""
        var result: [Int8] = []
        for _ in 0...200 {
            let i = Int8(arc4random() % 10)
            str += String(i)
            result.append(i)
        }
        let a = BigInteger(value: str)
        
        XCTAssertNotNil(a)
        XCTAssertEqual(a!.description, result.toString())
    }
    
    func testInitWithLongNegativeString() {
        var str = "-"
        var result: [Int8] = []
        for _ in 0...200 {
            let i = Int8(arc4random() % 10)
            str += String(i)
            result.append(i)
        }
        let a = BigInteger(value: str)
        
        XCTAssertNotNil(a)
        XCTAssertEqual(a?.description, result.toString(prefix: "-"))
    }
}

extension Array where Element: BinaryInteger {
    
    /// Agregates all elements of Integer-based array into one string
    /// - Parameter prefix: string sequence that will be placed before actual content of the array
    /// - Returns: A string that agregates whole array into one string
    func toString(prefix: String = "") -> String {
        return self.reduce(prefix) { (current, next) in current + String(describing: next)}
    }
}
