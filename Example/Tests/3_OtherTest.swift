//
//  OtherTest.swift
//  MJModel_Tests
//
//  Created by 黄磊 on 2019/8/6.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import XCTest
import MJModel

struct BaseModel : Model {
    var name : String?
    var age : Int?
}

class _3_OtherTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    /// Test Dictionary to json string and convert back
    func testDictionaryToJsonString () {
        let value1 : String = defaultValueForType(String.self)!
        let value2 : Int = defaultValueForType(Int.self)!
        let value3 : Float = defaultValueForType(Float.self)!
        let value4 : Bool = defaultValueForType(Bool.self)!
        let dicOrigin : [String:Any?] = ["key1":value1,"key2":value2,"key3":value3,"key4":value4]
        
        let jsonString : String = dicOrigin.toJSONString()!
        let dicResult = jsonString.toJSONObject() as? [String:Any]
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(dicResult)
        XCTAssertEqual(dicResult?["key1"] as? String, value1)
        XCTAssertEqual(dicResult?["key2"] as? Int, value2)
        XCTAssertEqual(dicResult?["key3"] as? Float, value3)
        XCTAssertEqual(dicResult?["key4"] as? Bool, value4)
        
    }
    
    /// Test Array to json string and convert back
    func testArrayToJsonString () {
        
        let value1 : String = defaultValueForType(String.self)!
        let value2 : Int = defaultValueForType(Int.self)!
        let value3 : Float = defaultValueForType(Float.self)!
        let value4 : Bool = defaultValueForType(Bool.self)!
        let arrOrigin : [Any] = [value1,value2,value3,value4]
        
        let jsonString : String = arrOrigin.toJSONString()!
        let arrResult = jsonString.toJSONObject() as? [Any]
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(arrResult)
        XCTAssertEqual(arrResult?[0] as? String, value1)
        XCTAssertEqual(arrResult?[1] as? Int, value2)
        XCTAssertEqual(arrResult?[2] as? Float, value3)
        XCTAssertEqual(arrResult?[3] as? Bool, value4)
    }
    
    /// Test [String:Model] ] to json string and convert back
    func testDictionaryModelToJsonString () {
        
        let value1 :String = defaultValueForType(String.self)!
        let value2 :Int = defaultValueForType(Int.self)!
        var baseModel = BaseModel.init()
        baseModel.name = value1;
        baseModel.age = value2;
        let dicOrigin : [String:BaseModel] = ["key1":baseModel]

        let jsonString : String = dicOrigin.toJSONString()!
        let dirResult = [String:BaseModel].initWith(jsonString)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(dirResult)
        XCTAssertEqual(dirResult?["key1"]?.name, value1)
        XCTAssertEqual(dirResult?["key1"]?.age, value2)
        
    }
    
    /// Test [Model] ] to json string and convert back
    func testArrayModelToJsonString () {
        
        let value1 :String = defaultValueForType(String.self)!
        let value2 :Int = defaultValueForType(Int.self)!
        var baseModel = BaseModel.init()
        baseModel.name = value1;
        baseModel.age = value2;
        let arrOrigin : [BaseModel] = [baseModel]

        let jsonString : String = arrOrigin.toJSONString()!
        let arrResult = [BaseModel].initWith(jsonString)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(arrResult)
        XCTAssertEqual(arrResult?.count, 1)
        XCTAssertEqual(arrResult?[0].name, value1)
        XCTAssertEqual(arrResult?[0].age, value2)
    }
    
    /// Test [Model] ] to json string and convert back
    func testNSDictionaryToModel () {
        
        let value1 :String = defaultValueForType(String.self)!
        let value2 :Int = defaultValueForType(Int.self)!
        let dic : NSDictionary = ["name":value1,"age":value2]
        
        let modelResult = BaseModel.initWith(dic)
        
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.name, value1)
        XCTAssertEqual(modelResult?.age, value2)
    }
        
}
