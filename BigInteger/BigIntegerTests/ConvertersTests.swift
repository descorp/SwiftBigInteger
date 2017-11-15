//
//  ConvertersTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 15/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest
@testable import BigInteger

class ConvertersTests: XCTestCase {
    
    func testSplitOnDigits() {
            XCTAssertEqual(splitOnDigits(123456789), [1,2,3,4,5,6,7,8,9])
    }
    
    func testSplitOnDigitsNegative() {
            XCTAssertEqual(splitOnDigits(-123456789), [1,2,3,4,5,6,7,8,9])
    }
    
    func testSplitOnDigitsLong() {
            XCTAssertEqual(splitOnDigits(UInt64.init(1234567890987654.0)), [1,2,3,4,5,6,7,8,9,0,9,8,7,6,5,4])
    }
    
    func testConvertFrom() {
            XCTAssertEqual(convertFrom("123456789"), [1,2,3,4,5,6,7,8,9])
    }
    
    func testConvertFromLong() {
        var str = ""
        var result: [Int8] = []
        for _ in 0...200 {
            let i = Int8(arc4random() % 10)
            str += String(i)
            result.append(i)
        }
        
        XCTAssertEqual(convertFrom(str), result)
    }
}
