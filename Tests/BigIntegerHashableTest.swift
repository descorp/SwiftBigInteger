//
//  BigIntegerHashableTest.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 13/12/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest
@testable import BigInteger

class BigIntegerHashableTest: XCTestCase {

    func testBigIntegerStoredInSet() {
        let a = NSCountedSet()

        for i in 0...100000 {
            a.add(BigInteger(i))
        }

        XCTAssertTrue(a.reduce(true, { (current, next) -> Bool in
            current && a.count(for: next) == 1
        }))

        XCTAssertTrue(a.count(for: BigInteger(2001)) == 1)
        XCTAssertTrue(a.count(for: BigInteger(100002)) == 0)
    }

}
