//
//  RealLifeTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 28/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class RealLifeTests: XCTestCase {
    
    func testchainOperations() {
        var a = BigInteger(value: 100)
        a = a - 1
        XCTAssertEqual(a.description, "99")
        
        a = a + 2
        XCTAssertEqual(a.description, "101")
        
        a = a * 2
        XCTAssertEqual(a.description, "202")
    }
    
    func testFibonaccy10() {
        let number = 92
        let actualResult = "7540113804746346429"
        let result = fibonacci(of: number)
        
        XCTAssertEqual(String(result), actualResult)
    }
    
    func testFibonaccy200() {
        let number = BigInteger(value: 200)
        let actualResult = "280571172992510140037611932413038677189525"
        let result = fibonacci(of: number)
        
        XCTAssertEqual(result.description, actualResult)
    }
    
    func testFibonaccy2000() {
        let number = BigInteger(value: 2000)
        let actualResult = "4224696333392304878706725602341482782579852840250681098010280137314308584370130707224123599639141511088446087538909603607640194711643596029271983312598737326253555802606991585915229492453904998722256795316982874482472992263901833716778060607011615497886719879858311468870876264597369086722884023654422295243347964480139515349562972087652656069529806499841977448720155612802665404554171717881930324025204312082516817125"
        let result = fibonacci(of: number)
        
        XCTAssertEqual(result.description, actualResult)
    }
}

var known = Dictionary<BigInteger, BigInteger>()
var knownI = Dictionary<Int, Int>()

func fibonacci(of num: BigInteger) -> BigInteger {
    if num < 2 {
        return num
    }
    
    if let value = known[num] {
        return value
    }
    
    let result = fibonacci(of: num - 1) + fibonacci(of: num - 2)
    known[num] = result
    return result
}

func fibonacci(of num: Int) -> Int {
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
