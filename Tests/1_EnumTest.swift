//
//  EnumTest.swift
//  MJModel_Example
//
//  Created by 黄磊 on 2019/7/17.
//  Copyright © 2019 CocoaPods. All rights reserved.
//  枚举类型测试

import Foundation
import XCTest
import MJModel

enum EnumString : String, ModelEnum {
    case One
    case Two
}

enum EnumInt : Int, ModelEnum {
    case One
    case Two
}

enum EnumFloat : Float, ModelEnum {
    case One
    case Two
}

enum EnumDouble : Double, ModelEnum {
    case One
    case Two
}

enum EnumRaw {
    case One
    case Two
}

extension EnumRaw: ModelEnum {
    func convertToBaseType() -> Any? {
        return String(describing: self)
    }
    
    static func convert(from object: Any) -> EnumRaw? {
        if let str = object as? String {
            return str == "One" ? .One : .Two
        } else if let num = object as? Int {
            return num == 1 ? .One : .Two
        }
        return nil
    }
}


struct EnumStruct : Model {
    var enumString : EnumString = .One
    var enumStringOptionl : EnumString?
    var enumStringUnwrapped : EnumString!

    var enumInt : EnumInt = .One
    var enumIntOptionl : EnumInt?
    var enumIntUnwrapped : EnumInt!

    var enumFloat : EnumFloat = .One
    var enumFloatOptionl : EnumFloat?
    var enumFloatUnwrapped : EnumFloat!

    var enumDouble : EnumDouble = .One
    var enumDoubleOptionl : EnumDouble?
    var enumDoubleUnwrapped : EnumDouble!

    var enumRaw : EnumRaw = .One
    var enumRawOptionl : EnumRaw?
    var enumRawUnwrapped : EnumRaw!
    
}
class EnumClass : Model {
    var enumString : EnumString = .One
    var enumStringOptionl : EnumString?
    var enumStringUnwrapped : EnumString!

    var enumInt : EnumInt = .One
    var enumIntOptionl : EnumInt?
    var enumIntUnwrapped : EnumInt!

    var enumFloat : EnumFloat = .One
    var enumFloatOptionl : EnumFloat?
    var enumFloatUnwrapped : EnumFloat!

    var enumDouble : EnumDouble = .One
    var enumDoubleOptionl : EnumDouble?
    var enumDoubleUnwrapped : EnumDouble!

    var enumRaw : EnumRaw = .One
    var enumRawOptionl : EnumRaw?
    var enumRawUnwrapped : EnumRaw!
    
    required init() {}
}


class _1_EnumTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    // test enum type one by one
    /// Test EnumString in struct to json string and convert back
    func testStructEnumStringToJson () {
        
        var model = EnumStruct()
        let aValue1 : EnumString = .One
        let aValue2 : EnumString = .Two
        model.enumString = aValue1
        model.enumStringOptionl = aValue2
        model.enumStringUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = EnumStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.enumString, aValue1)
        XCTAssertEqual(modelResult?.enumStringOptionl, aValue2)
        XCTAssertEqual(modelResult?.enumStringUnwrapped, aValue1)
        
    }
    
    /// Test EnumInt in struct to json string and convert back
    func testStructEnumIntToJson () {
        
        var model = EnumStruct()
        let aValue1 : EnumInt = .One
        let aValue2 : EnumInt = .Two
        model.enumInt = aValue1
        model.enumIntOptionl = aValue2
        model.enumIntUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = EnumStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.enumInt, aValue1)
        XCTAssertEqual(modelResult?.enumIntOptionl, aValue2)
        XCTAssertEqual(modelResult?.enumIntUnwrapped, aValue1)
        
    }
    
    /// Test EnumFloat in struct to json string and convert back
    func testStructEnumFloatToJson () {
        
        var model = EnumStruct()
        let aValue1 : EnumFloat = .One
        let aValue2 : EnumFloat = .Two
        model.enumFloat = aValue1
        model.enumFloatOptionl = aValue2
        model.enumFloatUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = EnumStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.enumFloat, aValue1)
        XCTAssertEqual(modelResult?.enumFloatOptionl, aValue2)
        XCTAssertEqual(modelResult?.enumFloatUnwrapped, aValue1)
        
    }
    
    /// Test EnumDouble in struct to json string and convert back
    func testStructEnumDoubleToJson () {
        
        var model = EnumStruct()
        let aValue1 : EnumDouble = .One
        let aValue2 : EnumDouble = .Two
        model.enumDouble = aValue1
        model.enumDoubleOptionl = aValue2
        model.enumDoubleUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = EnumStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.enumDouble, aValue1)
        XCTAssertEqual(modelResult?.enumDoubleOptionl, aValue2)
        XCTAssertEqual(modelResult?.enumDoubleUnwrapped, aValue1)
        
    }
    
    /// Test EnumRaw in struct to json string and convert back
    func testStructEnumRawToJson () {
        
        var model = EnumStruct()
        let aValue1 : EnumRaw = .One
        let aValue2 : EnumRaw = .Two
        model.enumRaw = aValue1
        model.enumRawOptionl = aValue2
        model.enumRawUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = EnumStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.enumRaw, aValue1)
        XCTAssertEqual(modelResult?.enumRawOptionl, aValue2)
        XCTAssertEqual(modelResult?.enumRawUnwrapped, aValue1)
        
    }
    
    /// Test EnumString in class to json string and convert back
    func testClassEnumStringToJson () {
        
        let model = EnumClass()
        let aValue1 : EnumString = .One
        let aValue2 : EnumString = .Two
        model.enumString = aValue1
        model.enumStringOptionl = aValue2
        model.enumStringUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = EnumClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.enumString, aValue1)
        XCTAssertEqual(modelResult?.enumStringOptionl, aValue2)
        XCTAssertEqual(modelResult?.enumStringUnwrapped, aValue1)
        
    }
    
    /// Test EnumInt in class to json string and convert back
    func testClassEnumIntToJson () {
        
        let model = EnumClass()
        let aValue1 : EnumInt = .One
        let aValue2 : EnumInt = .Two
        model.enumInt = aValue1
        model.enumIntOptionl = aValue2
        model.enumIntUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = EnumClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.enumInt, aValue1)
        XCTAssertEqual(modelResult?.enumIntOptionl, aValue2)
        XCTAssertEqual(modelResult?.enumIntUnwrapped, aValue1)
        
    }
    
    /// Test EnumFloat in class to json string and convert back
    func testClassEnumFloatToJson () {
        
        let model = EnumClass()
        let aValue1 : EnumFloat = .One
        let aValue2 : EnumFloat = .Two
        model.enumFloat = aValue1
        model.enumFloatOptionl = aValue2
        model.enumFloatUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = EnumClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.enumFloat, aValue1)
        XCTAssertEqual(modelResult?.enumFloatOptionl, aValue2)
        XCTAssertEqual(modelResult?.enumFloatUnwrapped, aValue1)
        
    }
    
    /// Test EnumDouble in class to json string and convert back
    func testClassEnumDoubleToJson () {
        
        let model = EnumClass()
        let aValue1 : EnumDouble = .One
        let aValue2 : EnumDouble = .Two
        model.enumDouble = aValue1
        model.enumDoubleOptionl = aValue2
        model.enumDoubleUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = EnumClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.enumDouble, aValue1)
        XCTAssertEqual(modelResult?.enumDoubleOptionl, aValue2)
        XCTAssertEqual(modelResult?.enumDoubleUnwrapped, aValue1)
        
    }
    
    /// Test EnumRaw in class to json string and convert back
    func testClassEnumRawToJson () {
        
        let model = EnumClass()
        let aValue1 : EnumRaw = .One
        let aValue2 : EnumRaw = .Two
        model.enumRaw = aValue1
        model.enumRawOptionl = aValue2
        model.enumRawUnwrapped = aValue1
        
        let jsonString = model.toJSONString();
        let modelResult = EnumClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.enumRaw, aValue1)
        XCTAssertEqual(modelResult?.enumRawOptionl, aValue2)
        XCTAssertEqual(modelResult?.enumRawUnwrapped, aValue1)
        
    }
    

}
