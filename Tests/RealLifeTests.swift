//
//  RealLifeTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 28/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class RealLifeTests: XCTestCase {

    func testChainOperations() {
        var a = BigInteger(100)
        a = a - 1
        XCTAssertEqual(a.description, "99")

        a = a + 2
        XCTAssertEqual(a.description, "101")

        a = a * 2
        XCTAssertEqual(a.description, "202")

        a = BigInteger(100000)
        a = a - 1
        XCTAssertEqual(a.description, "99999")

        a = a + 2
        XCTAssertEqual(a.description, "100001")

        a = a * 2
        XCTAssertEqual(a.description, "200002")

        a = BigInteger(100000000)
        a = a - 1
        XCTAssertEqual(a.description, "99999999")

        a = a + 2
        XCTAssertEqual(a.description, "100000001")

        a = a * 2
        XCTAssertEqual(a.description, "200000002")
    }

    func testFibonaccy10() {
        let number = 92
        let actualResult = "7540113804746346429"
        let result : Int = Int.fibonacci(of: number)

        XCTAssertEqual(String(result), actualResult)
    }

    func testFibonaccy200() {
        let number = 200
        let actualResult = "280571172992510140037611932413038677189525"
        let result = BigInteger.fibonacci(of: number)

        XCTAssertEqual(result.description, actualResult)
    }
}

extension BigInteger {
    static func fibonacci(of num: Int) -> BigInteger {

        var n = 2
        var n0 = BigInteger(1)
        var n1 = BigInteger(1)

        while n < num {
            let temp = n1
            n1 = n0 + n1
            n0 = temp
            n += 1
        }

        return n1
    }
}

var knownI = Dictionary<Int, Int>()
extension Int {
    static func fibonacci(of num: Int) -> Int { // Max recursion deep level 22749 elements
        if num < 2 {
            return num
        }

        if let value = knownI[num] {
            return value
        }

        let result = fibonacci(of: num - 1) + fibonacci(of: num - 2)
        knownI[num] = result
        return result
    }
}
