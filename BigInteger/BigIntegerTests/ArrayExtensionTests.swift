//
//  ArrayExtensionTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 21/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class ArrayExtensionTests: XCTestCase {
    func testDifferentLenght() {
        let a = [1,2,3,4,5]
        let b = [1,2,3]
        
        XCTAssertEqual(Array.compare(lhs: a, rhs: b), 1)
        XCTAssertEqual(Array.compare(lhs: b, rhs: a), -1)
    }
    
    func testEquil() {
        let a = [1,2,3,4,5]
        let b = [1,2,3,4,5]
        
        XCTAssertEqual(Array.compare(lhs: a, rhs: b), 0)
        XCTAssertEqual(Array.compare(lhs: b, rhs: a), 0)
    }
    
    func testEquilLenght() {
        let a = [1,2,4,4,5]
        let b = [1,2,3,4,5]
        
        XCTAssertEqual(Array.compare(lhs: a, rhs: b), 1)
        XCTAssertEqual(Array.compare(lhs: b, rhs: a), -1)
    }
    
    func testEquilLenght2() {
        let a = [0]
        let b = [1]
        
        XCTAssertEqual(Array.compare(lhs: a, rhs: b), -1)
        XCTAssertEqual(Array.compare(lhs: b, rhs: a), 1)
    }
}
