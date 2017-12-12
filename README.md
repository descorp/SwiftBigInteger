![swift icon](https://png.icons8.com/?id=24465&size=96 "Icon pack by Icons8")
# BigIntegerSwift

[![Build Status](https://travis-ci.org/descorp/SwiftBigInteger.svg?branch=master)](https://travis-ci.org/descorp/SwiftBigInteger)
![Swift 3](https://img.shields.io/badge/Swift-3-blue.svg)
[![Version](https://img.shields.io/cocoapods/v/BigIntSwift.svg?style=flat)](http://cocoapods.org/pods/BigIntSwift)
[![License](https://img.shields.io/cocoapods/l/BigIntSwift.svg?style=flat)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/cocoapods/p/BigIntSwift.svg?style=flat)](http://cocoapods.org/pods/BigIntSwift)
[![codecov](https://codecov.io/gh/descorp/SwiftBigInteger/branch/master/graph/badge.svg)](https://codecov.io/gh/descorp/SwiftBigInteger)

## Description

Library provides an implementation for Big Integer with basic arithmetics and conveniences. `BigInteger` is a threadsafe immutable struct and implements `Comparable`, `Equatable`, `CustomStringConvertible` and `Hashable` protocols.

## Requirements

Project have no dependencies.

## Installation

BigIntegerSwift is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'BigIntSwift'
```

### Initialisation

From integer primitives

```swift
        let a = BigInteger(value: 1234567)
        a.sign // true
```

```swift
        let a = BigInteger(value: UInt64(12345678901234))
        a.sign // true
```

From string

```swift
        let a = BigInteger(value: "-123456789012345678901234567890")
        a.sign // false
```

### Comparison

Can be comared with other 'BigInteger' and Integer primitives

```swift
        let a = BigInteger(value: 42)
        let b = BigInteger(value: -42)        
        
        a != b          // true
        a == -b         // true
        a > b           // true
        b <= a          // true
        
        a != -42        // true
        UInt(42) == -b  // true
        a > 0           // true
        0 <= a          // true
```

### Addition

Can perform addiotion with other 'BigInteger' and Integer primitives

```swift
        let a = BigInteger(value: 42)
        let b = BigInteger(value: -42)        
        
        a + b           //  0
        b + 42          //  0
        b + UInt(42)    //  0
        a += b          //  a = 0
        b += 42         //  b = 0
        a += UInt(42)   //  a = 84
```

### Substraction

Can perform substraction with other 'BigInteger' and Integer primitives

```swift
        let a = BigInteger(value: 42)
        let b = BigInteger(value: -42)        
        
        a - b           //  84
        b - 42          // -84
        b - UInt(42)    // -84
        a -= b          //  a = 84
        a -= 42         //  a = -84 
        a -= UInt(42)   //  a = -84          
```

### Multiplication

Can perform multiplication with other 'BigInteger' and Integer primitives.

```swift
        let a = BigInteger(value: 42)
        let b = BigInteger(value: -42)        
        
        a * b           // -1764
        b * (-1)        //  42
        b * UInt(2)     //  84
        a *= b          //  a = -1764
        a *= -1         //  a = -42 
        a *= UInt(2)    //  a = 84
```

### Division

Todo

## Example

Todo
~~To run the example project, clone the repo, and run `pod install` from the Example directory first.~~

You can check tests for more examples like awesome Fibonacci 20000 calculation in ~10 sec (4179 decimals)

## Author

Vladimir Abramichev, vladimir.abramichev@mail.ru

## License

BigIntegerSwift is available under the MIT license. See the LICENSE file for more info.

## Todo

* Division
* Optimise storing of values 
