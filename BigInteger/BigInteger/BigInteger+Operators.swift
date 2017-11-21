//
//  BigInteger+Operators.swift
//  BigInteger
//
//  Created by Vladimir Abramichev on 12/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import Foundation

extension BigInteger {
    
    // MARK: addition
    static func +(lhs: BigInteger, rhs: BigInteger) -> BigInteger {
        switch (lhs.sign, rhs.sign) {
        case let (a, b) where a == b:
            return BigInteger.add(lhs, rhs)
        default:
            return lhs.sign ? BigInteger.subtract(lhs, rhs) : BigInteger.subtract(rhs, lhs)
        }
    }
    
    static func +(lhs: BigInteger, rhs: Int) -> BigInteger {
        return lhs + BigInteger(value: rhs)
    }
    
    static func +(lhs: Int, rhs: BigInteger) -> BigInteger {
        return rhs + BigInteger(value: lhs)
    }
    
    static func +=(lhs: inout BigInteger, rhs: BigInteger) {
        lhs = lhs + rhs
    }
    
    static func +=(lhs: inout BigInteger, rhs: Int) {
        lhs = lhs + BigInteger(value: rhs)
    }
    
    static internal func add(_ lhs: BigInteger, _ rhs: BigInteger) -> BigInteger {
        var biggest, smallest : [Int8]
        if lhs.array.count > rhs.array.count {
            biggest = lhs.array
            smallest = rhs.array
        } else {
            biggest = rhs.array
            smallest = lhs.array
        }
        
        var i = 0
        while i < smallest.count {
            let value = biggest[i] + smallest[i]
            biggest[i] =  value % 10
            
            if value / 10 > 0 {
                if biggest.count > i + 1 {
                    biggest[i + 1] += 1
                } else {
                    biggest.append(1)
                }
            }
            i += 1
        }
        
        return BigInteger(raw: biggest, sign: lhs.sign)
    }
}

extension BigInteger {
    
    // MARK: subtraction
    static func -(lhs: BigInteger, rhs: BigInteger) -> BigInteger {
        switch (lhs.sign, rhs.sign) {
        case let (a, b) where a == b:
            return BigInteger.subtract(lhs, rhs)
        default:
            return BigInteger.add(lhs, rhs)
        }
    }
    
    static func -(lhs: BigInteger, rhs: Int) -> BigInteger {
        return lhs - BigInteger(value: rhs)
    }
    
    static func -(lhs: Int, rhs: BigInteger) -> BigInteger {
        return BigInteger(value: lhs) - rhs
    }
    
    static func -=(lhs: inout BigInteger, rhs: BigInteger) {
        lhs = lhs - rhs
    }
    
    static func -=(lhs: inout BigInteger, rhs: Int) {
        lhs = lhs - BigInteger(value: rhs)
    }
    
    static internal func subtract(_ lhs: BigInteger, _ rhs: BigInteger) -> BigInteger {
        var biggest, smallest : [Int8]
        var sign: Bool

        let compare = Array.compare(lhs.array, rhs.array)
        if compare > 0 {
            biggest = lhs.array
            smallest = rhs.array
            sign = lhs.sign
        } else if compare < 0 {
            biggest = rhs.array
            smallest = lhs.array
            sign = !rhs.sign
        } else {
            return BigInteger()
        }
        
        var i = 0
        while i < smallest.count {
            let value = Int(biggest[i]) - Int(smallest[i])
            if value < 0 {
                var n = i + 1
                while biggest[n] == 0 {
                    biggest[n] = 9
                    n += 1
                }
                
                biggest[n] -= 1
            } else {
                biggest[i] = Int8(abs(value))
            }
            
            i += 1
        }
        
        return BigInteger(raw: biggest, sign: sign)
    }
}

extension BigInteger {
    
    // MARK: multiplication
    static func *(lhs: BigInteger, rhs: BigInteger) -> BigInteger {
        return BigInteger.init()
    }
    
    static func *(lhs: BigInteger, rhs: Int) -> BigInteger {
        return BigInteger.init()
    }
    
    static func *(lhs: Int, rhs: BigInteger) -> BigInteger {
        return BigInteger.init()
    }
    
    static func *=(lhs: inout BigInteger, rhs: BigInteger) {
        
    }
    
    static func *=(lhs: inout BigInteger, rhs: Int) {
        
    }
}

extension BigInteger {
    
    // MARK: division
    static func /(lhs: BigInteger, rhs: BigInteger) -> BigInteger {
        return BigInteger.init()
    }
    
    static func /(lhs: BigInteger, rhs: Int) -> BigInteger {
        return BigInteger.init()
    }
    
    static func /(lhs: Int, rhs: BigInteger) -> BigInteger {
        return BigInteger.init()
    }
    
    static func /=(lhs: inout BigInteger, rhs: BigInteger) {
        
    }
    
    static func /=(lhs: inout BigInteger, rhs: Int) {
        
    }
}

extension BigInteger {
    
    // MARK: negation
    static prefix func -(item: BigInteger) -> BigInteger {
        var result = item
        result.sign = !result.sign
        return result
    }
    
    // MARK: power
    static func ^(lhs: BigInteger, rhs: Int) -> BigInteger {
        if(rhs == 0) { return BigInteger(value: 1) }
        if(rhs == 1) { return lhs }
        
        var temp = lhs
        for _ in 1...rhs {
            temp *= lhs
        }
        
        return temp
    }
}
