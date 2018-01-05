![swift icon](https://png.icons8.com/?id=24465&size=96 "Icon pack by Icons8")
# BigIntegerSwift

![Standart](https://img.shields.io/badge/standart-IEEE--754-brightgreen.svg)
[![Build Status](https://travis-ci.org/descorp/SwiftBigInteger.svg?branch=master)](https://travis-ci.org/descorp/SwiftBigInteger)
![Swift 3](https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat)
![Swift 4](https://img.shields.io/badge/Swift-4.0-orange.svg?style=flat)
[![Version](https://img.shields.io/cocoapods/v/BigIntSwift.svg?style=flat)](http://cocoapods.org/pods/BigIntSwift)
[![License](https://img.shields.io/cocoapods/l/BigIntSwift.svg?style=flat)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/cocoapods/p/BigIntSwift.svg?style=flat)](http://cocoapods.org/pods/BigIntSwift)
[![codecov](https://codecov.io/gh/descorp/SwiftBigInteger/branch/master/graph/badge.svg)](https://codecov.io/gh/descorp/SwiftBigInteger)

## Description

Library provides an implementation for Big Integer with basic arithmetics and conveniences. `BigInteger` is a threadsafe immutable struct and implements `Comparable`, `Equatable`, `CustomStringConvertible` and `Hashable` protocols.
Build with respect of IEEE-754 standard

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
        let a = BigInteger(1234567)
        a.sign // true

        let b = BigInteger(UInt64(12345678901234))
        b.sign // true
```

From string

```swift
        let a = BigInteger("-123456789012345678901234567890")
        a.sign // false
```

### Basic values

Shortcut for Big Integer with zero magnitude. -Zero is could be handy in case of devision of value on -infinity

```swift
        BigInteger.zero       // 0
        -BigInteger.zero      // -0
```

Shortcut for "Non Arifhmetical value". A method or operator returns `nan` when the result of an operation is undefined. For example, the result of dividing zero by zero is NaN

```swift
        BigInteger.nan       // nan
```

Shortcut for Big Integer with infinit magnitude

```swift
        BigInteger.infinit   // inf
        -BigInteger.infinit  // -inf
```

### Comparison

```swift
        let a = BigInteger(42)
        let b = BigInteger(-42)        

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

```swift
        let a = BigInteger(42)
        let b = BigInteger(-42)        

        a + b           //  0
        b + 42          //  0
        b + UInt(42)    //  0
        a += b          //  a = 0
```

### Substraction

```swift
        let a = BigInteger(42)
        let b = BigInteger(-42)        

        a - b           //  84
        b - 42          // -84
        b - UInt(42)    // -84
        a -= b          //  a = 84       
```

### Multiplication

```swift
        let a = BigInteger(42)
        let b = BigInteger(-42)        

        a * b           // -1764
        b * (-1)        //  42
        b * UInt(2)     //  84
        a *= b          //  a = -1764
```

### Division

```swift
        let a = BigInteger(145)
        let b = BigInteger(-12)        

        a / -b                  //  12
        a / 0                   //  inf
        BigInteger.zero / 0     //  nan
        b / (-1)                //  12
        b / UInt(2)             //  6
        a /= b                  //  a = -12
```

### Reminder

```swift
        let a = BigInteger(145)
        let b = BigInteger(-12)        

        a % -b          //  1
        b % (-1)        //  0
        b % UInt(2)     //  6
        a %= b          //  a = -1
```

### Power

```swift
        let a = BigInteger(-12)
        let b = BigInteger(2)        

        a ^ b           //  144
        a ^ 3           //  -1398
        a ^ -3          //  -1398 (sign ignored)
```

## Example

Todo
~~To run the example project, clone the repo, and run `pod install` from the Example directory first.~~

You can check tests for more examples like awesome Fibonacci 20000 calculation in ~10 sec (4179 decimals)

## Author

Vladimir Abramichev, vladimir.abramichev@mail.ru

## License and References

BigIntegerSwift is available under the MIT license. See the LICENSE file for more info.

Swift Image taken from <a href="https://icons8.com">Icon pack by Icons8</a>

## Todo

* Add pod usage examples
* Optimise storing of values 
