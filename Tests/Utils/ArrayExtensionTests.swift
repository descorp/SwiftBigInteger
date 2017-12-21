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
        let a: ContiguousArray<Int8> = [1,2,3,4,5]
        let b: ContiguousArray<Int8> = [1,2,3]
        
        XCTAssertEqual(ContiguousArray.compare(a, b), 1)
        XCTAssertEqual(ContiguousArray.compare(b, a), -1)
    }
    
    func testEquil() {
        let a: ContiguousArray<Int8> = [1,2,3,4,5]
        let b: ContiguousArray<Int8> = [1,2,3,4,5]
        
        XCTAssertEqual(ContiguousArray.compare(a, b), 0)
        XCTAssertEqual(ContiguousArray.compare(b, a), 0)
    }
    
    func testEquilLenght() {
        let a: ContiguousArray<Int8> = [1,2,4,4,5]
        let b: ContiguousArray<Int8> = [1,2,3,4,5]
        
        XCTAssertEqual(ContiguousArray.compare(a, b), 1)
        XCTAssertEqual(ContiguousArray.compare(b, a), -1)
    }
    
    func testEquilLenght2() {
        let a: ContiguousArray<Int8> = [0]
        let b: ContiguousArray<Int8> = [1]
        
        XCTAssertEqual(ContiguousArray.compare(a, b), -1)
        XCTAssertEqual(ContiguousArray.compare(b, a), 1)
    }
}
