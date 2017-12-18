//
//  BigIntegerEquility.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 13/12/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerEquilityTests: XCTestCase {
    
    func testEquility() {
        let b = BigInteger(value: -42)
        let a = BigInteger(value: 42)
        
        XCTAssertTrue(a != b)
        XCTAssertTrue(b != a)
        XCTAssertTrue(a == -b)
        XCTAssertTrue(b == -a)
        XCTAssertTrue(-b == a)
        XCTAssertTrue(-a == b)
        XCTAssertTrue(a == a)
        XCTAssertTrue(b == b)
    }
}
