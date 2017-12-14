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
    
    func testDividezeroByzero() {
        let a = BigInteger()
        let b = BigInteger()
        
        let result = a / b
        XCTAssertEqual(result, BigInteger.nan)
        XCTAssertTrue(result.sign)
    }
    
    func testDivideByzero() {
        let a = BigInteger(value: 144)
        let b = BigInteger()
        
        let result = a / b
        XCTAssertEqual(result, BigInteger.nan)
        XCTAssertTrue(result.sign)
    }
    
    func testDividezeroByMinusOne() {
        let a = BigInteger()
        let b = BigInteger(value: -1)
        
        let result = a / b
        XCTAssertEqual(result, BigInteger.zero)
        XCTAssertTrue(result.sign)
    }
    
    func testDividezeroByOne() {
        let a = BigInteger()
        let b = BigInteger(value: 1)
        
        let result = a / b
        XCTAssertEqual(result, BigInteger.zero)
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


