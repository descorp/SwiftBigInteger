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
            XCTAssertEqual(123456789.asNumericArray(), [9,8,7,6,5,4,3,2,1])
    }
    
    func testSplitOnDigitsLong() {
            XCTAssertEqual((-1234567890987654).asNumericArray(), [4,5,6,7,8,9,0,9,8,7,6,5,4,3,2,1])
    }
    
    func testArrayTrim() {
        XCTAssertEqual(ContiguousArray<Int8>([1,2,3]).trimZeros(), [1,2,3])
        XCTAssertEqual(ContiguousArray<Int8>([1,2,3,0,0,0]).trimZeros(), [1,2,3])
    }
}
