//
//  BigIntegerDivisionTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 15/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerDivisionITests: XCTestCase {
    
    func testPostfixSubstraction() {
        var a = BigInteger(value: 144)
        let b = BigInteger(value: 12)
        
        a /= b
        XCTAssertEqual(a, BigInteger(value: 12))
        XCTAssertTrue(a.sign)
    }
    
    func testDivideZeroByZero() {
        let a = BigInteger()
        let b = BigInteger()
        
        let result = a / b
        XCTAssertEqual(result, BigInteger.NaN)
        XCTAssertTrue(result.sign)
    }
    
    func testDivideByZero() {
        let a = BigInteger(value: 144)
        let b = BigInteger()
        
        let result = a / b
        XCTAssertEqual(result, BigInteger.NaN)
        XCTAssertTrue(result.sign)
    }
    
    func testDivideZeroByMinusOne() {
        let a = BigInteger()
        let b = BigInteger(value: -1)
        
        let result = a / b
        XCTAssertEqual(result, BigInteger.Zero)
        XCTAssertTrue(result.sign)
    }
    
    func testDivideZeroByOne() {
        let a = BigInteger()
        let b = BigInteger(value: 1)
        
        let result = a / b
        XCTAssertEqual(result, BigInteger.Zero)
        XCTAssertFalse(result.sign)
    }
    
    func testDivideOposite() {
        let a = BigInteger(value: 12)
        let b = BigInteger(value: -12)
        
        let result = a / b
        XCTAssertEqual(result, BigInteger(value: -1))
        XCTAssertFalse(result.sign)
    }
    
    func testDivideEquilNegatives() {
        let a = BigInteger(value: -12)
        let b = BigInteger(value: -12)
        
        let result = a / b
        XCTAssertEqual(result, BigInteger(value: 1))
        XCTAssertTrue(result.sign)
    }
    
    func testDivideEquil() {
        let a = BigInteger(value: 12)
        let b = BigInteger(value: 12)
        
        let result = a / b
        XCTAssertEqual(result, BigInteger(value: 1))
        XCTAssertTrue(result.sign)
    }
    
    func testDivideByBiggerNondivider() {
        let a = BigInteger(value: 145)
        let b = BigInteger(value: 12)
        
        let result = a / b
        XCTAssertEqual(result, BigInteger(value: 12))
        XCTAssertTrue(result.sign)
    }
    
    func testDivideBisBiggerThanA() {
        let a = BigInteger(value: 12)
        let b = BigInteger(value: 144)
        
        let result = a / b
        XCTAssertEqual(result, BigInteger(value: 0))
        XCTAssertTrue(result.sign)
    }
    
    func testDivideBisBiggerThanNegativeA() {
        let a = BigInteger(value: -12)
        let b = BigInteger(value: 144)
        
        let result = a / b
        XCTAssertEqual(result, BigInteger(value: 0))
        XCTAssertTrue(result.sign)
    }
}


