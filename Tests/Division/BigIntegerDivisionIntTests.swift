//
//  BigIntegerDivisionIntTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 28/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest


class BigIntegerDivisionIntTests: XCTestCase {
    
    func testPostfixDivision() {
        var a = BigInteger(value: 144)
        let b = 12
        
        a /= b
        XCTAssertEqual(a, BigInteger(value: 12))
        XCTAssertTrue(a.sign)
    }
    
    func testDividezeroByzero() {
        let a = BigInteger()
        let b = 0
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertTrue(result1.isNaN)
        XCTAssertTrue(result2.isNaN)
    }
    
    func testDivideByzero() {
        let a = BigInteger(value: 144)
        let b = 0
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger.infinit)
        XCTAssertEqual(result2, BigInteger.zero)
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testDividezeroByMinusOne() {
        let a = BigInteger()
        let b = -1
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger.zero)
        XCTAssertEqual(result2, -BigInteger.infinit)
        XCTAssertTrue(result1.sign)
        XCTAssertFalse(result2.sign)
    }
    
    func testDividezeroByOne() {
        let a = BigInteger()
        let b = 1
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger.zero)
        XCTAssertEqual(result2, BigInteger.infinit)
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testDivideOposite() {
        let a = BigInteger(value: 12)
        let b = -12
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger(value: -1))
        XCTAssertEqual(result2, BigInteger(value: -1))
        XCTAssertFalse(result1.sign)
        XCTAssertFalse(result2.sign)
    }
    
    func testDivideEquilNegatives() {
        let a = BigInteger(value: -12)
        let b = -12
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger(value: 1))
        XCTAssertEqual(result2, BigInteger(value: 1))
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testDivideEquil() {
        let a = BigInteger(value: 12)
        let b = 12
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger(value: 1))
        XCTAssertEqual(result2, BigInteger(value: 1))
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testDivideByBiggerNondivider() {
        let a = BigInteger(value: 145)
        let b = 12
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger(value: 12))
        XCTAssertEqual(result2, BigInteger.zero)
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testDivideBisBiggerThanA() {
        let a = BigInteger(value: 12)
        let b = 144
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger.zero)
        XCTAssertEqual(result2, BigInteger(value: 12))
        XCTAssertTrue(result1.sign)
        XCTAssertTrue(result2.sign)
    }
    
    func testDivideBisBiggerThanNegativeA() {
        let a = BigInteger(value: -12)
        let b = 144
        
        let result1 = a / b
        let result2 = b / a
        XCTAssertEqual(result1, BigInteger.zero)
        XCTAssertEqual(result2, BigInteger(value: -12))
        XCTAssertTrue(result1.sign)
        XCTAssertFalse(result2.sign)
    }
}
