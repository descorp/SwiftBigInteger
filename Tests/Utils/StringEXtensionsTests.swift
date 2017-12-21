//
//  StringEXtensionsTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 19/12/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class StringEXtensionsTests: XCTestCase {
    
    func testValidationNumbers() {
        XCTAssertFalse("1234 1234".isValidNumber)
        XCTAssertFalse("0.12341234".isValidNumber)
        XCTAssertFalse(".12341234".isValidNumber)
        XCTAssertTrue("12341234".isValidNumber)
        XCTAssertFalse("-12341234".isValidNumber)
        XCTAssertTrue("0000012341234".isValidNumber)
    }
    
    func testValidationInteger() {
        XCTAssertFalse("1234 1234".isValidInteger)
        XCTAssertFalse("0.12341234".isValidInteger)
        XCTAssertFalse(".12341234".isValidInteger)
        XCTAssertTrue("12341234".isValidInteger)
        XCTAssertTrue("-12341234".isValidInteger)
        XCTAssertFalse("0000012341234".isValidInteger)
    }
    
    func testString() {
        let str = "123456789"
        let result: ContiguousArray<Int8> = [1,2,3,4,5,6,7,8,9]
        
        let actual = str.asNumericArray()
        XCTAssertNotNil(actual)
        XCTAssertEqual(actual!, result)
    }
    
    func testInvalidString() {
        let str = "123456 789"
        
        let actual = str.asNumericArray()
        XCTAssertNil(actual)
    }
    
    func testLongString() {
        var str = ""
        var result: ContiguousArray<Int8> = []
        for _ in 0...200 {
            let i = Int8(arc4random() % 10)
            str += String(i)
            result.append(i)
        }
        
        let actual = str.asNumericArray()
        XCTAssertNotNil(actual)
        XCTAssertEqual(actual!, result)
    }
}
