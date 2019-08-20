//
//  ContainerTest.swift
//  MJModel_Example
//
//  Created by 黄磊 on 2019/7/17.
//  Copyright © 2019 CocoaPods. All rights reserved.
//  容器类型测试

import Foundation
import XCTest
import MJModel


struct ContainerStruct : Model {
    var arrInts : [Int] = []
    var arrIntsOptionl : [Int]?
    var arrIntsUnwrapped : [Int]!
    
    var arrFloats : [Float] = []
    var arrFloatsOptionl : [Float]?
    var arrFloatsUnwrapped : [Float]!
    
    var arrDoubles : [Double] = []
    var arrDoublesOptionl : [Double]?
    var arrDoublesUnwrapped : [Double]!
    
    var arrBools : [Bool] = []
    var arrBoolsOptionl : [Bool]?
    var arrBoolsUnwrapped : [Bool]!
    
    var arrStrings : [String] = []
    var arrStringsOptionl : [String]?
    var arrStringsUnwrapped : [String]!
    
    var arrNSStrings : [NSString] = []
    var arrNSStringsOptionl : [NSString]?
    var arrNSStringsUnwrapped : [NSString]!
    
    var arrNSNumbers : [NSNumber] = []
    var arrNSNumbersOptionl : [NSNumber]?
    var arrNSNumbersUnwrapped : [NSNumber]!
    
    var arrAnys : [Any] = []
    var arrAnysOptionl : [Any]?
    var arrAnysUnwrapped : [Any]!
    
    var dicInts : [String:Int] = [:]
    var dicIntsOptionl : [String:Int]?
    var dicIntsUnwrapped : [String:Int]!
    
    var dicFloats : [String:Float] = [:]
    var dicFloatsOptionl : [String:Float]?
    var dicFloatsUnwrapped : [String:Float]!
    
    var dicDoubles : [String:Double] = [:]
    var dicDoublesOptionl : [String:Double]?
    var dicDoublesUnwrapped : [String:Double]!
    
    var dicBools : [String:Bool] = [:]
    var dicBoolsOptionl : [String:Bool]?
    var dicBoolsUnwrapped : [String:Bool]!
    
    var dicStrings : [String:String] = [:]
    var dicStringsOptionl : [String:String]?
    var dicStringsUnwrapped : [String:String]!
    
    var dicNSStrings : [String:NSString] = [:]
    var dicNSStringsOptionl : [String:NSString]?
    var dicNSStringsUnwrapped : [String:NSString]!
    
    var dicNSNumbers : [String:NSNumber] = [:]
    var dicNSNumbersOptionl : [String:NSNumber]?
    var dicNSNumbersUnwrapped : [String:NSNumber]!
    
    var dicAnys : [String:Any] = [:]
    var dicAnysOptionl : [String:Any]?
    var dicAnysUnwrapped : [String:Any]!
    
    var nsArrStrings : NSArray = NSArray()
    var nsArrStringsOptionl : NSArray?
    var nsArrStringsUnwrapped : NSArray!
    
    var nsDicStrings : NSDictionary = NSDictionary()
    var nsDicStringsOptionl : NSDictionary?
    var nsDicStringsUnwrapped : NSDictionary!
    
}
class ContainerClass : Model {
    var arrInts : [Int] = []
    var arrIntsOptionl : [Int]?
    var arrIntsUnwrapped : [Int]!
    
    var arrFloats : [Float] = []
    var arrFloatsOptionl : [Float]?
    var arrFloatsUnwrapped : [Float]!
    
    var arrDoubles : [Double] = []
    var arrDoublesOptionl : [Double]?
    var arrDoublesUnwrapped : [Double]!
    
    var arrBools : [Bool] = []
    var arrBoolsOptionl : [Bool]?
    var arrBoolsUnwrapped : [Bool]!
    
    var arrStrings : [String] = []
    var arrStringsOptionl : [String]?
    var arrStringsUnwrapped : [String]!
    
    var arrNSStrings : [NSString] = []
    var arrNSStringsOptionl : [NSString]?
    var arrNSStringsUnwrapped : [NSString]!
    
    var arrNSNumbers : [NSNumber] = []
    var arrNSNumbersOptionl : [NSNumber]?
    var arrNSNumbersUnwrapped : [NSNumber]!
    
    var arrAnys : [Any] = []
    var arrAnysOptionl : [Any]?
    var arrAnysUnwrapped : [Any]!
    
    var dicInts : [String:Int] = [:]
    var dicIntsOptionl : [String:Int]?
    var dicIntsUnwrapped : [String:Int]!
    
    var dicFloats : [String:Float] = [:]
    var dicFloatsOptionl : [String:Float]?
    var dicFloatsUnwrapped : [String:Float]!
    
    var dicDoubles : [String:Double] = [:]
    var dicDoublesOptionl : [String:Double]?
    var dicDoublesUnwrapped : [String:Double]!
    
    var dicBools : [String:Bool] = [:]
    var dicBoolsOptionl : [String:Bool]?
    var dicBoolsUnwrapped : [String:Bool]!
    
    var dicStrings : [String:String] = [:]
    var dicStringsOptionl : [String:String]?
    var dicStringsUnwrapped : [String:String]!
    
    var dicNSStrings : [String:NSString] = [:]
    var dicNSStringsOptionl : [String:NSString]?
    var dicNSStringsUnwrapped : [String:NSString]!
    
    var dicNSNumbers : [String:NSNumber] = [:]
    var dicNSNumbersOptionl : [String:NSNumber]?
    var dicNSNumbersUnwrapped : [String:NSNumber]!
    
    var dicAnys : [String:Any] = [:]
    var dicAnysOptionl : [String:Any]?
    var dicAnysUnwrapped : [String:Any]!
    
    var nsArrStrings : NSArray = NSArray()
    var nsArrStringsOptionl : NSArray?
    var nsArrStringsUnwrapped : NSArray!
    
    var nsDicStrings : NSDictionary = NSDictionary()
    var nsDicStringsOptionl : NSDictionary?
    var nsDicStringsUnwrapped : NSDictionary!
    
    required init() {}
}

class _2_ContainerTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // test container type one by one
        
    /// Test [Int] in struct to json string and convert back
    func testStructArrIntsToJson () {
        
        var model = ContainerStruct()
        let aValue : [Int] = [defaultValueForType(Int.self)!, empertyValueForType(Int.self)!]
        model.arrInts = aValue
        model.arrIntsOptionl = aValue
        model.arrIntsUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.arrInts, aValue)
        XCTAssertEqual(modelResult?.arrIntsOptionl, aValue)
        XCTAssertEqual(modelResult?.arrIntsUnwrapped, aValue)
        
    }
    
        
    /// Test [Float] in struct to json string and convert back
    func testStructArrFloatsToJson () {
        
        var model = ContainerStruct()
        let aValue : [Float] = [defaultValueForType(Float.self)!, empertyValueForType(Float.self)!]
        model.arrFloats = aValue
        model.arrFloatsOptionl = aValue
        model.arrFloatsUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.arrFloats, aValue)
        XCTAssertEqual(modelResult?.arrFloatsOptionl, aValue)
        XCTAssertEqual(modelResult?.arrFloatsUnwrapped, aValue)
        
    }
    
        
    /// Test [Double] in struct to json string and convert back
    func testStructArrDoublesToJson () {
        
        var model = ContainerStruct()
        let aValue : [Double] = [defaultValueForType(Double.self)!, empertyValueForType(Double.self)!]
        model.arrDoubles = aValue
        model.arrDoublesOptionl = aValue
        model.arrDoublesUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.arrDoubles, aValue)
        XCTAssertEqual(modelResult?.arrDoublesOptionl, aValue)
        XCTAssertEqual(modelResult?.arrDoublesUnwrapped, aValue)
        
    }
    
        
    /// Test [Bool] in struct to json string and convert back
    func testStructArrBoolsToJson () {
        
        var model = ContainerStruct()
        let aValue : [Bool] = [defaultValueForType(Bool.self)!, empertyValueForType(Bool.self)!]
        model.arrBools = aValue
        model.arrBoolsOptionl = aValue
        model.arrBoolsUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.arrBools, aValue)
        XCTAssertEqual(modelResult?.arrBoolsOptionl, aValue)
        XCTAssertEqual(modelResult?.arrBoolsUnwrapped, aValue)
        
    }
    
        
    /// Test [String] in struct to json string and convert back
    func testStructArrStringsToJson () {
        
        var model = ContainerStruct()
        let aValue : [String] = [defaultValueForType(String.self)!, empertyValueForType(String.self)!]
        model.arrStrings = aValue
        model.arrStringsOptionl = aValue
        model.arrStringsUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.arrStrings, aValue)
        XCTAssertEqual(modelResult?.arrStringsOptionl, aValue)
        XCTAssertEqual(modelResult?.arrStringsUnwrapped, aValue)
        
    }
    
        
    /// Test [NSString] in struct to json string and convert back
    func testStructArrNSStringsToJson () {
        
        var model = ContainerStruct()
        let aValue : [NSString] = [defaultValueForType(NSString.self)!, empertyValueForType(NSString.self)!]
        model.arrNSStrings = aValue
        model.arrNSStringsOptionl = aValue
        model.arrNSStringsUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.arrNSStrings, aValue)
        XCTAssertEqual(modelResult?.arrNSStringsOptionl, aValue)
        XCTAssertEqual(modelResult?.arrNSStringsUnwrapped, aValue)
        
    }
    
        
    /// Test [NSNumber] in struct to json string and convert back
    func testStructArrNSNumbersToJson () {
        
        var model = ContainerStruct()
        let aValue : [NSNumber] = [defaultValueForType(NSNumber.self)!, empertyValueForType(NSNumber.self)!]
        model.arrNSNumbers = aValue
        model.arrNSNumbersOptionl = aValue
        model.arrNSNumbersUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.arrNSNumbers, aValue)
        XCTAssertEqual(modelResult?.arrNSNumbersOptionl, aValue)
        XCTAssertEqual(modelResult?.arrNSNumbersUnwrapped, aValue)
        
    }
    
        
    /// Test [Any] in struct to json string and convert back
    func testStructArrAnysToJson () {
        
        var model = ContainerStruct()
        let aValue : [Any] = [defaultValueForType(Any.self)!, empertyValueForType(Any.self)!]
        model.arrAnys = aValue
        model.arrAnysOptionl = aValue
        model.arrAnysUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        let value1 = aValue[0] as! String
        let value2 = aValue[1] as! Int
        XCTAssertEqual(modelResult?.arrAnys[0] as? String, value1)
        XCTAssertEqual(modelResult?.arrAnys[1] as? Int, value2)
        XCTAssertEqual(modelResult?.arrAnysOptionl?[0] as? String, value1)
        XCTAssertEqual(modelResult?.arrAnysOptionl?[1] as? Int, value2)
        XCTAssertEqual(modelResult?.arrAnysUnwrapped?[0] as? String, value1)
        XCTAssertEqual(modelResult?.arrAnysUnwrapped?[1] as? Int, value2)
        
    }
    
        
    /// Test [String:Int] in struct to json string and convert back
    func testStructDicIntsToJson () {
        
        var model = ContainerStruct()
        let aValue : [String:Int] = ["key1":defaultValueForType(Int.self)!, "key2":empertyValueForType(Int.self)!]
        model.dicInts = aValue
        model.dicIntsOptionl = aValue
        model.dicIntsUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.dicInts, aValue)
        XCTAssertEqual(modelResult?.dicIntsOptionl, aValue)
        XCTAssertEqual(modelResult?.dicIntsUnwrapped, aValue)
        
    }
    
        
    /// Test [String:Float] in struct to json string and convert back
    func testStructDicFloatsToJson () {
        
        var model = ContainerStruct()
        let aValue : [String:Float] = ["key1":defaultValueForType(Float.self)!, "key2":empertyValueForType(Float.self)!]
        model.dicFloats = aValue
        model.dicFloatsOptionl = aValue
        model.dicFloatsUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.dicFloats, aValue)
        XCTAssertEqual(modelResult?.dicFloatsOptionl, aValue)
        XCTAssertEqual(modelResult?.dicFloatsUnwrapped, aValue)
        
    }
    
        
    /// Test [String:Double] in struct to json string and convert back
    func testStructDicDoublesToJson () {
        
        var model = ContainerStruct()
        let aValue : [String:Double] = ["key1":defaultValueForType(Double.self)!, "key2":empertyValueForType(Double.self)!]
        model.dicDoubles = aValue
        model.dicDoublesOptionl = aValue
        model.dicDoublesUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.dicDoubles, aValue)
        XCTAssertEqual(modelResult?.dicDoublesOptionl, aValue)
        XCTAssertEqual(modelResult?.dicDoublesUnwrapped, aValue)
        
    }
    
        
    /// Test [String:Bool] in struct to json string and convert back
    func testStructDicBoolsToJson () {
        
        var model = ContainerStruct()
        let aValue : [String:Bool] = ["key1":defaultValueForType(Bool.self)!, "key2":empertyValueForType(Bool.self)!]
        model.dicBools = aValue
        model.dicBoolsOptionl = aValue
        model.dicBoolsUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.dicBools, aValue)
        XCTAssertEqual(modelResult?.dicBoolsOptionl, aValue)
        XCTAssertEqual(modelResult?.dicBoolsUnwrapped, aValue)
        
    }
    
        
    /// Test [String:String] in struct to json string and convert back
    func testStructDicStringsToJson () {
        
        var model = ContainerStruct()
        let aValue : [String:String] = ["key1":defaultValueForType(String.self)!, "key2":empertyValueForType(String.self)!]
        model.dicStrings = aValue
        model.dicStringsOptionl = aValue
        model.dicStringsUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.dicStrings, aValue)
        XCTAssertEqual(modelResult?.dicStringsOptionl, aValue)
        XCTAssertEqual(modelResult?.dicStringsUnwrapped, aValue)
        
    }
    
        
    /// Test [String:NSString] in struct to json string and convert back
    func testStructDicNSStringsToJson () {
        
        var model = ContainerStruct()
        let aValue : [String:NSString] = ["key1":defaultValueForType(NSString.self)!, "key2":empertyValueForType(NSString.self)!]
        model.dicNSStrings = aValue
        model.dicNSStringsOptionl = aValue
        model.dicNSStringsUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.dicNSStrings, aValue)
        XCTAssertEqual(modelResult?.dicNSStringsOptionl, aValue)
        XCTAssertEqual(modelResult?.dicNSStringsUnwrapped, aValue)
        
    }
    
        
    /// Test [String:NSNumber] in struct to json string and convert back
    func testStructDicNSNumbersToJson () {
        
        var model = ContainerStruct()
        let aValue : [String:NSNumber] = ["key1":defaultValueForType(NSNumber.self)!, "key2":empertyValueForType(NSNumber.self)!]
        model.dicNSNumbers = aValue
        model.dicNSNumbersOptionl = aValue
        model.dicNSNumbersUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.dicNSNumbers, aValue)
        XCTAssertEqual(modelResult?.dicNSNumbersOptionl, aValue)
        XCTAssertEqual(modelResult?.dicNSNumbersUnwrapped, aValue)
        
    }
    
        
    /// Test [String:Any] in struct to json string and convert back
    func testStructDicAnysToJson () {
        
        var model = ContainerStruct()
        let aValue : [String:Any] = ["key1":defaultValueForType(Any.self)!, "key2":empertyValueForType(Any.self)!]
        model.dicAnys = aValue
        model.dicAnysOptionl = aValue
        model.dicAnysUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        let value1 = aValue["key1"] as! String
        let value2 = aValue["key2"] as! Int
        XCTAssertEqual(modelResult?.dicAnys["key1"] as? String, value1)
        XCTAssertEqual(modelResult?.dicAnys["key2"] as? Int, value2)
        XCTAssertEqual(modelResult?.dicAnysOptionl?["key1"] as? String, value1)
        XCTAssertEqual(modelResult?.dicAnysOptionl?["key2"] as? Int, value2)
        XCTAssertEqual(modelResult?.dicAnysUnwrapped?["key1"] as? String, value1)
        XCTAssertEqual(modelResult?.dicAnysUnwrapped?["key2"] as? Int, value2)
        
    }
    
        
    /// Test NSArray in struct to json string and convert back
    func testStructNSArrayToJson () {
        
        var model = ContainerStruct()
        let aValue : NSArray = [defaultValueForType(String.self)!, empertyValueForType(String.self)!]
        model.nsArrStrings = aValue
        model.nsArrStringsOptionl = aValue
        model.nsArrStringsUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.nsArrStrings, aValue)
        XCTAssertEqual(modelResult?.nsArrStringsOptionl, aValue)
        XCTAssertEqual(modelResult?.nsArrStringsUnwrapped, aValue)
        
    }
    
        
    /// Test NSDictionary in struct to json string and convert back
    func testStructNSDictionaryToJson () {
        
        var model = ContainerStruct()
        let aValue : NSDictionary = ["key1":defaultValueForType(String.self)!, "key2":empertyValueForType(String.self)!]
        model.nsDicStrings = aValue
        model.nsDicStringsOptionl = aValue
        model.nsDicStringsUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.nsDicStrings, aValue)
        XCTAssertEqual(modelResult?.nsDicStringsOptionl, aValue)
        XCTAssertEqual(modelResult?.nsDicStringsUnwrapped, aValue)
        
    }
    

        
    /// Test [Int] in class to json string and convert back
    func testClassArrIntsToJson () {
        
        let model = ContainerClass()
        let aValue : [Int] = [defaultValueForType(Int.self)!, empertyValueForType(Int.self)!]
        model.arrInts = aValue
        model.arrIntsOptionl = aValue
        model.arrIntsUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.arrInts, aValue)
        XCTAssertEqual(modelResult?.arrIntsOptionl, aValue)
        XCTAssertEqual(modelResult?.arrIntsUnwrapped, aValue)
        
    }
    
        
    /// Test [Float] in class to json string and convert back
    func testClassArrFloatsToJson () {
        
        let model = ContainerClass()
        let aValue : [Float] = [defaultValueForType(Float.self)!, empertyValueForType(Float.self)!]
        model.arrFloats = aValue
        model.arrFloatsOptionl = aValue
        model.arrFloatsUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.arrFloats, aValue)
        XCTAssertEqual(modelResult?.arrFloatsOptionl, aValue)
        XCTAssertEqual(modelResult?.arrFloatsUnwrapped, aValue)
        
    }
    
        
    /// Test [Double] in class to json string and convert back
    func testClassArrDoublesToJson () {
        
        let model = ContainerClass()
        let aValue : [Double] = [defaultValueForType(Double.self)!, empertyValueForType(Double.self)!]
        model.arrDoubles = aValue
        model.arrDoublesOptionl = aValue
        model.arrDoublesUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.arrDoubles, aValue)
        XCTAssertEqual(modelResult?.arrDoublesOptionl, aValue)
        XCTAssertEqual(modelResult?.arrDoublesUnwrapped, aValue)
        
    }
    
        
    /// Test [Bool] in class to json string and convert back
    func testClassArrBoolsToJson () {
        
        let model = ContainerClass()
        let aValue : [Bool] = [defaultValueForType(Bool.self)!, empertyValueForType(Bool.self)!]
        model.arrBools = aValue
        model.arrBoolsOptionl = aValue
        model.arrBoolsUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.arrBools, aValue)
        XCTAssertEqual(modelResult?.arrBoolsOptionl, aValue)
        XCTAssertEqual(modelResult?.arrBoolsUnwrapped, aValue)
        
    }
    
        
    /// Test [String] in class to json string and convert back
    func testClassArrStringsToJson () {
        
        let model = ContainerClass()
        let aValue : [String] = [defaultValueForType(String.self)!, empertyValueForType(String.self)!]
        model.arrStrings = aValue
        model.arrStringsOptionl = aValue
        model.arrStringsUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.arrStrings, aValue)
        XCTAssertEqual(modelResult?.arrStringsOptionl, aValue)
        XCTAssertEqual(modelResult?.arrStringsUnwrapped, aValue)
        
    }
    
        
    /// Test [NSString] in class to json string and convert back
    func testClassArrNSStringsToJson () {
        
        let model = ContainerClass()
        let aValue : [NSString] = [defaultValueForType(NSString.self)!, empertyValueForType(NSString.self)!]
        model.arrNSStrings = aValue
        model.arrNSStringsOptionl = aValue
        model.arrNSStringsUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.arrNSStrings, aValue)
        XCTAssertEqual(modelResult?.arrNSStringsOptionl, aValue)
        XCTAssertEqual(modelResult?.arrNSStringsUnwrapped, aValue)
        
    }
    
        
    /// Test [NSNumber] in class to json string and convert back
    func testClassArrNSNumbersToJson () {
        
        let model = ContainerClass()
        let aValue : [NSNumber] = [defaultValueForType(NSNumber.self)!, empertyValueForType(NSNumber.self)!]
        model.arrNSNumbers = aValue
        model.arrNSNumbersOptionl = aValue
        model.arrNSNumbersUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.arrNSNumbers, aValue)
        XCTAssertEqual(modelResult?.arrNSNumbersOptionl, aValue)
        XCTAssertEqual(modelResult?.arrNSNumbersUnwrapped, aValue)
        
    }
    
        
    /// Test [Any] in class to json string and convert back
    func testClassArrAnysToJson () {
        
        let model = ContainerClass()
        let aValue : [Any] = [defaultValueForType(Any.self)!, empertyValueForType(Any.self)!]
        model.arrAnys = aValue
        model.arrAnysOptionl = aValue
        model.arrAnysUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        let value1 = aValue[0] as! String
        let value2 = aValue[1] as! Int
        XCTAssertEqual(modelResult?.arrAnys[0] as? String, value1)
        XCTAssertEqual(modelResult?.arrAnys[1] as? Int, value2)
        XCTAssertEqual(modelResult?.arrAnysOptionl?[0] as? String, value1)
        XCTAssertEqual(modelResult?.arrAnysOptionl?[1] as? Int, value2)
        XCTAssertEqual(modelResult?.arrAnysUnwrapped?[0] as? String, value1)
        XCTAssertEqual(modelResult?.arrAnysUnwrapped?[1] as? Int, value2)
        
    }
    
        
    /// Test [String:Int] in class to json string and convert back
    func testClassDicIntsToJson () {
        
        let model = ContainerClass()
        let aValue : [String:Int] = ["key1":defaultValueForType(Int.self)!, "key2":empertyValueForType(Int.self)!]
        model.dicInts = aValue
        model.dicIntsOptionl = aValue
        model.dicIntsUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.dicInts, aValue)
        XCTAssertEqual(modelResult?.dicIntsOptionl, aValue)
        XCTAssertEqual(modelResult?.dicIntsUnwrapped, aValue)
        
    }
    
        
    /// Test [String:Float] in class to json string and convert back
    func testClassDicFloatsToJson () {
        
        let model = ContainerClass()
        let aValue : [String:Float] = ["key1":defaultValueForType(Float.self)!, "key2":empertyValueForType(Float.self)!]
        model.dicFloats = aValue
        model.dicFloatsOptionl = aValue
        model.dicFloatsUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.dicFloats, aValue)
        XCTAssertEqual(modelResult?.dicFloatsOptionl, aValue)
        XCTAssertEqual(modelResult?.dicFloatsUnwrapped, aValue)
        
    }
    
        
    /// Test [String:Double] in class to json string and convert back
    func testClassDicDoublesToJson () {
        
        let model = ContainerClass()
        let aValue : [String:Double] = ["key1":defaultValueForType(Double.self)!, "key2":empertyValueForType(Double.self)!]
        model.dicDoubles = aValue
        model.dicDoublesOptionl = aValue
        model.dicDoublesUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.dicDoubles, aValue)
        XCTAssertEqual(modelResult?.dicDoublesOptionl, aValue)
        XCTAssertEqual(modelResult?.dicDoublesUnwrapped, aValue)
        
    }
    
        
    /// Test [String:Bool] in class to json string and convert back
    func testClassDicBoolsToJson () {
        
        let model = ContainerClass()
        let aValue : [String:Bool] = ["key1":defaultValueForType(Bool.self)!, "key2":empertyValueForType(Bool.self)!]
        model.dicBools = aValue
        model.dicBoolsOptionl = aValue
        model.dicBoolsUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.dicBools, aValue)
        XCTAssertEqual(modelResult?.dicBoolsOptionl, aValue)
        XCTAssertEqual(modelResult?.dicBoolsUnwrapped, aValue)
        
    }
    
        
    /// Test [String:String] in class to json string and convert back
    func testClassDicStringsToJson () {
        
        let model = ContainerClass()
        let aValue : [String:String] = ["key1":defaultValueForType(String.self)!, "key2":empertyValueForType(String.self)!]
        model.dicStrings = aValue
        model.dicStringsOptionl = aValue
        model.dicStringsUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.dicStrings, aValue)
        XCTAssertEqual(modelResult?.dicStringsOptionl, aValue)
        XCTAssertEqual(modelResult?.dicStringsUnwrapped, aValue)
        
    }
    
        
    /// Test [String:NSString] in class to json string and convert back
    func testClassDicNSStringsToJson () {
        
        let model = ContainerClass()
        let aValue : [String:NSString] = ["key1":defaultValueForType(NSString.self)!, "key2":empertyValueForType(NSString.self)!]
        model.dicNSStrings = aValue
        model.dicNSStringsOptionl = aValue
        model.dicNSStringsUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.dicNSStrings, aValue)
        XCTAssertEqual(modelResult?.dicNSStringsOptionl, aValue)
        XCTAssertEqual(modelResult?.dicNSStringsUnwrapped, aValue)
        
    }
    
        
    /// Test [String:NSNumber] in class to json string and convert back
    func testClassDicNSNumbersToJson () {
        
        let model = ContainerClass()
        let aValue : [String:NSNumber] = ["key1":defaultValueForType(NSNumber.self)!, "key2":empertyValueForType(NSNumber.self)!]
        model.dicNSNumbers = aValue
        model.dicNSNumbersOptionl = aValue
        model.dicNSNumbersUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.dicNSNumbers, aValue)
        XCTAssertEqual(modelResult?.dicNSNumbersOptionl, aValue)
        XCTAssertEqual(modelResult?.dicNSNumbersUnwrapped, aValue)
        
    }
    
        
    /// Test [String:Any] in class to json string and convert back
    func testClassDicAnysToJson () {
        
        let model = ContainerClass()
        let aValue : [String:Any] = ["key1":defaultValueForType(Any.self)!, "key2":empertyValueForType(Any.self)!]
        model.dicAnys = aValue
        model.dicAnysOptionl = aValue
        model.dicAnysUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        let value1 = aValue["key1"] as! String
        let value2 = aValue["key2"] as! Int
        XCTAssertEqual(modelResult?.dicAnys["key1"] as? String, value1)
        XCTAssertEqual(modelResult?.dicAnys["key2"] as? Int, value2)
        XCTAssertEqual(modelResult?.dicAnysOptionl?["key1"] as? String, value1)
        XCTAssertEqual(modelResult?.dicAnysOptionl?["key2"] as? Int, value2)
        XCTAssertEqual(modelResult?.dicAnysUnwrapped?["key1"] as? String, value1)
        XCTAssertEqual(modelResult?.dicAnysUnwrapped?["key2"] as? Int, value2)
        
    }
    
        
    /// Test NSArray in class to json string and convert back
    func testClassNSArrayToJson () {
        
        let model = ContainerClass()
        let aValue : NSArray = [defaultValueForType(String.self)!, empertyValueForType(String.self)!]
        model.nsArrStrings = aValue
        model.nsArrStringsOptionl = aValue
        model.nsArrStringsUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.nsArrStrings, aValue)
        XCTAssertEqual(modelResult?.nsArrStringsOptionl, aValue)
        XCTAssertEqual(modelResult?.nsArrStringsUnwrapped, aValue)
        
    }
    
        
    /// Test NSDictionary in class to json string and convert back
    func testClassNSDictionaryToJson () {
        
        let model = ContainerClass()
        let aValue : NSDictionary = ["key1":defaultValueForType(String.self)!, "key2":empertyValueForType(String.self)!]
        model.nsDicStrings = aValue
        model.nsDicStringsOptionl = aValue
        model.nsDicStringsUnwrapped = aValue
        
        let jsonString = model.toJSONString();
        let modelResult = ContainerClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.nsDicStrings, aValue)
        XCTAssertEqual(modelResult?.nsDicStringsOptionl, aValue)
        XCTAssertEqual(modelResult?.nsDicStringsUnwrapped, aValue)
        
    }
    

}

