//
//  BigIntegerDivisionBasicValuesTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 14/12/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerDivisionBasicValuesTests: XCTestCase {
    
    func testZero() {
        let a = BigInteger.zero
        let b = BigInteger(value: 10)
        
        XCTAssertEqual(a / b, BigInteger.zero)
        XCTAssertTrue((b / a).isNaN)
        XCTAssertEqual(a / 10, BigInteger.zero)
        XCTAssertTrue((10 / a).isNaN)
    }
    
    func testNan() {
        let a = BigInteger.nan
        let b = BigInteger(value: 10)
        
        XCTAssertTrue((a / b).isNaN)
        XCTAssertTrue((b / a).isNaN)
        XCTAssertTrue((a / 10).isNaN)
        XCTAssertTrue((10 / a).isNaN)
    }
    
    func testInfinity() {
        let inf = BigInteger.infinit
        let someBigInt = BigInteger(value: 10)
        
        XCTAssertTrue((inf / someBigInt).isInfinit)
        XCTAssertEqual(someBigInt / inf, BigInteger.zero)
        XCTAssertTrue((inf / 10).isInfinit)
        XCTAssertEqual(10 / inf, BigInteger.zero)
        XCTAssertTrue((BigInteger.infinit / inf).isNaN)
        
        XCTAssertTrue((inf / 0).sign)
        XCTAssertTrue((inf / 0).isInfinit)
        XCTAssertFalse((-inf / 0).sign)
        XCTAssertTrue((-inf / 0).isInfinit)
    }
}
