//
//  4_ExceptionTypeMismatchTest.swift
//  MJModel_Tests
//
//  Created by 黄磊 on 2019/8/8.
//  Copyright © 2019 CocoaPods. All rights reserved.
//  异常的类型不匹配测试

import Foundation
import XCTest
import MJModel



class _4_ExceptionTypeMismatchTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    // test base type one by one
    /// Test Int from String in struct to json string and convert back
    func testStructIntFromStringToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(String.self, to:Int.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(Int(value))
            
        }
    }
    /// Test Int from Float in struct to json string and convert back
    func testStructIntFromFloatToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Float.self, to:Int.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(Int(value))
            
        }
    }
    /// Test Int from Double in struct to json string and convert back
    func testStructIntFromDoubleToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Double.self, to:Int.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(Int(value))
            
        }
    }
    /// Test Int from Bool in struct to json string and convert back
    func testStructIntFromBoolToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Bool.self, to:Int.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(Int(value ? 1 : 0))
            
        }
    }
    /// Test Int from NSString in struct to json string and convert back
    func testStructIntFromNSStringToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(NSString.self, to:Int.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(Int(value as String))
            
        }
    }
    /// Test Int from NSNumber in struct to json string and convert back
    func testStructIntFromNSNumberToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(NSNumber.self, to:Int.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(Int(truncating:value))
            
        }
    }
    /// Test UInt from Int in struct to json string and convert back
    func testStructUIntFromIntToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Int.self, to:UInt.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(UInt(value >= 0 ? value : 0))
            
        }
    }
    /// Test UInt from String in struct to json string and convert back
    func testStructUIntFromStringToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(String.self, to:UInt.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(UInt(value))
            
        }
    }
    /// Test UInt from Float in struct to json string and convert back
    func testStructUIntFromFloatToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Float.self, to:UInt.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError((value >= 0 ? UInt(value) : nil))
            
        }
    }
    /// Test UInt from Double in struct to json string and convert back
    func testStructUIntFromDoubleToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Double.self, to:UInt.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError((value >= 0 ? UInt(value) : nil))
            
        }
    }
    /// Test UInt from Bool in struct to json string and convert back
    func testStructUIntFromBoolToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Bool.self, to:UInt.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(UInt(value ? 1 : 0))
            
        }
    }
    /// Test UInt from NSString in struct to json string and convert back
    func testStructUIntFromNSStringToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(NSString.self, to:UInt.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(UInt(value as String))
            
        }
    }
    /// Test UInt from NSNumber in struct to json string and convert back
    func testStructUIntFromNSNumberToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(NSNumber.self, to:UInt.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(UInt(truncating:value))
            
        }
    }
    /// Test Float from Int in struct to json string and convert back
    func testStructFloatFromIntToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Int.self, to:Float.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(Float(value))
            
        }
    }
    /// Test Float from String in struct to json string and convert back
    func testStructFloatFromStringToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(String.self, to:Float.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(Float(value))
            
        }
    }
    /// Test Float from Double in struct to json string and convert back
    func testStructFloatFromDoubleToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Double.self, to:Float.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(Float(value))
            
        }
    }
    /// Test Float from Bool in struct to json string and convert back
    func testStructFloatFromBoolToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Bool.self, to:Float.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(Float(value ? 1 : 0))
            
        }
    }
    /// Test Float from NSString in struct to json string and convert back
    func testStructFloatFromNSStringToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(NSString.self, to:Float.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(Float(value as String))
            
        }
    }
    /// Test Float from NSNumber in struct to json string and convert back
    func testStructFloatFromNSNumberToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(NSNumber.self, to:Float.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(Float(truncating:value))
            
        }
    }
    /// Test Double from Int in struct to json string and convert back
    func testStructDoubleFromIntToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Int.self, to:Double.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(Double(value))
            
        }
    }
    /// Test Double from String in struct to json string and convert back
    func testStructDoubleFromStringToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(String.self, to:Double.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(Double(value))
            
        }
    }
    /// Test Double from Float in struct to json string and convert back
    func testStructDoubleFromFloatToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Float.self, to:Double.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(Double(value))
            
        }
    }
    /// Test Double from Bool in struct to json string and convert back
    func testStructDoubleFromBoolToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Bool.self, to:Double.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(Double(value ? 1 : 0))
            
        }
    }
    /// Test Double from NSString in struct to json string and convert back
    func testStructDoubleFromNSStringToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(NSString.self, to:Double.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(Double(value as String))
            
        }
    }
    /// Test Double from NSNumber in struct to json string and convert back
    func testStructDoubleFromNSNumberToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(NSNumber.self, to:Double.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(Double(truncating:value))
            
        }
    }
    /// Test Bool from Int in struct to json string and convert back
    func testStructBoolFromIntToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Int.self, to:Bool.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(Bool(value != 0))
            
        }
    }
    /// Test Bool from String in struct to json string and convert back
    func testStructBoolFromStringToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(String.self, to:Bool.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(Bool((value as NSString).boolValue))
            
        }
    }
    /// Test Bool from Float in struct to json string and convert back
    func testStructBoolFromFloatToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Float.self, to:Bool.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(Bool(value != 0))
            
        }
    }
    /// Test Bool from Double in struct to json string and convert back
    func testStructBoolFromDoubleToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Double.self, to:Bool.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(Bool(value != 0))
            
        }
    }
    /// Test Bool from NSString in struct to json string and convert back
    func testStructBoolFromNSStringToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(NSString.self, to:Bool.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(Bool(value.boolValue))
            
        }
    }
    /// Test Bool from NSNumber in struct to json string and convert back
    func testStructBoolFromNSNumberToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(NSNumber.self, to:Bool.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(Bool(truncating:value))
            
        }
    }
    /// Test String from Int in struct to json string and convert back
    func testStructStringFromIntToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Int.self, to:String.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(String(value))
            
        }
    }
    /// Test String from Float in struct to json string and convert back
    func testStructStringFromFloatToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Float.self, to:String.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(String(value))
            
        }
    }
    /// Test String from Double in struct to json string and convert back
    func testStructStringFromDoubleToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Double.self, to:String.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(String(value))
            
        }
    }
    /// Test String from Bool in struct to json string and convert back
    func testStructStringFromBoolToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Bool.self, to:String.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(String(value))
            
        }
    }
    /// Test String from NSNumber in struct to json string and convert back
    func testStructStringFromNSNumberToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(NSNumber.self, to:String.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(String(value.stringValue))
            
        }
    }
    /// Test NSString from Int in struct to json string and convert back
    func testStructNSStringFromIntToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Int.self, to:NSString.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(NSString(string: "\(value)"))
            
        }
    }
    /// Test NSString from Float in struct to json string and convert back
    func testStructNSStringFromFloatToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Float.self, to:NSString.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(NSString(string: "\(value)"))
            
        }
    }
    /// Test NSString from Double in struct to json string and convert back
    func testStructNSStringFromDoubleToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Double.self, to:NSString.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(NSString(string: "\(value)"))
            
        }
    }
    /// Test NSString from Bool in struct to json string and convert back
    func testStructNSStringFromBoolToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Bool.self, to:NSString.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(NSString(string: "\(value)"))
            
        }
    }
    /// Test NSString from NSNumber in struct to json string and convert back
    func testStructNSStringFromNSNumberToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(NSNumber.self, to:NSString.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(NSString(string: value.stringValue))
            
        }
    }
    /// Test NSNumber from Int in struct to json string and convert back
    func testStructNSNumberFromIntToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Int.self, to:NSNumber.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(NSNumber(value:value))
            
        }
    }
    /// Test NSNumber from String in struct to json string and convert back
    func testStructNSNumberFromStringToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(String.self, to:NSNumber.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(convertStringToNSNumber(value))
            
        }
    }
    /// Test NSNumber from Float in struct to json string and convert back
    func testStructNSNumberFromFloatToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Float.self, to:NSNumber.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(NSNumber(value:value))
            
        }
    }
    /// Test NSNumber from Double in struct to json string and convert back
    func testStructNSNumberFromDoubleToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Double.self, to:NSNumber.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(NSNumber(value:value))
            
        }
    }
    /// Test NSNumber from Bool in struct to json string and convert back
    func testStructNSNumberFromBoolToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Bool.self, to:NSNumber.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(NSNumber(value:value))
            
        }
    }
    /// Test NSNumber from NSString in struct to json string and convert back
    func testStructNSNumberFromNSStringToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(NSString.self, to:NSNumber.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let _ = BaseTypeStruct.initWith(dic)
            XCTAssertThrowsError(convertStringToNSNumber(value as String))
            
        }
    }
    /// Test EnumInt from String in struct to json string and convert back
    func testStructEnumIntFromStringToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(String.self, to:EnumInt.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["enumInt":value,"enumIntOptionl":value,"enumIntUnwrapped":value]
            let _ = EnumStruct.initWith(dic)
            XCTAssertThrowsError(((Int(value) != nil) ? EnumInt(rawValue: Int(value)!) : nil))
            
        }
    }

    /// Test Int from String in class to json string and convert back
    func testClassIntFromStringToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(String.self, to:Int.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(Int(value))
            
        }
    }
    /// Test Int from Float in class to json string and convert back
    func testClassIntFromFloatToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Float.self, to:Int.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(Int(value))
            
        }
    }
    /// Test Int from Double in class to json string and convert back
    func testClassIntFromDoubleToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Double.self, to:Int.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(Int(value))
            
        }
    }
    /// Test Int from Bool in class to json string and convert back
    func testClassIntFromBoolToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Bool.self, to:Int.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(Int(value ? 1 : 0))
            
        }
    }
    /// Test Int from NSString in class to json string and convert back
    func testClassIntFromNSStringToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(NSString.self, to:Int.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(Int(value as String))
            
        }
    }
    /// Test Int from NSNumber in class to json string and convert back
    func testClassIntFromNSNumberToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(NSNumber.self, to:Int.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(Int(truncating:value))
            
        }
    }
    /// Test UInt from Int in class to json string and convert back
    func testClassUIntFromIntToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Int.self, to:UInt.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(UInt(value >= 0 ? value : 0))
            
        }
    }
    /// Test UInt from String in class to json string and convert back
    func testClassUIntFromStringToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(String.self, to:UInt.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(UInt(value))
            
        }
    }
    /// Test UInt from Float in class to json string and convert back
    func testClassUIntFromFloatToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Float.self, to:UInt.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError((value >= 0 ? UInt(value) : nil))
            
        }
    }
    /// Test UInt from Double in class to json string and convert back
    func testClassUIntFromDoubleToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Double.self, to:UInt.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError((value >= 0 ? UInt(value) : nil))
            
        }
    }
    /// Test UInt from Bool in class to json string and convert back
    func testClassUIntFromBoolToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Bool.self, to:UInt.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(UInt(value ? 1 : 0))
            
        }
    }
    /// Test UInt from NSString in class to json string and convert back
    func testClassUIntFromNSStringToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(NSString.self, to:UInt.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(UInt(value as String))
            
        }
    }
    /// Test UInt from NSNumber in class to json string and convert back
    func testClassUIntFromNSNumberToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(NSNumber.self, to:UInt.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(UInt(truncating:value))
            
        }
    }
    /// Test Float from Int in class to json string and convert back
    func testClassFloatFromIntToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Int.self, to:Float.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(Float(value))
            
        }
    }
    /// Test Float from String in class to json string and convert back
    func testClassFloatFromStringToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(String.self, to:Float.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(Float(value))
            
        }
    }
    /// Test Float from Double in class to json string and convert back
    func testClassFloatFromDoubleToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Double.self, to:Float.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(Float(value))
            
        }
    }
    /// Test Float from Bool in class to json string and convert back
    func testClassFloatFromBoolToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Bool.self, to:Float.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(Float(value ? 1 : 0))
            
        }
    }
    /// Test Float from NSString in class to json string and convert back
    func testClassFloatFromNSStringToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(NSString.self, to:Float.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(Float(value as String))
            
        }
    }
    /// Test Float from NSNumber in class to json string and convert back
    func testClassFloatFromNSNumberToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(NSNumber.self, to:Float.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(Float(truncating:value))
            
        }
    }
    /// Test Double from Int in class to json string and convert back
    func testClassDoubleFromIntToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Int.self, to:Double.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(Double(value))
            
        }
    }
    /// Test Double from String in class to json string and convert back
    func testClassDoubleFromStringToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(String.self, to:Double.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(Double(value))
            
        }
    }
    /// Test Double from Float in class to json string and convert back
    func testClassDoubleFromFloatToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Float.self, to:Double.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(Double(value))
            
        }
    }
    /// Test Double from Bool in class to json string and convert back
    func testClassDoubleFromBoolToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Bool.self, to:Double.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(Double(value ? 1 : 0))
            
        }
    }
    /// Test Double from NSString in class to json string and convert back
    func testClassDoubleFromNSStringToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(NSString.self, to:Double.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(Double(value as String))
            
        }
    }
    /// Test Double from NSNumber in class to json string and convert back
    func testClassDoubleFromNSNumberToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(NSNumber.self, to:Double.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(Double(truncating:value))
            
        }
    }
    /// Test Bool from Int in class to json string and convert back
    func testClassBoolFromIntToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Int.self, to:Bool.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(Bool(value != 0))
            
        }
    }
    /// Test Bool from String in class to json string and convert back
    func testClassBoolFromStringToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(String.self, to:Bool.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(Bool((value as NSString).boolValue))
            
        }
    }
    /// Test Bool from Float in class to json string and convert back
    func testClassBoolFromFloatToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Float.self, to:Bool.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(Bool(value != 0))
            
        }
    }
    /// Test Bool from Double in class to json string and convert back
    func testClassBoolFromDoubleToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Double.self, to:Bool.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(Bool(value != 0))
            
        }
    }
    /// Test Bool from NSString in class to json string and convert back
    func testClassBoolFromNSStringToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(NSString.self, to:Bool.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(Bool(value.boolValue))
            
        }
    }
    /// Test Bool from NSNumber in class to json string and convert back
    func testClassBoolFromNSNumberToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(NSNumber.self, to:Bool.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(Bool(truncating:value))
            
        }
    }
    /// Test String from Int in class to json string and convert back
    func testClassStringFromIntToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Int.self, to:String.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(String(value))
            
        }
    }
    /// Test String from Float in class to json string and convert back
    func testClassStringFromFloatToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Float.self, to:String.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(String(value))
            
        }
    }
    /// Test String from Double in class to json string and convert back
    func testClassStringFromDoubleToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Double.self, to:String.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(String(value))
            
        }
    }
    /// Test String from Bool in class to json string and convert back
    func testClassStringFromBoolToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Bool.self, to:String.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(String(value))
            
        }
    }
    /// Test String from NSNumber in class to json string and convert back
    func testClassStringFromNSNumberToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(NSNumber.self, to:String.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(String(value.stringValue))
            
        }
    }
    /// Test NSString from Int in class to json string and convert back
    func testClassNSStringFromIntToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Int.self, to:NSString.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(NSString(string: "\(value)"))
            
        }
    }
    /// Test NSString from Float in class to json string and convert back
    func testClassNSStringFromFloatToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Float.self, to:NSString.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(NSString(string: "\(value)"))
            
        }
    }
    /// Test NSString from Double in class to json string and convert back
    func testClassNSStringFromDoubleToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Double.self, to:NSString.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(NSString(string: "\(value)"))
            
        }
    }
    /// Test NSString from Bool in class to json string and convert back
    func testClassNSStringFromBoolToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Bool.self, to:NSString.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(NSString(string: "\(value)"))
            
        }
    }
    /// Test NSString from NSNumber in class to json string and convert back
    func testClassNSStringFromNSNumberToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(NSNumber.self, to:NSString.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(NSString(string: value.stringValue))
            
        }
    }
    /// Test NSNumber from Int in class to json string and convert back
    func testClassNSNumberFromIntToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Int.self, to:NSNumber.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(NSNumber(value:value))
            
        }
    }
    /// Test NSNumber from String in class to json string and convert back
    func testClassNSNumberFromStringToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(String.self, to:NSNumber.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(convertStringToNSNumber(value))
            
        }
    }
    /// Test NSNumber from Float in class to json string and convert back
    func testClassNSNumberFromFloatToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Float.self, to:NSNumber.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(NSNumber(value:value))
            
        }
    }
    /// Test NSNumber from Double in class to json string and convert back
    func testClassNSNumberFromDoubleToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Double.self, to:NSNumber.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(NSNumber(value:value))
            
        }
    }
    /// Test NSNumber from Bool in class to json string and convert back
    func testClassNSNumberFromBoolToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(Bool.self, to:NSNumber.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(NSNumber(value:value))
            
        }
    }
    /// Test NSNumber from NSString in class to json string and convert back
    func testClassNSNumberFromNSStringToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(NSString.self, to:NSNumber.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let _ = BaseTypeClass.initWith(dic)
            XCTAssertThrowsError(convertStringToNSNumber(value as String))
            
        }
    }
    /// Test EnumInt from String in class to json string and convert back
    func testClassEnumIntFromStringToModel () {
    
        let arrValues = mismatchExceptionValuesFrom(String.self, to:EnumInt.self)
        if arrValues == nil {
            return
        }
        for value in arrValues! {
        
            let dic = ["enumInt":value,"enumIntOptionl":value,"enumIntUnwrapped":value]
            let _ = EnumClass.initWith(dic)
            XCTAssertThrowsError(((Int(value) != nil) ? EnumInt(rawValue: Int(value)!) : nil))
            
        }
    }


}

