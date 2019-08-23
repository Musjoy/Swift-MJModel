# MJModel

MJModel is a framework which allows you to easily convert model to json string or json string to model.

MJModel supports class and struct, and no need to inherit from NSObject. By replacing KVC in NSObject, it directly operate memory to get or set values. And it use Mirror in Swift to get all properties in model.

MJModel is defined as a protocol, so you can use it simply just like protocol. Only one extension of the existed model can do the trick. 

[![CI Status](https://img.shields.io/travis/Musjoy/Swift-MJModel.svg?style=flat)](https://travis-ci.org/Musjoy/Swift-MJModel)
[![codecov](https://codecov.io/gh/Musjoy/Swift-MJModel/branch/master/graph/badge.svg)](https://codecov.io/gh/Musjoy/Swift-MJModel)
[![Version](https://img.shields.io/cocoapods/v/MJModel.svg?style=flat)](https://cocoapods.org/pods/MJModel)
[![License](https://img.shields.io/cocoapods/l/MJModel.svg?style=flat)](https://cocoapods.org/pods/MJModel)
[![Platform](https://img.shields.io/cocoapods/p/MJModel.svg?style=flat)](https://cocoapods.org/pods/MJModel)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Gitter](https://badges.gitter.im/Musjoy/DBModel.svg)](https://gitter.im/Musjoy/DBModel?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

## Requirements

- iOS 8.0+ / Mac OS X 10.9+
- Xcode 11.0+
- Swift 5.0+

## Installation

### [CocoaPods](https://cocoapods.org/) :

```ruby
pod 'MJModel'
```

### [Carthage](https://github.com/Carthage/Carthage) :
```
github "Musjoy/Swift-MJModel" "master"
```

### [Swift Package Manager](https://github.com/apple/swift-package-manager) :
Add the following to your Package.swift file's dependencies:
```swift
dependencies: [
    .package(url: "https://github.com/Musjoy/Swift-MJModel.git", from: "0.1.0"),
]
```

## Usage

### Import

```swift
import MJModel
```

### Model To JSON String

```swift
class BaseClass : Model {
    var name : String?
    var age : Int?
    
    required init() {}
}

let model = BaseClass()
model.name = "string"
model.age = 1

print(model.toDictionary())
print(model.toJSONString()!)
```
### JSON String To Model

```swift
let jsonString = "{\"name\":\"string\",\"age\":1}"
let modelResult = BaseClass.initWith(jsonString)!
print(modelResult.name!)
print(modelResult.age!)
```

### Extend Other

```swift
struct ExtendOtherStruct {
    var name : String?
    var age : Int?
}

extension ExtendOtherStruct : Model {}

var model = ExtendOtherStruct()
model.name = "string"
model.age = 1
    
let jsonString = model.toJSONString();
let modelResult = ExtendOtherStruct.initWith(jsonString!)!
print(jsonString!)
print(modelResult.name!)
print(modelResult.age!)
```

## Author

raymond-hl, Raymond.huang@musjoy.com

## License

MJModel is available under the MIT license. See the LICENSE file for more info.
