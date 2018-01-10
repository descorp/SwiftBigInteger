//
//  BigIntegerBasicValuesDescriptionTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 14/12/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest
@testable import BigInteger

class BigIntegerBasicValuesDescriptionTests: XCTestCase {
    
    func testZeroDescription() {
        let a = BigInteger.zero
        
        XCTAssertEqual(a.description, "0")
    }
    
    func testNanDescription() {
        let a = BigInteger.nan
        
        XCTAssertEqual(a.description, "nan")
    }
    
    func testInfinitDescription() {
        let a = BigInteger.infinit
        
        XCTAssertEqual(a.description, "inf")
    }
    
    func testNegativeInfinitDescription() {
        let a = -BigInteger.infinit
        
        XCTAssertEqual(a.description, "-inf")
    }
}
