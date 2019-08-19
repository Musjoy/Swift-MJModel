//
//  ExceptionTest.swift
//  MJModel_Tests
//
//  Created by 黄磊 on 2019/8/7.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import XCTest
import MJModel

class _4_ExceptionTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    /// Test json string to dictionary with exception
    func testJsonStringToDictionaryException () {
        
        let jsonString = "{\"name\":\"string\",\"age\":1"
        let dic = jsonString.toJSONObject()
        
        XCTAssertNil(dic)
    }
    

    
    /// Test dictionary to json string with exception
    func testDataDictionaryToJsonStringException () {

        // We get NSInvalidArgumentException, and can't catch it
        let dic = ["data":"string".data(using: .utf8)!] as [String : Any]
        let jsonString = dic.toJSONString()

        XCTAssertNil(jsonString)
    }
    
    func testBogusStringDictionaryToJsonStringException() {
        let bogusStr = String(bytes: [0xD8, 0x00] as [UInt8], encoding: String.Encoding.utf16BigEndian)!
        let dic = ["name":bogusStr] as [String : Any]
        let jsonString = dic.toJSONString()
        
        XCTAssertNil(jsonString)
    }
    
    /// Test quotation string to dictionary with exception
    func testQuotationStringToDictionaryException () {

        let jsonString = "\"fg\""
        let dic = jsonString.toJSONObject()
        
        XCTAssertNil(dic)
    }
    
    /// Test array json string to model
    func testArrayJsonStringToModel() {

        let jsonString = "[{\"name\":\"string\",\"age\":1}]"
        let model = BaseModel.initWith(jsonString)
        
        XCTAssertNil(model)
    }

    /// Test array json string to dictionary  model
    func testArrayJsonStringToDictionaryModel() {

        let jsonString = "[{\"name\":\"string\",\"age\":1}]"
        let model = [String:BaseModel].initWith(jsonString)
        
        XCTAssertNil(model)
    }
    
    /// Test dictionary json string to array  model
    func testDictionaryJsonStringToArrayModel() {

        let jsonString = "{\"name\":\"string\",\"age\":1}"
        let model = [BaseModel].initWith(jsonString)
        
        XCTAssertNil(model)
    }
    
    
}
