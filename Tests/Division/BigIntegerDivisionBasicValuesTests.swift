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
        let zero = BigInteger.zero
        let someBigInt = BigInteger(value: 10)
        
        XCTAssertEqual(zero / someBigInt, BigInteger.zero)
        XCTAssertTrue((someBigInt / zero).isNaN)
        XCTAssertEqual(zero / 10, BigInteger.zero)
        XCTAssertTrue((10 / zero).isNaN)
    }
    
    func testNan() {
        let nan = BigInteger.nan
        let someBigInt = BigInteger(value: 10)
        
        XCTAssertTrue((nan / someBigInt).isNaN)
        XCTAssertTrue((someBigInt / nan).isNaN)
        XCTAssertTrue((nan / 10).isNaN)
        XCTAssertTrue((10 / nan).isNaN)
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
