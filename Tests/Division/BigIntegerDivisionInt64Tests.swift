//
//  BigIntegerDivisionInt64Tests.swift
//  BigInteger
//
//  Created by Vladimir Abramichev on 13/12/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerDivisionIInt64Tests: XCTestCase {
    
    func testPostfixSubstraction() {
        var a = BigInteger(value: 144)
        let b: Int64 = 12
        
        a /= b
        XCTAssertEqual(a, BigInteger(value: 12))
        XCTAssertTrue(a.sign)
    }
    
    func testDivideZeroByZero() {
        let a = BigInteger()
        let b: Int64 = 0
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger.NaN)
        XCTAssertEqual(result2, BigInteger.NaN)
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testDivideByZero() {
        let a = BigInteger(value: 144)
        let b: Int64 = 0
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger.NaN)
        XCTAssertEqual(result2, BigInteger.Zero)
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testDivideZeroByMinusOne() {
        let a = BigInteger()
        let b: Int64 = -1
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger.Zero)
        XCTAssertEqual(result2, BigInteger.NaN)
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testDivideZeroByOne() {
        let a = BigInteger()
        let b: Int64 = 1
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger.Zero)
        XCTAssertEqual(result2, BigInteger.NaN)
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testDivideOposite() {
        let a = BigInteger(value: 12)
        let b: Int64 = -12
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger(value: -1))
        XCTAssertEqual(result2, BigInteger(value: -1))
        XCTAssertFalse(result1.sign)
        XCTAssertFalse(result2.sign)
    }
    
    func testDivideEquilNegatives() {
        let a = BigInteger(value: -12)
        let b: Int64 = -12
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger(value: 1))
        XCTAssertEqual(result2, BigInteger(value: 1))
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testDivideEquil() {
        let a = BigInteger(value: 12)
        let b: Int64 = 12
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger(value: 1))
        XCTAssertEqual(result2, BigInteger(value: 1))
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testDivideByBiggerNondivider() {
        let a = BigInteger(value: 145)
        let b: Int64 = 12
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger(value: 12))
        XCTAssertEqual(result2, BigInteger.Zero)
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testDivideBisBiggerThanA() {
        let a = BigInteger(value: 12)
        let b: Int64 = 144
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger.Zero)
        XCTAssertEqual(result2, BigInteger(value: 12))
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testDivideBisBiggerThanNegativeA() {
        let a = BigInteger(value: -12)
        let b: Int64 = 144
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger.Zero)
        XCTAssertEqual(result2, BigInteger(value: -12))
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
}

