//
//  BigIntegerAdditionTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 15/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest
@testable import BigInteger

class BigIntegerAdditionTests: XCTestCase {

    func testPostfixAdd() {
        var a = BigInteger.zero
        let b = BigInteger.zero

        a += b
        XCTAssertEqual(a, BigInteger.zero)
        XCTAssertTrue(a.sign)
    }

    func testAddZeroAndZero() {
        let a = BigInteger.zero
        let b = BigInteger.zero

        let result = a + b
        XCTAssertEqual(result, BigInteger.zero)
        XCTAssertTrue(result.sign)
    }

    func testAddZeroAndOne() {
        let a = BigInteger.zero
        let b = BigInteger(1)

        let result = a + b
        XCTAssertEqual(result, BigInteger(1))
        XCTAssertTrue(result.sign)
    }

    func testAddZeroAndMinusOne() {
        let a = BigInteger(0)
        let b = BigInteger(-1)

        let result = a + b
        XCTAssertEqual(result, BigInteger(-1))
        XCTAssertFalse(result.sign)
    }

    func testAdd() {
        let a = BigInteger(12345)
        let b = BigInteger(12345)

        let result = a + b
        XCTAssertEqual(result, BigInteger(24690))
        XCTAssertTrue(result.sign)
    }

    func testAddNegatives() {
        let a = BigInteger(-12345)
        let b = BigInteger(-12345)

        let result = a + b
        XCTAssertEqual(result, BigInteger(-24690))
        XCTAssertFalse(result.sign)
    }

    func testAddOposite() {
        let a = BigInteger(12345)
        let b = BigInteger(-12345)

        let result = a + b
        XCTAssertEqual(result, BigInteger.zero)
        XCTAssertTrue(result.sign)
    }
    
    func testBigIntegerContainersAdd() {
        let a: ContiguousArray<Int8> = [3,2,1]
        let b: ContiguousArray<Int8> = [3,2,1]
        
        let result = BigInteger.add(a, b)
        XCTAssertEqual(result, [6,4,2])
    }
    
    func testBigIntegerContainersAddWithRightEmpty() {
        let a: ContiguousArray<Int8> = [3,2,1]
        let b: ContiguousArray<Int8> = []
        
        let result = BigInteger.add(a, b)
        XCTAssertEqual(result, [3,2,1])
    }
    
    func testBigIntegerContainersAddWithLeftEmpty() {
        let a: ContiguousArray<Int8> = []
        let b: ContiguousArray<Int8> = [3,2,1]
        
        let result = BigInteger.add(a, b)
        XCTAssertEqual(result, [3,2,1])
    }
}
