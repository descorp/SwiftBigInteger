//
//  BigIntegerDivisionUInt64Tests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 13/12/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerDivisionIUInt64Tests: XCTestCase {
    
    
    func testPostfixDivision() {
        var a = BigInteger(value: 144)
        let b: UInt64 = 12
        
        a /= b
        XCTAssertEqual(a, BigInteger(value: 12))
        XCTAssertTrue(a.sign)
    }
    
    func testDividezeroByzero() {
        let a = BigInteger()
        let b: UInt64 = 0
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertTrue(result1.isNaN)
        XCTAssertTrue(result2.isNaN)
    }
    
    func testDivideByzero() {
        let a = BigInteger(value: 144)
        let b: UInt64 = 0
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertTrue(result1.isInfinit)
        XCTAssertEqual(result2, BigInteger.zero)
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testDividezeroByOne() {
        let a = BigInteger()
        let b: UInt64 = 1
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger.zero)
        XCTAssertTrue(result2.isInfinit)
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testDivideOposite() {
        let a = BigInteger(value: -12)
        let b: UInt64 = 12
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger(value: -1))
        XCTAssertEqual(result2, BigInteger(value: -1))
        XCTAssertFalse(result1.sign)
        XCTAssertFalse(result2.sign)
    }
    
    func testDivideEquil() {
        let a = BigInteger(value: 12)
        let b: UInt64 = 12
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger(value: 1))
        XCTAssertEqual(result2, BigInteger(value: 1))
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testDivideByBiggerNondivider() {
        let a = BigInteger(value: 145)
        let b: UInt64 = 12
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger(value: 12))
        XCTAssertEqual(result2, BigInteger.zero)
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testDivideBisBiggerThanA() {
        let a = BigInteger(value: 12)
        let b: UInt64 = 144
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger.zero)
        XCTAssertEqual(result2, BigInteger(value: 12))
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testDivideBisBiggerThanNegativeA() {
        let a = BigInteger(value: -12)
        let b: UInt64 = 144
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger.zero)
        XCTAssertEqual(result2, BigInteger(value: -12))
        XCTAssertTrue(result1.sign)
        XCTAssertFalse(result2.sign)
    }
}
