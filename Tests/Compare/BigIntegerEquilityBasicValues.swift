//
//  BigIntegerEquilityBasicValues.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 14/12/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerEquilityBasicValues: XCTestCase {
    
    func testZero() {
        let zero = BigInteger.zero
        let someBigInt = BigInteger(value: 10)
        
        XCTAssertTrue(zero == BigInteger())
        XCTAssertTrue(zero == BigInteger(value: 0))
        XCTAssertTrue(zero == 0)
        XCTAssertTrue(zero.sign)
        
        XCTAssertTrue(zero != someBigInt)
        XCTAssertTrue(zero != 10)
    }
    
    func testNan() {
        let nan = BigInteger.nan
        let someBigInt = BigInteger(value: 10)
        
        XCTAssertFalse(nan == nan)
        XCTAssertFalse(nan == -nan)
        XCTAssertFalse(-nan == nan)
        XCTAssertTrue(nan != nan)
        XCTAssertTrue(nan != -nan)
        XCTAssertTrue(-nan != nan)
        
        XCTAssertFalse(nan == someBigInt)
        XCTAssertFalse(nan != someBigInt)
        XCTAssertFalse(someBigInt == nan)
        XCTAssertFalse(someBigInt != nan)
        
        XCTAssertFalse(nan == 10)
        XCTAssertFalse(10 == nan)
        XCTAssertFalse(nan != 10)
        XCTAssertFalse(10 != nan)
        
        XCTAssertTrue(nan.isNaN)
        XCTAssertFalse(someBigInt.isNaN)
    }
    
    func testInfinity() {
        let inf = BigInteger.infinit
        let someBigInt = BigInteger(value: 10)
        let negativeInf = -BigInteger.infinit
        
        XCTAssertTrue(inf == inf)
        XCTAssertTrue(negativeInf == negativeInf)
        
        XCTAssertFalse(inf != inf)
        XCTAssertFalse(negativeInf != negativeInf)
        
        XCTAssertTrue(inf != negativeInf)
        XCTAssertTrue(negativeInf != inf)
        
        XCTAssertFalse(inf == someBigInt)
        XCTAssertFalse(someBigInt == inf)
        XCTAssertFalse(inf == 10)
        XCTAssertFalse(10 == inf)
    }
}
