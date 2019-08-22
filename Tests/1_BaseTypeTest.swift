//
//  BaseTypeTest.swift
//  MJModel_Example
//
//  Created by 黄磊 on 2019/7/17.
//  Copyright © 2019 CocoaPods. All rights reserved.
//  继承类型测试

import Foundation
import XCTest
import MJModel


struct BaseTypeStruct : Model {
    var int : Int = empertyValueForType(Int.self)!
    var intOptionl : Int?
    var intUnwrapped : Int!
    
    var uInt : UInt = empertyValueForType(UInt.self)!
    var uIntOptionl : UInt?
    var uIntUnwrapped : UInt!
    
    var int8 : Int8 = empertyValueForType(Int8.self)!
    var int8Optionl : Int8?
    var int8Unwrapped : Int8!
    
    var int16 : Int16 = empertyValueForType(Int16.self)!
    var int16Optionl : Int16?
    var int16Unwrapped : Int16!
    
    var int32 : Int32 = empertyValueForType(Int32.self)!
    var int32Optionl : Int32?
    var int32Unwrapped : Int32!
    
    var int64 : Int64 = empertyValueForType(Int64.self)!
    var int64Optionl : Int64?
    var int64Unwrapped : Int64!
    
    var uInt8 : UInt8 = empertyValueForType(UInt8.self)!
    var uInt8Optionl : UInt8?
    var uInt8Unwrapped : UInt8!
    
    var uInt16 : UInt16 = empertyValueForType(UInt16.self)!
    var uInt16Optionl : UInt16?
    var uInt16Unwrapped : UInt16!
    
    var uInt32 : UInt32 = empertyValueForType(UInt32.self)!
    var uInt32Optionl : UInt32?
    var uInt32Unwrapped : UInt32!
    
    var uInt64 : UInt64 = empertyValueForType(UInt64.self)!
    var uInt64Optionl : UInt64?
    var uInt64Unwrapped : UInt64!
    
    var float : Float = empertyValueForType(Float.self)!
    var floatOptionl : Float?
    var floatUnwrapped : Float!
    
    var double : Double = empertyValueForType(Double.self)!
    var doubleOptionl : Double?
    var doubleUnwrapped : Double!
    
    var bool : Bool = empertyValueForType(Bool.self)!
    var boolOptionl : Bool?
    var boolUnwrapped : Bool!
    
    var string : String = empertyValueForType(String.self)!
    var stringOptionl : String?
    var stringUnwrapped : String!
    
    var nSString : NSString = empertyValueForType(NSString.self)!
    var nSStringOptionl : NSString?
    var nSStringUnwrapped : NSString!
    
    var nSNumber : NSNumber = empertyValueForType(NSNumber.self)!
    var nSNumberOptionl : NSNumber?
    var nSNumberUnwrapped : NSNumber!
    
}

class BaseTypeClass : Model {
    var int : Int = empertyValueForType(Int.self)!
    var intOptionl : Int?
    var intUnwrapped : Int!
    
    var uInt : UInt = empertyValueForType(UInt.self)!
    var uIntOptionl : UInt?
    var uIntUnwrapped : UInt!
    
    var int8 : Int8 = empertyValueForType(Int8.self)!
    var int8Optionl : Int8?
    var int8Unwrapped : Int8!
    
    var int16 : Int16 = empertyValueForType(Int16.self)!
    var int16Optionl : Int16?
    var int16Unwrapped : Int16!
    
    var int32 : Int32 = empertyValueForType(Int32.self)!
    var int32Optionl : Int32?
    var int32Unwrapped : Int32!
    
    var int64 : Int64 = empertyValueForType(Int64.self)!
    var int64Optionl : Int64?
    var int64Unwrapped : Int64!
    
    var uInt8 : UInt8 = empertyValueForType(UInt8.self)!
    var uInt8Optionl : UInt8?
    var uInt8Unwrapped : UInt8!
    
    var uInt16 : UInt16 = empertyValueForType(UInt16.self)!
    var uInt16Optionl : UInt16?
    var uInt16Unwrapped : UInt16!
    
    var uInt32 : UInt32 = empertyValueForType(UInt32.self)!
    var uInt32Optionl : UInt32?
    var uInt32Unwrapped : UInt32!
    
    var uInt64 : UInt64 = empertyValueForType(UInt64.self)!
    var uInt64Optionl : UInt64?
    var uInt64Unwrapped : UInt64!
    
    var float : Float = empertyValueForType(Float.self)!
    var floatOptionl : Float?
    var floatUnwrapped : Float!
    
    var double : Double = empertyValueForType(Double.self)!
    var doubleOptionl : Double?
    var doubleUnwrapped : Double!
    
    var bool : Bool = empertyValueForType(Bool.self)!
    var boolOptionl : Bool?
    var boolUnwrapped : Bool!
    
    var string : String = empertyValueForType(String.self)!
    var stringOptionl : String?
    var stringUnwrapped : String!
    
    var nSString : NSString = empertyValueForType(NSString.self)!
    var nSStringOptionl : NSString?
    var nSStringUnwrapped : NSString!
    
    var nSNumber : NSNumber = empertyValueForType(NSNumber.self)!
    var nSNumberOptionl : NSNumber?
    var nSNumberUnwrapped : NSNumber!
    
    required init() {}
}


class _1_BaseTypeTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    // test base type one by one
    /// Test Int in struct to json string and convert back
    func testStructIntToJson () {
        
        var model = BaseTypeStruct()
        let aValue : Int = defaultValueForType(Int.self)!
        model.int = aValue
        model.intOptionl = aValue
        model.intUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.int, aValue)
        XCTAssertEqual(modelResult?.intOptionl, aValue)
        XCTAssertEqual(modelResult?.intUnwrapped, aValue)
        
    }
    
    /// Test UInt in struct to json string and convert back
    func testStructUIntToJson () {
        
        var model = BaseTypeStruct()
        let aValue : UInt = defaultValueForType(UInt.self)!
        model.uInt = aValue
        model.uIntOptionl = aValue
        model.uIntUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.uInt, aValue)
        XCTAssertEqual(modelResult?.uIntOptionl, aValue)
        XCTAssertEqual(modelResult?.uIntUnwrapped, aValue)
        
    }
    
    /// Test Int8 in struct to json string and convert back
    func testStructInt8ToJson () {
        
        var model = BaseTypeStruct()
        let aValue : Int8 = defaultValueForType(Int8.self)!
        model.int8 = aValue
        model.int8Optionl = aValue
        model.int8Unwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.int8, aValue)
        XCTAssertEqual(modelResult?.int8Optionl, aValue)
        XCTAssertEqual(modelResult?.int8Unwrapped, aValue)
        
    }
    
    /// Test Int16 in struct to json string and convert back
    func testStructInt16ToJson () {
        
        var model = BaseTypeStruct()
        let aValue : Int16 = defaultValueForType(Int16.self)!
        model.int16 = aValue
        model.int16Optionl = aValue
        model.int16Unwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.int16, aValue)
        XCTAssertEqual(modelResult?.int16Optionl, aValue)
        XCTAssertEqual(modelResult?.int16Unwrapped, aValue)
        
    }
    
    /// Test Int32 in struct to json string and convert back
    func testStructInt32ToJson () {
        
        var model = BaseTypeStruct()
        let aValue : Int32 = defaultValueForType(Int32.self)!
        model.int32 = aValue
        model.int32Optionl = aValue
        model.int32Unwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.int32, aValue)
        XCTAssertEqual(modelResult?.int32Optionl, aValue)
        XCTAssertEqual(modelResult?.int32Unwrapped, aValue)
        
    }
    
    /// Test Int64 in struct to json string and convert back
    func testStructInt64ToJson () {
        
        var model = BaseTypeStruct()
        let aValue : Int64 = defaultValueForType(Int64.self)!
        model.int64 = aValue
        model.int64Optionl = aValue
        model.int64Unwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.int64, aValue)
        XCTAssertEqual(modelResult?.int64Optionl, aValue)
        XCTAssertEqual(modelResult?.int64Unwrapped, aValue)
        
    }
    
    /// Test UInt8 in struct to json string and convert back
    func testStructUInt8ToJson () {
        
        var model = BaseTypeStruct()
        let aValue : UInt8 = defaultValueForType(UInt8.self)!
        model.uInt8 = aValue
        model.uInt8Optionl = aValue
        model.uInt8Unwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.uInt8, aValue)
        XCTAssertEqual(modelResult?.uInt8Optionl, aValue)
        XCTAssertEqual(modelResult?.uInt8Unwrapped, aValue)
        
    }
    
    /// Test UInt16 in struct to json string and convert back
    func testStructUInt16ToJson () {
        
        var model = BaseTypeStruct()
        let aValue : UInt16 = defaultValueForType(UInt16.self)!
        model.uInt16 = aValue
        model.uInt16Optionl = aValue
        model.uInt16Unwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.uInt16, aValue)
        XCTAssertEqual(modelResult?.uInt16Optionl, aValue)
        XCTAssertEqual(modelResult?.uInt16Unwrapped, aValue)
        
    }
    
    /// Test UInt32 in struct to json string and convert back
    func testStructUInt32ToJson () {
        
        var model = BaseTypeStruct()
        let aValue : UInt32 = defaultValueForType(UInt32.self)!
        model.uInt32 = aValue
        model.uInt32Optionl = aValue
        model.uInt32Unwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.uInt32, aValue)
        XCTAssertEqual(modelResult?.uInt32Optionl, aValue)
        XCTAssertEqual(modelResult?.uInt32Unwrapped, aValue)
        
    }
    
    /// Test UInt64 in struct to json string and convert back
    func testStructUInt64ToJson () {
        
        var model = BaseTypeStruct()
        let aValue : UInt64 = defaultValueForType(UInt64.self)!
        model.uInt64 = aValue
        model.uInt64Optionl = aValue
        model.uInt64Unwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.uInt64, aValue)
        XCTAssertEqual(modelResult?.uInt64Optionl, aValue)
        XCTAssertEqual(modelResult?.uInt64Unwrapped, aValue)
        
    }
    
    /// Test Float in struct to json string and convert back
    func testStructFloatToJson () {
        
        var model = BaseTypeStruct()
        let aValue : Float = defaultValueForType(Float.self)!
        model.float = aValue
        model.floatOptionl = aValue
        model.floatUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.float, aValue)
        XCTAssertEqual(modelResult?.floatOptionl, aValue)
        XCTAssertEqual(modelResult?.floatUnwrapped, aValue)
        
    }
    
    /// Test Double in struct to json string and convert back
    func testStructDoubleToJson () {
        
        var model = BaseTypeStruct()
        let aValue : Double = defaultValueForType(Double.self)!
        model.double = aValue
        model.doubleOptionl = aValue
        model.doubleUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.double, aValue)
        XCTAssertEqual(modelResult?.doubleOptionl, aValue)
        XCTAssertEqual(modelResult?.doubleUnwrapped, aValue)
        
    }
    
    /// Test Bool in struct to json string and convert back
    func testStructBoolToJson () {
        
        var model = BaseTypeStruct()
        let aValue : Bool = defaultValueForType(Bool.self)!
        model.bool = aValue
        model.boolOptionl = aValue
        model.boolUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.bool, aValue)
        XCTAssertEqual(modelResult?.boolOptionl, aValue)
        XCTAssertEqual(modelResult?.boolUnwrapped, aValue)
        
    }
    
    /// Test String in struct to json string and convert back
    func testStructStringToJson () {
        
        var model = BaseTypeStruct()
        let aValue : String = defaultValueForType(String.self)!
        model.string = aValue
        model.stringOptionl = aValue
        model.stringUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.string, aValue)
        XCTAssertEqual(modelResult?.stringOptionl, aValue)
        XCTAssertEqual(modelResult?.stringUnwrapped, aValue)
        
    }
    
    /// Test NSString in struct to json string and convert back
    func testStructNSStringToJson () {
        
        var model = BaseTypeStruct()
        let aValue : NSString = defaultValueForType(NSString.self)!
        model.nSString = aValue
        model.nSStringOptionl = aValue
        model.nSStringUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.nSString, aValue)
        XCTAssertEqual(modelResult?.nSStringOptionl, aValue)
        XCTAssertEqual(modelResult?.nSStringUnwrapped, aValue)
        
    }
    
    /// Test NSNumber in struct to json string and convert back
    func testStructNSNumberToJson () {
        
        var model = BaseTypeStruct()
        let aValue : NSNumber = defaultValueForType(NSNumber.self)!
        model.nSNumber = aValue
        model.nSNumberOptionl = aValue
        model.nSNumberUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.nSNumber, aValue)
        XCTAssertEqual(modelResult?.nSNumberOptionl, aValue)
        XCTAssertEqual(modelResult?.nSNumberUnwrapped, aValue)
        
    }
    

    /// Test Int in class to json string and convert back
    func testClassIntToJson () {
        
        let model = BaseTypeClass()
        let aValue : Int = defaultValueForType(Int.self)!
        model.int = aValue
        model.intOptionl = aValue
        model.intUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.int, aValue)
        XCTAssertEqual(modelResult?.intOptionl, aValue)
        XCTAssertEqual(modelResult?.intUnwrapped, aValue)
        
    }
    
    /// Test UInt in class to json string and convert back
    func testClassUIntToJson () {
        
        let model = BaseTypeClass()
        let aValue : UInt = defaultValueForType(UInt.self)!
        model.uInt = aValue
        model.uIntOptionl = aValue
        model.uIntUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.uInt, aValue)
        XCTAssertEqual(modelResult?.uIntOptionl, aValue)
        XCTAssertEqual(modelResult?.uIntUnwrapped, aValue)
        
    }
    
    /// Test Int8 in class to json string and convert back
    func testClassInt8ToJson () {
        
        let model = BaseTypeClass()
        let aValue : Int8 = defaultValueForType(Int8.self)!
        model.int8 = aValue
        model.int8Optionl = aValue
        model.int8Unwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.int8, aValue)
        XCTAssertEqual(modelResult?.int8Optionl, aValue)
        XCTAssertEqual(modelResult?.int8Unwrapped, aValue)
        
    }
    
    /// Test Int16 in class to json string and convert back
    func testClassInt16ToJson () {
        
        let model = BaseTypeClass()
        let aValue : Int16 = defaultValueForType(Int16.self)!
        model.int16 = aValue
        model.int16Optionl = aValue
        model.int16Unwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.int16, aValue)
        XCTAssertEqual(modelResult?.int16Optionl, aValue)
        XCTAssertEqual(modelResult?.int16Unwrapped, aValue)
        
    }
    
    /// Test Int32 in class to json string and convert back
    func testClassInt32ToJson () {
        
        let model = BaseTypeClass()
        let aValue : Int32 = defaultValueForType(Int32.self)!
        model.int32 = aValue
        model.int32Optionl = aValue
        model.int32Unwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.int32, aValue)
        XCTAssertEqual(modelResult?.int32Optionl, aValue)
        XCTAssertEqual(modelResult?.int32Unwrapped, aValue)
        
    }
    
    /// Test Int64 in class to json string and convert back
    func testClassInt64ToJson () {
        
        let model = BaseTypeClass()
        let aValue : Int64 = defaultValueForType(Int64.self)!
        model.int64 = aValue
        model.int64Optionl = aValue
        model.int64Unwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.int64, aValue)
        XCTAssertEqual(modelResult?.int64Optionl, aValue)
        XCTAssertEqual(modelResult?.int64Unwrapped, aValue)
        
    }
    
    /// Test UInt8 in class to json string and convert back
    func testClassUInt8ToJson () {
        
        let model = BaseTypeClass()
        let aValue : UInt8 = defaultValueForType(UInt8.self)!
        model.uInt8 = aValue
        model.uInt8Optionl = aValue
        model.uInt8Unwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.uInt8, aValue)
        XCTAssertEqual(modelResult?.uInt8Optionl, aValue)
        XCTAssertEqual(modelResult?.uInt8Unwrapped, aValue)
        
    }
    
    /// Test UInt16 in class to json string and convert back
    func testClassUInt16ToJson () {
        
        let model = BaseTypeClass()
        let aValue : UInt16 = defaultValueForType(UInt16.self)!
        model.uInt16 = aValue
        model.uInt16Optionl = aValue
        model.uInt16Unwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.uInt16, aValue)
        XCTAssertEqual(modelResult?.uInt16Optionl, aValue)
        XCTAssertEqual(modelResult?.uInt16Unwrapped, aValue)
        
    }
    
    /// Test UInt32 in class to json string and convert back
    func testClassUInt32ToJson () {
        
        let model = BaseTypeClass()
        let aValue : UInt32 = defaultValueForType(UInt32.self)!
        model.uInt32 = aValue
        model.uInt32Optionl = aValue
        model.uInt32Unwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.uInt32, aValue)
        XCTAssertEqual(modelResult?.uInt32Optionl, aValue)
        XCTAssertEqual(modelResult?.uInt32Unwrapped, aValue)
        
    }
    
    /// Test UInt64 in class to json string and convert back
    func testClassUInt64ToJson () {
        
        let model = BaseTypeClass()
        let aValue : UInt64 = defaultValueForType(UInt64.self)!
        model.uInt64 = aValue
        model.uInt64Optionl = aValue
        model.uInt64Unwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.uInt64, aValue)
        XCTAssertEqual(modelResult?.uInt64Optionl, aValue)
        XCTAssertEqual(modelResult?.uInt64Unwrapped, aValue)
        
    }
    
    /// Test Float in class to json string and convert back
    func testClassFloatToJson () {
        
        let model = BaseTypeClass()
        let aValue : Float = defaultValueForType(Float.self)!
        model.float = aValue
        model.floatOptionl = aValue
        model.floatUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.float, aValue)
        XCTAssertEqual(modelResult?.floatOptionl, aValue)
        XCTAssertEqual(modelResult?.floatUnwrapped, aValue)
        
    }
    
    /// Test Double in class to json string and convert back
    func testClassDoubleToJson () {
        
        let model = BaseTypeClass()
        let aValue : Double = defaultValueForType(Double.self)!
        model.double = aValue
        model.doubleOptionl = aValue
        model.doubleUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.double, aValue)
        XCTAssertEqual(modelResult?.doubleOptionl, aValue)
        XCTAssertEqual(modelResult?.doubleUnwrapped, aValue)
        
    }
    
    /// Test Bool in class to json string and convert back
    func testClassBoolToJson () {
        
        let model = BaseTypeClass()
        let aValue : Bool = defaultValueForType(Bool.self)!
        model.bool = aValue
        model.boolOptionl = aValue
        model.boolUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.bool, aValue)
        XCTAssertEqual(modelResult?.boolOptionl, aValue)
        XCTAssertEqual(modelResult?.boolUnwrapped, aValue)
        
    }
    
    /// Test String in class to json string and convert back
    func testClassStringToJson () {
        
        let model = BaseTypeClass()
        let aValue : String = defaultValueForType(String.self)!
        model.string = aValue
        model.stringOptionl = aValue
        model.stringUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.string, aValue)
        XCTAssertEqual(modelResult?.stringOptionl, aValue)
        XCTAssertEqual(modelResult?.stringUnwrapped, aValue)
        
    }
    
    /// Test NSString in class to json string and convert back
    func testClassNSStringToJson () {
        
        let model = BaseTypeClass()
        let aValue : NSString = defaultValueForType(NSString.self)!
        model.nSString = aValue
        model.nSStringOptionl = aValue
        model.nSStringUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.nSString, aValue)
        XCTAssertEqual(modelResult?.nSStringOptionl, aValue)
        XCTAssertEqual(modelResult?.nSStringUnwrapped, aValue)
        
    }
    
    /// Test NSNumber in class to json string and convert back
    func testClassNSNumberToJson () {
        
        let model = BaseTypeClass()
        let aValue : NSNumber = defaultValueForType(NSNumber.self)!
        model.nSNumber = aValue
        model.nSNumberOptionl = aValue
        model.nSNumberUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = BaseTypeClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.nSNumber, aValue)
        XCTAssertEqual(modelResult?.nSNumberOptionl, aValue)
        XCTAssertEqual(modelResult?.nSNumberUnwrapped, aValue)
        
    }
    


}
