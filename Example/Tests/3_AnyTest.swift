//
//  AnyTest.swift
//  MJModel_Example
//
//  Created by 黄磊 on 2019/7/17.
//  Copyright © 2019 CocoaPods. All rights reserved.
//  继承类型测试

import Foundation
import XCTest
import MJModel


struct AnyStruct : Model {
    //MARK: Any is not support for now. Use Any! or Any?
    var any : Any! = empertyValueForType(Any.self)!
    var anyOptionl : Any?
    var anyUnwrapped : Any!
    
}

class AnyClass : Model {
    //MARK: Any is not support for now. Use Any! or Any?
    var any : Any! = empertyValueForType(Any.self)!
    var anyOptionl : Any?
    var anyUnwrapped : Any!
    
    required init() {}
}


class _3_AnyTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    // test any type one by one
    /// Test Any in struct to json string and convert back
    func testStructAnyIntToJson () {
        
        var model = AnyStruct()
        let aValue1 : Int = defaultValueForType(Int.self)!
        let aValue2 : Int = empertyValueForType(Int.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? Int, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? Int, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? Int, aValue1)
        
    }
    /// Test Any in struct to json string and convert back
    func testStructAnyUIntToJson () {
        
        var model = AnyStruct()
        let aValue1 : UInt = defaultValueForType(UInt.self)!
        let aValue2 : UInt = empertyValueForType(UInt.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? UInt, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? UInt, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? UInt, aValue1)
        
    }
    /// Test Any in struct to json string and convert back
    func testStructAnyInt8ToJson () {
        
        var model = AnyStruct()
        let aValue1 : Int8 = defaultValueForType(Int8.self)!
        let aValue2 : Int8 = empertyValueForType(Int8.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? Int8, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? Int8, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? Int8, aValue1)
        
    }
    /// Test Any in struct to json string and convert back
    func testStructAnyInt16ToJson () {
        
        var model = AnyStruct()
        let aValue1 : Int16 = defaultValueForType(Int16.self)!
        let aValue2 : Int16 = empertyValueForType(Int16.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? Int16, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? Int16, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? Int16, aValue1)
        
    }
    /// Test Any in struct to json string and convert back
    func testStructAnyInt32ToJson () {
        
        var model = AnyStruct()
        let aValue1 : Int32 = defaultValueForType(Int32.self)!
        let aValue2 : Int32 = empertyValueForType(Int32.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? Int32, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? Int32, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? Int32, aValue1)
        
    }
    /// Test Any in struct to json string and convert back
    func testStructAnyInt64ToJson () {
        
        var model = AnyStruct()
        let aValue1 : Int64 = defaultValueForType(Int64.self)!
        let aValue2 : Int64 = empertyValueForType(Int64.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? Int64, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? Int64, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? Int64, aValue1)
        
    }
    /// Test Any in struct to json string and convert back
    func testStructAnyUInt8ToJson () {
        
        var model = AnyStruct()
        let aValue1 : UInt8 = defaultValueForType(UInt8.self)!
        let aValue2 : UInt8 = empertyValueForType(UInt8.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? UInt8, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? UInt8, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? UInt8, aValue1)
        
    }
    /// Test Any in struct to json string and convert back
    func testStructAnyUInt16ToJson () {
        
        var model = AnyStruct()
        let aValue1 : UInt16 = defaultValueForType(UInt16.self)!
        let aValue2 : UInt16 = empertyValueForType(UInt16.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? UInt16, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? UInt16, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? UInt16, aValue1)
        
    }
    /// Test Any in struct to json string and convert back
    func testStructAnyUInt32ToJson () {
        
        var model = AnyStruct()
        let aValue1 : UInt32 = defaultValueForType(UInt32.self)!
        let aValue2 : UInt32 = empertyValueForType(UInt32.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? UInt32, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? UInt32, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? UInt32, aValue1)
        
    }
    /// Test Any in struct to json string and convert back
    func testStructAnyUInt64ToJson () {
        
        var model = AnyStruct()
        let aValue1 : UInt64 = defaultValueForType(UInt64.self)!
        let aValue2 : UInt64 = empertyValueForType(UInt64.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? UInt64, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? UInt64, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? UInt64, aValue1)
        
    }
    /// Test Any in struct to json string and convert back
    func testStructAnyFloatToJson () {
        
        var model = AnyStruct()
        let aValue1 : Float = defaultValueForType(Float.self)!
        let aValue2 : Float = empertyValueForType(Float.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? Float, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? Float, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? Float, aValue1)
        
    }
    /// Test Any in struct to json string and convert back
    func testStructAnyDoubleToJson () {
        
        var model = AnyStruct()
        let aValue1 : Double = defaultValueForType(Double.self)!
        let aValue2 : Double = empertyValueForType(Double.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? Double, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? Double, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? Double, aValue1)
        
    }
    /// Test Any in struct to json string and convert back
    func testStructAnyBoolToJson () {
        
        var model = AnyStruct()
        let aValue1 : Bool = defaultValueForType(Bool.self)!
        let aValue2 : Bool = empertyValueForType(Bool.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? Bool, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? Bool, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? Bool, aValue1)
        
    }
    /// Test Any in struct to json string and convert back
    func testStructAnyStringToJson () {
        
        var model = AnyStruct()
        let aValue1 : String = defaultValueForType(String.self)!
        let aValue2 : String = empertyValueForType(String.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? String, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? String, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? String, aValue1)
        
    }
    /// Test Any in struct to json string and convert back
    func testStructAnyNSStringToJson () {
        
        var model = AnyStruct()
        let aValue1 : NSString = defaultValueForType(NSString.self)!
        let aValue2 : NSString = empertyValueForType(NSString.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? NSString, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? NSString, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? NSString, aValue1)
        
    }
    /// Test Any in struct to json string and convert back
    func testStructAnyNSNumberToJson () {
        
        var model = AnyStruct()
        let aValue1 : NSNumber = defaultValueForType(NSNumber.self)!
        let aValue2 : NSNumber = empertyValueForType(NSNumber.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? NSNumber, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? NSNumber, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? NSNumber, aValue1)
        
    }
    /// Test Any in class to json string and convert back
    func testClassAnyIntToJson () {
        
        let model = AnyClass()
        let aValue1 : Int = defaultValueForType(Int.self)!
        let aValue2 : Int = empertyValueForType(Int.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? Int, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? Int, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? Int, aValue1)
        
    }
    /// Test Any in class to json string and convert back
    func testClassAnyUIntToJson () {
        
        let model = AnyClass()
        let aValue1 : UInt = defaultValueForType(UInt.self)!
        let aValue2 : UInt = empertyValueForType(UInt.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? UInt, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? UInt, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? UInt, aValue1)
        
    }
    /// Test Any in class to json string and convert back
    func testClassAnyInt8ToJson () {
        
        let model = AnyClass()
        let aValue1 : Int8 = defaultValueForType(Int8.self)!
        let aValue2 : Int8 = empertyValueForType(Int8.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? Int8, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? Int8, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? Int8, aValue1)
        
    }
    /// Test Any in class to json string and convert back
    func testClassAnyInt16ToJson () {
        
        let model = AnyClass()
        let aValue1 : Int16 = defaultValueForType(Int16.self)!
        let aValue2 : Int16 = empertyValueForType(Int16.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? Int16, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? Int16, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? Int16, aValue1)
        
    }
    /// Test Any in class to json string and convert back
    func testClassAnyInt32ToJson () {
        
        let model = AnyClass()
        let aValue1 : Int32 = defaultValueForType(Int32.self)!
        let aValue2 : Int32 = empertyValueForType(Int32.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? Int32, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? Int32, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? Int32, aValue1)
        
    }
    /// Test Any in class to json string and convert back
    func testClassAnyInt64ToJson () {
        
        let model = AnyClass()
        let aValue1 : Int64 = defaultValueForType(Int64.self)!
        let aValue2 : Int64 = empertyValueForType(Int64.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? Int64, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? Int64, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? Int64, aValue1)
        
    }
    /// Test Any in class to json string and convert back
    func testClassAnyUInt8ToJson () {
        
        let model = AnyClass()
        let aValue1 : UInt8 = defaultValueForType(UInt8.self)!
        let aValue2 : UInt8 = empertyValueForType(UInt8.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? UInt8, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? UInt8, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? UInt8, aValue1)
        
    }
    /// Test Any in class to json string and convert back
    func testClassAnyUInt16ToJson () {
        
        let model = AnyClass()
        let aValue1 : UInt16 = defaultValueForType(UInt16.self)!
        let aValue2 : UInt16 = empertyValueForType(UInt16.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? UInt16, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? UInt16, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? UInt16, aValue1)
        
    }
    /// Test Any in class to json string and convert back
    func testClassAnyUInt32ToJson () {
        
        let model = AnyClass()
        let aValue1 : UInt32 = defaultValueForType(UInt32.self)!
        let aValue2 : UInt32 = empertyValueForType(UInt32.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? UInt32, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? UInt32, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? UInt32, aValue1)
        
    }
    /// Test Any in class to json string and convert back
    func testClassAnyUInt64ToJson () {
        
        let model = AnyClass()
        let aValue1 : UInt64 = defaultValueForType(UInt64.self)!
        let aValue2 : UInt64 = empertyValueForType(UInt64.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? UInt64, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? UInt64, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? UInt64, aValue1)
        
    }
    /// Test Any in class to json string and convert back
    func testClassAnyFloatToJson () {
        
        let model = AnyClass()
        let aValue1 : Float = defaultValueForType(Float.self)!
        let aValue2 : Float = empertyValueForType(Float.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? Float, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? Float, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? Float, aValue1)
        
    }
    /// Test Any in class to json string and convert back
    func testClassAnyDoubleToJson () {
        
        let model = AnyClass()
        let aValue1 : Double = defaultValueForType(Double.self)!
        let aValue2 : Double = empertyValueForType(Double.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? Double, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? Double, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? Double, aValue1)
        
    }
    /// Test Any in class to json string and convert back
    func testClassAnyBoolToJson () {
        
        let model = AnyClass()
        let aValue1 : Bool = defaultValueForType(Bool.self)!
        let aValue2 : Bool = empertyValueForType(Bool.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? Bool, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? Bool, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? Bool, aValue1)
        
    }
    /// Test Any in class to json string and convert back
    func testClassAnyStringToJson () {
        
        let model = AnyClass()
        let aValue1 : String = defaultValueForType(String.self)!
        let aValue2 : String = empertyValueForType(String.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? String, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? String, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? String, aValue1)
        
    }
    /// Test Any in class to json string and convert back
    func testClassAnyNSStringToJson () {
        
        let model = AnyClass()
        let aValue1 : NSString = defaultValueForType(NSString.self)!
        let aValue2 : NSString = empertyValueForType(NSString.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? NSString, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? NSString, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? NSString, aValue1)
        
    }
    /// Test Any in class to json string and convert back
    func testClassAnyNSNumberToJson () {
        
        let model = AnyClass()
        let aValue1 : NSNumber = defaultValueForType(NSNumber.self)!
        let aValue2 : NSNumber = empertyValueForType(NSNumber.self)!
        model.any = aValue1
        model.anyOptionl = aValue2
        model.anyUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = AnyClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.any as? NSNumber, aValue1)
        XCTAssertEqual(modelResult?.anyOptionl as? NSNumber, aValue2)
        XCTAssertEqual(modelResult?.anyUnwrapped as? NSNumber, aValue1)
        
    }

}
