//
//  BigIntegerCompareBasicValues.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 14/12/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class BigIntegerCompareBasicValuesTests : XCTestCase {

    func testZero() {
        let zero = BigInteger.zero
        let someBigInt = BigInteger(10)

        XCTAssertTrue(zero < someBigInt)
        XCTAssertTrue(someBigInt > zero)
        XCTAssertTrue(zero > -someBigInt)
        XCTAssertTrue(-someBigInt < zero)

        XCTAssertTrue(zero < 10)
        XCTAssertTrue(10 > zero)
        XCTAssertTrue(zero > -10)
        XCTAssertTrue(-10 < zero)
        XCTAssertTrue(zero == 0)
    }

    func testNan() {
        let nan = BigInteger.nan
        let someBigInt = BigInteger(10)

        XCTAssertFalse(nan < someBigInt)
        XCTAssertFalse(someBigInt > nan)
        XCTAssertFalse(nan > -someBigInt)
        XCTAssertFalse(-someBigInt < nan)
        XCTAssertFalse(-nan < someBigInt)
        XCTAssertFalse(someBigInt > -nan)
        XCTAssertFalse(-nan > -someBigInt)
        XCTAssertFalse(-someBigInt < -nan)

        XCTAssertFalse(nan < 10)
        XCTAssertFalse(10 > nan)
        XCTAssertFalse(nan > -10)
        XCTAssertFalse(-10 < nan)
        XCTAssertFalse(-nan < 10)
        XCTAssertFalse(10 > -nan)
        XCTAssertFalse(nan > -10)
        XCTAssertFalse(-10 < -nan)
        
        XCTAssertFalse(nan > nan)
        XCTAssertFalse(nan < nan)
        XCTAssertFalse(nan >= nan)
        XCTAssertFalse(nan <= nan)
    }

    func testInfinity() {
        let inf = BigInteger.infinit
        let someBigInt = BigInteger(10)
        let negativeInf = -BigInteger.infinit

        XCTAssertTrue(inf > someBigInt)
        XCTAssertTrue(someBigInt < inf)
        XCTAssertTrue(inf > -someBigInt)
        XCTAssertTrue(-someBigInt < inf)

        XCTAssertTrue(inf > 10)
        XCTAssertTrue(10 < inf)
        XCTAssertTrue(inf > -10)
        XCTAssertTrue(-10 < inf)

        XCTAssertTrue(negativeInf < someBigInt)
        XCTAssertTrue(someBigInt > negativeInf)
        XCTAssertTrue(negativeInf < -someBigInt)
        XCTAssertTrue(-someBigInt > negativeInf)
        
        XCTAssertTrue(negativeInf <= someBigInt)
        XCTAssertTrue(someBigInt >= negativeInf)
        XCTAssertTrue(negativeInf <= -someBigInt)
        XCTAssertTrue(-someBigInt >= negativeInf)

        XCTAssertFalse(inf > inf)
        XCTAssertFalse(inf < inf)
        XCTAssertTrue(inf >= inf)
        XCTAssertTrue(inf <= inf)

        XCTAssertFalse(negativeInf > negativeInf)
        XCTAssertFalse(negativeInf < negativeInf)
        XCTAssertTrue(negativeInf >= negativeInf)
        XCTAssertTrue(negativeInf <= negativeInf)
        
        XCTAssertTrue(inf > negativeInf)
        XCTAssertTrue(negativeInf < inf)
    }
}
