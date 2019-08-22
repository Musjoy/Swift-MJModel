//
//  MismatchTypeTest.swift
//  MJModel_Tests
//
//  Created by 黄磊 on 2019/8/7.
//  Copyright © 2019 CocoaPods. All rights reserved.
//  类型不匹配测试

import Foundation
import XCTest
import MJModel



class _3_MismatchTypeTest: XCTestCase {

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
    
        let arrValues = mismatchValuesFrom(String.self, to:Int.self)
        let arrResults = mismatchResultsFrom(String.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.int, empertyValueForType(Int.self)!)
                XCTAssertNil(modelResult?.intOptionl)
                XCTAssertNil(modelResult?.intUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.int, resultValue)
                XCTAssertEqual(modelResult?.intOptionl, resultValue)
                XCTAssertEqual(modelResult?.intUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Int from Float in struct to json string and convert back
    func testStructIntFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:Int.self)
        let arrResults = mismatchResultsFrom(Float.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.int, empertyValueForType(Int.self)!)
                XCTAssertNil(modelResult?.intOptionl)
                XCTAssertNil(modelResult?.intUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.int, resultValue)
                XCTAssertEqual(modelResult?.intOptionl, resultValue)
                XCTAssertEqual(modelResult?.intUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Int from Double in struct to json string and convert back
    func testStructIntFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:Int.self)
        let arrResults = mismatchResultsFrom(Double.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.int, empertyValueForType(Int.self)!)
                XCTAssertNil(modelResult?.intOptionl)
                XCTAssertNil(modelResult?.intUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.int, resultValue)
                XCTAssertEqual(modelResult?.intOptionl, resultValue)
                XCTAssertEqual(modelResult?.intUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Int from Bool in struct to json string and convert back
    func testStructIntFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:Int.self)
        let arrResults = mismatchResultsFrom(Bool.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.int, empertyValueForType(Int.self)!)
                XCTAssertNil(modelResult?.intOptionl)
                XCTAssertNil(modelResult?.intUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.int, resultValue)
                XCTAssertEqual(modelResult?.intOptionl, resultValue)
                XCTAssertEqual(modelResult?.intUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Int from NSString in struct to json string and convert back
    func testStructIntFromNSStringToModel () {
    
        let arrValues = mismatchValuesFrom(NSString.self, to:Int.self)
        let arrResults = mismatchResultsFrom(NSString.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.int, empertyValueForType(Int.self)!)
                XCTAssertNil(modelResult?.intOptionl)
                XCTAssertNil(modelResult?.intUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.int, resultValue)
                XCTAssertEqual(modelResult?.intOptionl, resultValue)
                XCTAssertEqual(modelResult?.intUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Int from NSNumber in struct to json string and convert back
    func testStructIntFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:Int.self)
        let arrResults = mismatchResultsFrom(NSNumber.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.int, empertyValueForType(Int.self)!)
                XCTAssertNil(modelResult?.intOptionl)
                XCTAssertNil(modelResult?.intUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.int, resultValue)
                XCTAssertEqual(modelResult?.intOptionl, resultValue)
                XCTAssertEqual(modelResult?.intUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Int from Any in struct to json string and convert back
    func testStructIntFromAnyToModel () {
    
        let arrValues = mismatchValuesFrom(Any.self, to:Int.self)
        let arrResults = mismatchResultsFrom(Any.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.int, empertyValueForType(Int.self)!)
                XCTAssertNil(modelResult?.intOptionl)
                XCTAssertNil(modelResult?.intUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.int, resultValue)
                XCTAssertEqual(modelResult?.intOptionl, resultValue)
                XCTAssertEqual(modelResult?.intUnwrapped, resultValue)
            }
        }
    }
    
    /// Test UInt from Int in struct to json string and convert back
    func testStructUIntFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:UInt.self)
        let arrResults = mismatchResultsFrom(Int.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.uInt, resultValue)
                XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
                XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
            }
        }
    }
    
    /// Test UInt from String in struct to json string and convert back
    func testStructUIntFromStringToModel () {
    
        let arrValues = mismatchValuesFrom(String.self, to:UInt.self)
        let arrResults = mismatchResultsFrom(String.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.uInt, resultValue)
                XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
                XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
            }
        }
    }
    
    /// Test UInt from Float in struct to json string and convert back
    func testStructUIntFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:UInt.self)
        let arrResults = mismatchResultsFrom(Float.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.uInt, resultValue)
                XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
                XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
            }
        }
    }
    
    /// Test UInt from Double in struct to json string and convert back
    func testStructUIntFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:UInt.self)
        let arrResults = mismatchResultsFrom(Double.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.uInt, resultValue)
                XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
                XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
            }
        }
    }
    
    /// Test UInt from Bool in struct to json string and convert back
    func testStructUIntFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:UInt.self)
        let arrResults = mismatchResultsFrom(Bool.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.uInt, resultValue)
                XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
                XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
            }
        }
    }
    
    /// Test UInt from NSString in struct to json string and convert back
    func testStructUIntFromNSStringToModel () {
    
        let arrValues = mismatchValuesFrom(NSString.self, to:UInt.self)
        let arrResults = mismatchResultsFrom(NSString.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.uInt, resultValue)
                XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
                XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
            }
        }
    }
    
    /// Test UInt from NSNumber in struct to json string and convert back
    func testStructUIntFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:UInt.self)
        let arrResults = mismatchResultsFrom(NSNumber.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.uInt, resultValue)
                XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
                XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
            }
        }
    }
    
    /// Test UInt from Any in struct to json string and convert back
    func testStructUIntFromAnyToModel () {
    
        let arrValues = mismatchValuesFrom(Any.self, to:UInt.self)
        let arrResults = mismatchResultsFrom(Any.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.uInt, resultValue)
                XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
                XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Float from Int in struct to json string and convert back
    func testStructFloatFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:Float.self)
        let arrResults = mismatchResultsFrom(Int.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.float, empertyValueForType(Float.self)!)
                XCTAssertNil(modelResult?.floatOptionl)
                XCTAssertNil(modelResult?.floatUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.float, resultValue)
                XCTAssertEqual(modelResult?.floatOptionl, resultValue)
                XCTAssertEqual(modelResult?.floatUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Float from String in struct to json string and convert back
    func testStructFloatFromStringToModel () {
    
        let arrValues = mismatchValuesFrom(String.self, to:Float.self)
        let arrResults = mismatchResultsFrom(String.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.float, empertyValueForType(Float.self)!)
                XCTAssertNil(modelResult?.floatOptionl)
                XCTAssertNil(modelResult?.floatUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.float, resultValue)
                XCTAssertEqual(modelResult?.floatOptionl, resultValue)
                XCTAssertEqual(modelResult?.floatUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Float from Double in struct to json string and convert back
    func testStructFloatFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:Float.self)
        let arrResults = mismatchResultsFrom(Double.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.float, empertyValueForType(Float.self)!)
                XCTAssertNil(modelResult?.floatOptionl)
                XCTAssertNil(modelResult?.floatUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.float, resultValue)
                XCTAssertEqual(modelResult?.floatOptionl, resultValue)
                XCTAssertEqual(modelResult?.floatUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Float from Bool in struct to json string and convert back
    func testStructFloatFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:Float.self)
        let arrResults = mismatchResultsFrom(Bool.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.float, empertyValueForType(Float.self)!)
                XCTAssertNil(modelResult?.floatOptionl)
                XCTAssertNil(modelResult?.floatUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.float, resultValue)
                XCTAssertEqual(modelResult?.floatOptionl, resultValue)
                XCTAssertEqual(modelResult?.floatUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Float from NSString in struct to json string and convert back
    func testStructFloatFromNSStringToModel () {
    
        let arrValues = mismatchValuesFrom(NSString.self, to:Float.self)
        let arrResults = mismatchResultsFrom(NSString.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.float, empertyValueForType(Float.self)!)
                XCTAssertNil(modelResult?.floatOptionl)
                XCTAssertNil(modelResult?.floatUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.float, resultValue)
                XCTAssertEqual(modelResult?.floatOptionl, resultValue)
                XCTAssertEqual(modelResult?.floatUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Float from NSNumber in struct to json string and convert back
    func testStructFloatFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:Float.self)
        let arrResults = mismatchResultsFrom(NSNumber.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.float, empertyValueForType(Float.self)!)
                XCTAssertNil(modelResult?.floatOptionl)
                XCTAssertNil(modelResult?.floatUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.float, resultValue)
                XCTAssertEqual(modelResult?.floatOptionl, resultValue)
                XCTAssertEqual(modelResult?.floatUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Float from Any in struct to json string and convert back
    func testStructFloatFromAnyToModel () {
    
        let arrValues = mismatchValuesFrom(Any.self, to:Float.self)
        let arrResults = mismatchResultsFrom(Any.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.float, empertyValueForType(Float.self)!)
                XCTAssertNil(modelResult?.floatOptionl)
                XCTAssertNil(modelResult?.floatUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.float, resultValue)
                XCTAssertEqual(modelResult?.floatOptionl, resultValue)
                XCTAssertEqual(modelResult?.floatUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Double from Int in struct to json string and convert back
    func testStructDoubleFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:Double.self)
        let arrResults = mismatchResultsFrom(Int.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.double, empertyValueForType(Double.self)!)
                XCTAssertNil(modelResult?.doubleOptionl)
                XCTAssertNil(modelResult?.doubleUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.double, resultValue)
                XCTAssertEqual(modelResult?.doubleOptionl, resultValue)
                XCTAssertEqual(modelResult?.doubleUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Double from String in struct to json string and convert back
    func testStructDoubleFromStringToModel () {
    
        let arrValues = mismatchValuesFrom(String.self, to:Double.self)
        let arrResults = mismatchResultsFrom(String.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.double, empertyValueForType(Double.self)!)
                XCTAssertNil(modelResult?.doubleOptionl)
                XCTAssertNil(modelResult?.doubleUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.double, resultValue)
                XCTAssertEqual(modelResult?.doubleOptionl, resultValue)
                XCTAssertEqual(modelResult?.doubleUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Double from Float in struct to json string and convert back
    func testStructDoubleFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:Double.self)
        let arrResults = mismatchResultsFrom(Float.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.double, empertyValueForType(Double.self)!)
                XCTAssertNil(modelResult?.doubleOptionl)
                XCTAssertNil(modelResult?.doubleUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.double, resultValue)
                XCTAssertEqual(modelResult?.doubleOptionl, resultValue)
                XCTAssertEqual(modelResult?.doubleUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Double from Bool in struct to json string and convert back
    func testStructDoubleFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:Double.self)
        let arrResults = mismatchResultsFrom(Bool.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.double, empertyValueForType(Double.self)!)
                XCTAssertNil(modelResult?.doubleOptionl)
                XCTAssertNil(modelResult?.doubleUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.double, resultValue)
                XCTAssertEqual(modelResult?.doubleOptionl, resultValue)
                XCTAssertEqual(modelResult?.doubleUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Double from NSString in struct to json string and convert back
    func testStructDoubleFromNSStringToModel () {
    
        let arrValues = mismatchValuesFrom(NSString.self, to:Double.self)
        let arrResults = mismatchResultsFrom(NSString.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.double, empertyValueForType(Double.self)!)
                XCTAssertNil(modelResult?.doubleOptionl)
                XCTAssertNil(modelResult?.doubleUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.double, resultValue)
                XCTAssertEqual(modelResult?.doubleOptionl, resultValue)
                XCTAssertEqual(modelResult?.doubleUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Double from NSNumber in struct to json string and convert back
    func testStructDoubleFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:Double.self)
        let arrResults = mismatchResultsFrom(NSNumber.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.double, empertyValueForType(Double.self)!)
                XCTAssertNil(modelResult?.doubleOptionl)
                XCTAssertNil(modelResult?.doubleUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.double, resultValue)
                XCTAssertEqual(modelResult?.doubleOptionl, resultValue)
                XCTAssertEqual(modelResult?.doubleUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Double from Any in struct to json string and convert back
    func testStructDoubleFromAnyToModel () {
    
        let arrValues = mismatchValuesFrom(Any.self, to:Double.self)
        let arrResults = mismatchResultsFrom(Any.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.double, empertyValueForType(Double.self)!)
                XCTAssertNil(modelResult?.doubleOptionl)
                XCTAssertNil(modelResult?.doubleUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.double, resultValue)
                XCTAssertEqual(modelResult?.doubleOptionl, resultValue)
                XCTAssertEqual(modelResult?.doubleUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Bool from Int in struct to json string and convert back
    func testStructBoolFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:Bool.self)
        let arrResults = mismatchResultsFrom(Int.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.bool, empertyValueForType(Bool.self)!)
                XCTAssertNil(modelResult?.boolOptionl)
                XCTAssertNil(modelResult?.boolUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.bool, resultValue)
                XCTAssertEqual(modelResult?.boolOptionl, resultValue)
                XCTAssertEqual(modelResult?.boolUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Bool from String in struct to json string and convert back
    func testStructBoolFromStringToModel () {
    
        let arrValues = mismatchValuesFrom(String.self, to:Bool.self)
        let arrResults = mismatchResultsFrom(String.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.bool, empertyValueForType(Bool.self)!)
                XCTAssertNil(modelResult?.boolOptionl)
                XCTAssertNil(modelResult?.boolUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.bool, resultValue)
                XCTAssertEqual(modelResult?.boolOptionl, resultValue)
                XCTAssertEqual(modelResult?.boolUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Bool from Float in struct to json string and convert back
    func testStructBoolFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:Bool.self)
        let arrResults = mismatchResultsFrom(Float.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.bool, empertyValueForType(Bool.self)!)
                XCTAssertNil(modelResult?.boolOptionl)
                XCTAssertNil(modelResult?.boolUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.bool, resultValue)
                XCTAssertEqual(modelResult?.boolOptionl, resultValue)
                XCTAssertEqual(modelResult?.boolUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Bool from Double in struct to json string and convert back
    func testStructBoolFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:Bool.self)
        let arrResults = mismatchResultsFrom(Double.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.bool, empertyValueForType(Bool.self)!)
                XCTAssertNil(modelResult?.boolOptionl)
                XCTAssertNil(modelResult?.boolUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.bool, resultValue)
                XCTAssertEqual(modelResult?.boolOptionl, resultValue)
                XCTAssertEqual(modelResult?.boolUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Bool from NSString in struct to json string and convert back
    func testStructBoolFromNSStringToModel () {
    
        let arrValues = mismatchValuesFrom(NSString.self, to:Bool.self)
        let arrResults = mismatchResultsFrom(NSString.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.bool, empertyValueForType(Bool.self)!)
                XCTAssertNil(modelResult?.boolOptionl)
                XCTAssertNil(modelResult?.boolUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.bool, resultValue)
                XCTAssertEqual(modelResult?.boolOptionl, resultValue)
                XCTAssertEqual(modelResult?.boolUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Bool from NSNumber in struct to json string and convert back
    func testStructBoolFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:Bool.self)
        let arrResults = mismatchResultsFrom(NSNumber.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.bool, empertyValueForType(Bool.self)!)
                XCTAssertNil(modelResult?.boolOptionl)
                XCTAssertNil(modelResult?.boolUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.bool, resultValue)
                XCTAssertEqual(modelResult?.boolOptionl, resultValue)
                XCTAssertEqual(modelResult?.boolUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Bool from Any in struct to json string and convert back
    func testStructBoolFromAnyToModel () {
    
        let arrValues = mismatchValuesFrom(Any.self, to:Bool.self)
        let arrResults = mismatchResultsFrom(Any.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.bool, empertyValueForType(Bool.self)!)
                XCTAssertNil(modelResult?.boolOptionl)
                XCTAssertNil(modelResult?.boolUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.bool, resultValue)
                XCTAssertEqual(modelResult?.boolOptionl, resultValue)
                XCTAssertEqual(modelResult?.boolUnwrapped, resultValue)
            }
        }
    }
    
    /// Test String from Int in struct to json string and convert back
    func testStructStringFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:String.self)
        let arrResults = mismatchResultsFrom(Int.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.string, empertyValueForType(String.self)!)
                XCTAssertNil(modelResult?.stringOptionl)
                XCTAssertNil(modelResult?.stringUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.string, resultValue)
                XCTAssertEqual(modelResult?.stringOptionl, resultValue)
                XCTAssertEqual(modelResult?.stringUnwrapped, resultValue)
            }
        }
    }
    
    /// Test String from Float in struct to json string and convert back
    func testStructStringFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:String.self)
        let arrResults = mismatchResultsFrom(Float.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.string, empertyValueForType(String.self)!)
                XCTAssertNil(modelResult?.stringOptionl)
                XCTAssertNil(modelResult?.stringUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.string, resultValue)
                XCTAssertEqual(modelResult?.stringOptionl, resultValue)
                XCTAssertEqual(modelResult?.stringUnwrapped, resultValue)
            }
        }
    }
    
    /// Test String from Double in struct to json string and convert back
    func testStructStringFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:String.self)
        let arrResults = mismatchResultsFrom(Double.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.string, empertyValueForType(String.self)!)
                XCTAssertNil(modelResult?.stringOptionl)
                XCTAssertNil(modelResult?.stringUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.string, resultValue)
                XCTAssertEqual(modelResult?.stringOptionl, resultValue)
                XCTAssertEqual(modelResult?.stringUnwrapped, resultValue)
            }
        }
    }
    
    /// Test String from Bool in struct to json string and convert back
    func testStructStringFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:String.self)
        let arrResults = mismatchResultsFrom(Bool.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.string, empertyValueForType(String.self)!)
                XCTAssertNil(modelResult?.stringOptionl)
                XCTAssertNil(modelResult?.stringUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.string, resultValue)
                XCTAssertEqual(modelResult?.stringOptionl, resultValue)
                XCTAssertEqual(modelResult?.stringUnwrapped, resultValue)
            }
        }
    }
    
    /// Test String from NSNumber in struct to json string and convert back
    func testStructStringFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:String.self)
        let arrResults = mismatchResultsFrom(NSNumber.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.string, empertyValueForType(String.self)!)
                XCTAssertNil(modelResult?.stringOptionl)
                XCTAssertNil(modelResult?.stringUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.string, resultValue)
                XCTAssertEqual(modelResult?.stringOptionl, resultValue)
                XCTAssertEqual(modelResult?.stringUnwrapped, resultValue)
            }
        }
    }
    
    /// Test NSString from Int in struct to json string and convert back
    func testStructNSStringFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:NSString.self)
        let arrResults = mismatchResultsFrom(Int.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSString, empertyValueForType(NSString.self)!)
                XCTAssertNil(modelResult?.nSStringOptionl)
                XCTAssertNil(modelResult?.nSStringUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.nSString, resultValue)
                XCTAssertEqual(modelResult?.nSStringOptionl, resultValue)
                XCTAssertEqual(modelResult?.nSStringUnwrapped, resultValue)
            }
        }
    }
    
    /// Test NSString from Float in struct to json string and convert back
    func testStructNSStringFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:NSString.self)
        let arrResults = mismatchResultsFrom(Float.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSString, empertyValueForType(NSString.self)!)
                XCTAssertNil(modelResult?.nSStringOptionl)
                XCTAssertNil(modelResult?.nSStringUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.nSString, resultValue)
                XCTAssertEqual(modelResult?.nSStringOptionl, resultValue)
                XCTAssertEqual(modelResult?.nSStringUnwrapped, resultValue)
            }
        }
    }
    
    /// Test NSString from Double in struct to json string and convert back
    func testStructNSStringFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:NSString.self)
        let arrResults = mismatchResultsFrom(Double.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSString, empertyValueForType(NSString.self)!)
                XCTAssertNil(modelResult?.nSStringOptionl)
                XCTAssertNil(modelResult?.nSStringUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.nSString, resultValue)
                XCTAssertEqual(modelResult?.nSStringOptionl, resultValue)
                XCTAssertEqual(modelResult?.nSStringUnwrapped, resultValue)
            }
        }
    }
    
    /// Test NSString from Bool in struct to json string and convert back
    func testStructNSStringFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:NSString.self)
        let arrResults = mismatchResultsFrom(Bool.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSString, empertyValueForType(NSString.self)!)
                XCTAssertNil(modelResult?.nSStringOptionl)
                XCTAssertNil(modelResult?.nSStringUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.nSString, resultValue)
                XCTAssertEqual(modelResult?.nSStringOptionl, resultValue)
                XCTAssertEqual(modelResult?.nSStringUnwrapped, resultValue)
            }
        }
    }
    
    /// Test NSString from NSNumber in struct to json string and convert back
    func testStructNSStringFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:NSString.self)
        let arrResults = mismatchResultsFrom(NSNumber.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSString, empertyValueForType(NSString.self)!)
                XCTAssertNil(modelResult?.nSStringOptionl)
                XCTAssertNil(modelResult?.nSStringUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.nSString, resultValue)
                XCTAssertEqual(modelResult?.nSStringOptionl, resultValue)
                XCTAssertEqual(modelResult?.nSStringUnwrapped, resultValue)
            }
        }
    }
    
    /// Test NSNumber from Int in struct to json string and convert back
    func testStructNSNumberFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:NSNumber.self)
        let arrResults = mismatchResultsFrom(Int.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSNumber, empertyValueForType(NSNumber.self)!)
                XCTAssertNil(modelResult?.nSNumberOptionl)
                XCTAssertNil(modelResult?.nSNumberUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.nSNumber, resultValue)
                XCTAssertEqual(modelResult?.nSNumberOptionl, resultValue)
                XCTAssertEqual(modelResult?.nSNumberUnwrapped, resultValue)
            }
        }
    }
    
    /// Test NSNumber from String in struct to json string and convert back
    func testStructNSNumberFromStringToModel () {
    
        let arrValues = mismatchValuesFrom(String.self, to:NSNumber.self)
        let arrResults = mismatchResultsFrom(String.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSNumber, empertyValueForType(NSNumber.self)!)
                XCTAssertNil(modelResult?.nSNumberOptionl)
                XCTAssertNil(modelResult?.nSNumberUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.nSNumber, resultValue)
                XCTAssertEqual(modelResult?.nSNumberOptionl, resultValue)
                XCTAssertEqual(modelResult?.nSNumberUnwrapped, resultValue)
            }
        }
    }
    
    /// Test NSNumber from Float in struct to json string and convert back
    func testStructNSNumberFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:NSNumber.self)
        let arrResults = mismatchResultsFrom(Float.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSNumber, empertyValueForType(NSNumber.self)!)
                XCTAssertNil(modelResult?.nSNumberOptionl)
                XCTAssertNil(modelResult?.nSNumberUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.nSNumber, resultValue)
                XCTAssertEqual(modelResult?.nSNumberOptionl, resultValue)
                XCTAssertEqual(modelResult?.nSNumberUnwrapped, resultValue)
            }
        }
    }
    
    /// Test NSNumber from Double in struct to json string and convert back
    func testStructNSNumberFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:NSNumber.self)
        let arrResults = mismatchResultsFrom(Double.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSNumber, empertyValueForType(NSNumber.self)!)
                XCTAssertNil(modelResult?.nSNumberOptionl)
                XCTAssertNil(modelResult?.nSNumberUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.nSNumber, resultValue)
                XCTAssertEqual(modelResult?.nSNumberOptionl, resultValue)
                XCTAssertEqual(modelResult?.nSNumberUnwrapped, resultValue)
            }
        }
    }
    
    /// Test NSNumber from Bool in struct to json string and convert back
    func testStructNSNumberFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:NSNumber.self)
        let arrResults = mismatchResultsFrom(Bool.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSNumber, empertyValueForType(NSNumber.self)!)
                XCTAssertNil(modelResult?.nSNumberOptionl)
                XCTAssertNil(modelResult?.nSNumberUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.nSNumber, resultValue)
                XCTAssertEqual(modelResult?.nSNumberOptionl, resultValue)
                XCTAssertEqual(modelResult?.nSNumberUnwrapped, resultValue)
            }
        }
    }
    
    /// Test NSNumber from NSString in struct to json string and convert back
    func testStructNSNumberFromNSStringToModel () {
    
        let arrValues = mismatchValuesFrom(NSString.self, to:NSNumber.self)
        let arrResults = mismatchResultsFrom(NSString.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSNumber, empertyValueForType(NSNumber.self)!)
                XCTAssertNil(modelResult?.nSNumberOptionl)
                XCTAssertNil(modelResult?.nSNumberUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.nSNumber, resultValue)
                XCTAssertEqual(modelResult?.nSNumberOptionl, resultValue)
                XCTAssertEqual(modelResult?.nSNumberUnwrapped, resultValue)
            }
        }
    }
    
    /// Test EnumInt from Int in struct to json string and convert back
    func testStructEnumIntFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:EnumInt.self)
        let arrResults = mismatchResultsFrom(Int.self, to:EnumInt.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["enumInt":value,"enumIntOptionl":value,"enumIntUnwrapped":value]
            let modelResult = EnumStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.enumInt, .One)
                XCTAssertNil(modelResult?.enumIntOptionl)
                XCTAssertNil(modelResult?.enumIntUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.enumInt, resultValue)
                XCTAssertEqual(modelResult?.enumIntOptionl, resultValue)
                XCTAssertEqual(modelResult?.enumIntUnwrapped, resultValue)
            }
        }
    }
    
    /// Test EnumInt from String in struct to json string and convert back
    func testStructEnumIntFromStringToModel () {
    
        let arrValues = mismatchValuesFrom(String.self, to:EnumInt.self)
        let arrResults = mismatchResultsFrom(String.self, to:EnumInt.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["enumInt":value,"enumIntOptionl":value,"enumIntUnwrapped":value]
            let modelResult = EnumStruct.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.enumInt, .One)
                XCTAssertNil(modelResult?.enumIntOptionl)
                XCTAssertNil(modelResult?.enumIntUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.enumInt, resultValue)
                XCTAssertEqual(modelResult?.enumIntOptionl, resultValue)
                XCTAssertEqual(modelResult?.enumIntUnwrapped, resultValue)
            }
        }
    }
    

    /// Test Int from String in class to json string and convert back
    func testClassIntFromStringToModel () {
    
        let arrValues = mismatchValuesFrom(String.self, to:Int.self)
        let arrResults = mismatchResultsFrom(String.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.int, empertyValueForType(Int.self)!)
                XCTAssertNil(modelResult?.intOptionl)
                XCTAssertNil(modelResult?.intUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.int, resultValue)
                XCTAssertEqual(modelResult?.intOptionl, resultValue)
                XCTAssertEqual(modelResult?.intUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Int from Float in class to json string and convert back
    func testClassIntFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:Int.self)
        let arrResults = mismatchResultsFrom(Float.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.int, empertyValueForType(Int.self)!)
                XCTAssertNil(modelResult?.intOptionl)
                XCTAssertNil(modelResult?.intUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.int, resultValue)
                XCTAssertEqual(modelResult?.intOptionl, resultValue)
                XCTAssertEqual(modelResult?.intUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Int from Double in class to json string and convert back
    func testClassIntFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:Int.self)
        let arrResults = mismatchResultsFrom(Double.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.int, empertyValueForType(Int.self)!)
                XCTAssertNil(modelResult?.intOptionl)
                XCTAssertNil(modelResult?.intUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.int, resultValue)
                XCTAssertEqual(modelResult?.intOptionl, resultValue)
                XCTAssertEqual(modelResult?.intUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Int from Bool in class to json string and convert back
    func testClassIntFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:Int.self)
        let arrResults = mismatchResultsFrom(Bool.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.int, empertyValueForType(Int.self)!)
                XCTAssertNil(modelResult?.intOptionl)
                XCTAssertNil(modelResult?.intUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.int, resultValue)
                XCTAssertEqual(modelResult?.intOptionl, resultValue)
                XCTAssertEqual(modelResult?.intUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Int from NSString in class to json string and convert back
    func testClassIntFromNSStringToModel () {
    
        let arrValues = mismatchValuesFrom(NSString.self, to:Int.self)
        let arrResults = mismatchResultsFrom(NSString.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.int, empertyValueForType(Int.self)!)
                XCTAssertNil(modelResult?.intOptionl)
                XCTAssertNil(modelResult?.intUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.int, resultValue)
                XCTAssertEqual(modelResult?.intOptionl, resultValue)
                XCTAssertEqual(modelResult?.intUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Int from NSNumber in class to json string and convert back
    func testClassIntFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:Int.self)
        let arrResults = mismatchResultsFrom(NSNumber.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.int, empertyValueForType(Int.self)!)
                XCTAssertNil(modelResult?.intOptionl)
                XCTAssertNil(modelResult?.intUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.int, resultValue)
                XCTAssertEqual(modelResult?.intOptionl, resultValue)
                XCTAssertEqual(modelResult?.intUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Int from Any in class to json string and convert back
    func testClassIntFromAnyToModel () {
    
        let arrValues = mismatchValuesFrom(Any.self, to:Int.self)
        let arrResults = mismatchResultsFrom(Any.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.int, empertyValueForType(Int.self)!)
                XCTAssertNil(modelResult?.intOptionl)
                XCTAssertNil(modelResult?.intUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.int, resultValue)
                XCTAssertEqual(modelResult?.intOptionl, resultValue)
                XCTAssertEqual(modelResult?.intUnwrapped, resultValue)
            }
        }
    }
    
    /// Test UInt from Int in class to json string and convert back
    func testClassUIntFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:UInt.self)
        let arrResults = mismatchResultsFrom(Int.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.uInt, resultValue)
                XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
                XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
            }
        }
    }
    
    /// Test UInt from String in class to json string and convert back
    func testClassUIntFromStringToModel () {
    
        let arrValues = mismatchValuesFrom(String.self, to:UInt.self)
        let arrResults = mismatchResultsFrom(String.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.uInt, resultValue)
                XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
                XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
            }
        }
    }
    
    /// Test UInt from Float in class to json string and convert back
    func testClassUIntFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:UInt.self)
        let arrResults = mismatchResultsFrom(Float.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.uInt, resultValue)
                XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
                XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
            }
        }
    }
    
    /// Test UInt from Double in class to json string and convert back
    func testClassUIntFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:UInt.self)
        let arrResults = mismatchResultsFrom(Double.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.uInt, resultValue)
                XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
                XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
            }
        }
    }
    
    /// Test UInt from Bool in class to json string and convert back
    func testClassUIntFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:UInt.self)
        let arrResults = mismatchResultsFrom(Bool.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.uInt, resultValue)
                XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
                XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
            }
        }
    }
    
    /// Test UInt from NSString in class to json string and convert back
    func testClassUIntFromNSStringToModel () {
    
        let arrValues = mismatchValuesFrom(NSString.self, to:UInt.self)
        let arrResults = mismatchResultsFrom(NSString.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.uInt, resultValue)
                XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
                XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
            }
        }
    }
    
    /// Test UInt from NSNumber in class to json string and convert back
    func testClassUIntFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:UInt.self)
        let arrResults = mismatchResultsFrom(NSNumber.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.uInt, resultValue)
                XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
                XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
            }
        }
    }
    
    /// Test UInt from Any in class to json string and convert back
    func testClassUIntFromAnyToModel () {
    
        let arrValues = mismatchValuesFrom(Any.self, to:UInt.self)
        let arrResults = mismatchResultsFrom(Any.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.uInt, resultValue)
                XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
                XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Float from Int in class to json string and convert back
    func testClassFloatFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:Float.self)
        let arrResults = mismatchResultsFrom(Int.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.float, empertyValueForType(Float.self)!)
                XCTAssertNil(modelResult?.floatOptionl)
                XCTAssertNil(modelResult?.floatUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.float, resultValue)
                XCTAssertEqual(modelResult?.floatOptionl, resultValue)
                XCTAssertEqual(modelResult?.floatUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Float from String in class to json string and convert back
    func testClassFloatFromStringToModel () {
    
        let arrValues = mismatchValuesFrom(String.self, to:Float.self)
        let arrResults = mismatchResultsFrom(String.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.float, empertyValueForType(Float.self)!)
                XCTAssertNil(modelResult?.floatOptionl)
                XCTAssertNil(modelResult?.floatUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.float, resultValue)
                XCTAssertEqual(modelResult?.floatOptionl, resultValue)
                XCTAssertEqual(modelResult?.floatUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Float from Double in class to json string and convert back
    func testClassFloatFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:Float.self)
        let arrResults = mismatchResultsFrom(Double.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.float, empertyValueForType(Float.self)!)
                XCTAssertNil(modelResult?.floatOptionl)
                XCTAssertNil(modelResult?.floatUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.float, resultValue)
                XCTAssertEqual(modelResult?.floatOptionl, resultValue)
                XCTAssertEqual(modelResult?.floatUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Float from Bool in class to json string and convert back
    func testClassFloatFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:Float.self)
        let arrResults = mismatchResultsFrom(Bool.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.float, empertyValueForType(Float.self)!)
                XCTAssertNil(modelResult?.floatOptionl)
                XCTAssertNil(modelResult?.floatUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.float, resultValue)
                XCTAssertEqual(modelResult?.floatOptionl, resultValue)
                XCTAssertEqual(modelResult?.floatUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Float from NSString in class to json string and convert back
    func testClassFloatFromNSStringToModel () {
    
        let arrValues = mismatchValuesFrom(NSString.self, to:Float.self)
        let arrResults = mismatchResultsFrom(NSString.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.float, empertyValueForType(Float.self)!)
                XCTAssertNil(modelResult?.floatOptionl)
                XCTAssertNil(modelResult?.floatUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.float, resultValue)
                XCTAssertEqual(modelResult?.floatOptionl, resultValue)
                XCTAssertEqual(modelResult?.floatUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Float from NSNumber in class to json string and convert back
    func testClassFloatFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:Float.self)
        let arrResults = mismatchResultsFrom(NSNumber.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.float, empertyValueForType(Float.self)!)
                XCTAssertNil(modelResult?.floatOptionl)
                XCTAssertNil(modelResult?.floatUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.float, resultValue)
                XCTAssertEqual(modelResult?.floatOptionl, resultValue)
                XCTAssertEqual(modelResult?.floatUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Float from Any in class to json string and convert back
    func testClassFloatFromAnyToModel () {
    
        let arrValues = mismatchValuesFrom(Any.self, to:Float.self)
        let arrResults = mismatchResultsFrom(Any.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.float, empertyValueForType(Float.self)!)
                XCTAssertNil(modelResult?.floatOptionl)
                XCTAssertNil(modelResult?.floatUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.float, resultValue)
                XCTAssertEqual(modelResult?.floatOptionl, resultValue)
                XCTAssertEqual(modelResult?.floatUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Double from Int in class to json string and convert back
    func testClassDoubleFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:Double.self)
        let arrResults = mismatchResultsFrom(Int.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.double, empertyValueForType(Double.self)!)
                XCTAssertNil(modelResult?.doubleOptionl)
                XCTAssertNil(modelResult?.doubleUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.double, resultValue)
                XCTAssertEqual(modelResult?.doubleOptionl, resultValue)
                XCTAssertEqual(modelResult?.doubleUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Double from String in class to json string and convert back
    func testClassDoubleFromStringToModel () {
    
        let arrValues = mismatchValuesFrom(String.self, to:Double.self)
        let arrResults = mismatchResultsFrom(String.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.double, empertyValueForType(Double.self)!)
                XCTAssertNil(modelResult?.doubleOptionl)
                XCTAssertNil(modelResult?.doubleUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.double, resultValue)
                XCTAssertEqual(modelResult?.doubleOptionl, resultValue)
                XCTAssertEqual(modelResult?.doubleUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Double from Float in class to json string and convert back
    func testClassDoubleFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:Double.self)
        let arrResults = mismatchResultsFrom(Float.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.double, empertyValueForType(Double.self)!)
                XCTAssertNil(modelResult?.doubleOptionl)
                XCTAssertNil(modelResult?.doubleUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.double, resultValue)
                XCTAssertEqual(modelResult?.doubleOptionl, resultValue)
                XCTAssertEqual(modelResult?.doubleUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Double from Bool in class to json string and convert back
    func testClassDoubleFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:Double.self)
        let arrResults = mismatchResultsFrom(Bool.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.double, empertyValueForType(Double.self)!)
                XCTAssertNil(modelResult?.doubleOptionl)
                XCTAssertNil(modelResult?.doubleUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.double, resultValue)
                XCTAssertEqual(modelResult?.doubleOptionl, resultValue)
                XCTAssertEqual(modelResult?.doubleUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Double from NSString in class to json string and convert back
    func testClassDoubleFromNSStringToModel () {
    
        let arrValues = mismatchValuesFrom(NSString.self, to:Double.self)
        let arrResults = mismatchResultsFrom(NSString.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.double, empertyValueForType(Double.self)!)
                XCTAssertNil(modelResult?.doubleOptionl)
                XCTAssertNil(modelResult?.doubleUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.double, resultValue)
                XCTAssertEqual(modelResult?.doubleOptionl, resultValue)
                XCTAssertEqual(modelResult?.doubleUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Double from NSNumber in class to json string and convert back
    func testClassDoubleFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:Double.self)
        let arrResults = mismatchResultsFrom(NSNumber.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.double, empertyValueForType(Double.self)!)
                XCTAssertNil(modelResult?.doubleOptionl)
                XCTAssertNil(modelResult?.doubleUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.double, resultValue)
                XCTAssertEqual(modelResult?.doubleOptionl, resultValue)
                XCTAssertEqual(modelResult?.doubleUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Double from Any in class to json string and convert back
    func testClassDoubleFromAnyToModel () {
    
        let arrValues = mismatchValuesFrom(Any.self, to:Double.self)
        let arrResults = mismatchResultsFrom(Any.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.double, empertyValueForType(Double.self)!)
                XCTAssertNil(modelResult?.doubleOptionl)
                XCTAssertNil(modelResult?.doubleUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.double, resultValue)
                XCTAssertEqual(modelResult?.doubleOptionl, resultValue)
                XCTAssertEqual(modelResult?.doubleUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Bool from Int in class to json string and convert back
    func testClassBoolFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:Bool.self)
        let arrResults = mismatchResultsFrom(Int.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.bool, empertyValueForType(Bool.self)!)
                XCTAssertNil(modelResult?.boolOptionl)
                XCTAssertNil(modelResult?.boolUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.bool, resultValue)
                XCTAssertEqual(modelResult?.boolOptionl, resultValue)
                XCTAssertEqual(modelResult?.boolUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Bool from String in class to json string and convert back
    func testClassBoolFromStringToModel () {
    
        let arrValues = mismatchValuesFrom(String.self, to:Bool.self)
        let arrResults = mismatchResultsFrom(String.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.bool, empertyValueForType(Bool.self)!)
                XCTAssertNil(modelResult?.boolOptionl)
                XCTAssertNil(modelResult?.boolUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.bool, resultValue)
                XCTAssertEqual(modelResult?.boolOptionl, resultValue)
                XCTAssertEqual(modelResult?.boolUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Bool from Float in class to json string and convert back
    func testClassBoolFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:Bool.self)
        let arrResults = mismatchResultsFrom(Float.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.bool, empertyValueForType(Bool.self)!)
                XCTAssertNil(modelResult?.boolOptionl)
                XCTAssertNil(modelResult?.boolUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.bool, resultValue)
                XCTAssertEqual(modelResult?.boolOptionl, resultValue)
                XCTAssertEqual(modelResult?.boolUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Bool from Double in class to json string and convert back
    func testClassBoolFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:Bool.self)
        let arrResults = mismatchResultsFrom(Double.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.bool, empertyValueForType(Bool.self)!)
                XCTAssertNil(modelResult?.boolOptionl)
                XCTAssertNil(modelResult?.boolUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.bool, resultValue)
                XCTAssertEqual(modelResult?.boolOptionl, resultValue)
                XCTAssertEqual(modelResult?.boolUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Bool from NSString in class to json string and convert back
    func testClassBoolFromNSStringToModel () {
    
        let arrValues = mismatchValuesFrom(NSString.self, to:Bool.self)
        let arrResults = mismatchResultsFrom(NSString.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.bool, empertyValueForType(Bool.self)!)
                XCTAssertNil(modelResult?.boolOptionl)
                XCTAssertNil(modelResult?.boolUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.bool, resultValue)
                XCTAssertEqual(modelResult?.boolOptionl, resultValue)
                XCTAssertEqual(modelResult?.boolUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Bool from NSNumber in class to json string and convert back
    func testClassBoolFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:Bool.self)
        let arrResults = mismatchResultsFrom(NSNumber.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.bool, empertyValueForType(Bool.self)!)
                XCTAssertNil(modelResult?.boolOptionl)
                XCTAssertNil(modelResult?.boolUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.bool, resultValue)
                XCTAssertEqual(modelResult?.boolOptionl, resultValue)
                XCTAssertEqual(modelResult?.boolUnwrapped, resultValue)
            }
        }
    }
    
    /// Test Bool from Any in class to json string and convert back
    func testClassBoolFromAnyToModel () {
    
        let arrValues = mismatchValuesFrom(Any.self, to:Bool.self)
        let arrResults = mismatchResultsFrom(Any.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.bool, empertyValueForType(Bool.self)!)
                XCTAssertNil(modelResult?.boolOptionl)
                XCTAssertNil(modelResult?.boolUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.bool, resultValue)
                XCTAssertEqual(modelResult?.boolOptionl, resultValue)
                XCTAssertEqual(modelResult?.boolUnwrapped, resultValue)
            }
        }
    }
    
    /// Test String from Int in class to json string and convert back
    func testClassStringFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:String.self)
        let arrResults = mismatchResultsFrom(Int.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.string, empertyValueForType(String.self)!)
                XCTAssertNil(modelResult?.stringOptionl)
                XCTAssertNil(modelResult?.stringUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.string, resultValue)
                XCTAssertEqual(modelResult?.stringOptionl, resultValue)
                XCTAssertEqual(modelResult?.stringUnwrapped, resultValue)
            }
        }
    }
    
    /// Test String from Float in class to json string and convert back
    func testClassStringFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:String.self)
        let arrResults = mismatchResultsFrom(Float.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.string, empertyValueForType(String.self)!)
                XCTAssertNil(modelResult?.stringOptionl)
                XCTAssertNil(modelResult?.stringUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.string, resultValue)
                XCTAssertEqual(modelResult?.stringOptionl, resultValue)
                XCTAssertEqual(modelResult?.stringUnwrapped, resultValue)
            }
        }
    }
    
    /// Test String from Double in class to json string and convert back
    func testClassStringFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:String.self)
        let arrResults = mismatchResultsFrom(Double.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.string, empertyValueForType(String.self)!)
                XCTAssertNil(modelResult?.stringOptionl)
                XCTAssertNil(modelResult?.stringUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.string, resultValue)
                XCTAssertEqual(modelResult?.stringOptionl, resultValue)
                XCTAssertEqual(modelResult?.stringUnwrapped, resultValue)
            }
        }
    }
    
    /// Test String from Bool in class to json string and convert back
    func testClassStringFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:String.self)
        let arrResults = mismatchResultsFrom(Bool.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.string, empertyValueForType(String.self)!)
                XCTAssertNil(modelResult?.stringOptionl)
                XCTAssertNil(modelResult?.stringUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.string, resultValue)
                XCTAssertEqual(modelResult?.stringOptionl, resultValue)
                XCTAssertEqual(modelResult?.stringUnwrapped, resultValue)
            }
        }
    }
    
    /// Test String from NSNumber in class to json string and convert back
    func testClassStringFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:String.self)
        let arrResults = mismatchResultsFrom(NSNumber.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.string, empertyValueForType(String.self)!)
                XCTAssertNil(modelResult?.stringOptionl)
                XCTAssertNil(modelResult?.stringUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.string, resultValue)
                XCTAssertEqual(modelResult?.stringOptionl, resultValue)
                XCTAssertEqual(modelResult?.stringUnwrapped, resultValue)
            }
        }
    }
    
    /// Test NSString from Int in class to json string and convert back
    func testClassNSStringFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:NSString.self)
        let arrResults = mismatchResultsFrom(Int.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSString, empertyValueForType(NSString.self)!)
                XCTAssertNil(modelResult?.nSStringOptionl)
                XCTAssertNil(modelResult?.nSStringUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.nSString, resultValue)
                XCTAssertEqual(modelResult?.nSStringOptionl, resultValue)
                XCTAssertEqual(modelResult?.nSStringUnwrapped, resultValue)
            }
        }
    }
    
    /// Test NSString from Float in class to json string and convert back
    func testClassNSStringFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:NSString.self)
        let arrResults = mismatchResultsFrom(Float.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSString, empertyValueForType(NSString.self)!)
                XCTAssertNil(modelResult?.nSStringOptionl)
                XCTAssertNil(modelResult?.nSStringUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.nSString, resultValue)
                XCTAssertEqual(modelResult?.nSStringOptionl, resultValue)
                XCTAssertEqual(modelResult?.nSStringUnwrapped, resultValue)
            }
        }
    }
    
    /// Test NSString from Double in class to json string and convert back
    func testClassNSStringFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:NSString.self)
        let arrResults = mismatchResultsFrom(Double.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSString, empertyValueForType(NSString.self)!)
                XCTAssertNil(modelResult?.nSStringOptionl)
                XCTAssertNil(modelResult?.nSStringUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.nSString, resultValue)
                XCTAssertEqual(modelResult?.nSStringOptionl, resultValue)
                XCTAssertEqual(modelResult?.nSStringUnwrapped, resultValue)
            }
        }
    }
    
    /// Test NSString from Bool in class to json string and convert back
    func testClassNSStringFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:NSString.self)
        let arrResults = mismatchResultsFrom(Bool.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSString, empertyValueForType(NSString.self)!)
                XCTAssertNil(modelResult?.nSStringOptionl)
                XCTAssertNil(modelResult?.nSStringUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.nSString, resultValue)
                XCTAssertEqual(modelResult?.nSStringOptionl, resultValue)
                XCTAssertEqual(modelResult?.nSStringUnwrapped, resultValue)
            }
        }
    }
    
    /// Test NSString from NSNumber in class to json string and convert back
    func testClassNSStringFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:NSString.self)
        let arrResults = mismatchResultsFrom(NSNumber.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSString, empertyValueForType(NSString.self)!)
                XCTAssertNil(modelResult?.nSStringOptionl)
                XCTAssertNil(modelResult?.nSStringUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.nSString, resultValue)
                XCTAssertEqual(modelResult?.nSStringOptionl, resultValue)
                XCTAssertEqual(modelResult?.nSStringUnwrapped, resultValue)
            }
        }
    }
    
    /// Test NSNumber from Int in class to json string and convert back
    func testClassNSNumberFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:NSNumber.self)
        let arrResults = mismatchResultsFrom(Int.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSNumber, empertyValueForType(NSNumber.self)!)
                XCTAssertNil(modelResult?.nSNumberOptionl)
                XCTAssertNil(modelResult?.nSNumberUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.nSNumber, resultValue)
                XCTAssertEqual(modelResult?.nSNumberOptionl, resultValue)
                XCTAssertEqual(modelResult?.nSNumberUnwrapped, resultValue)
            }
        }
    }
    
    /// Test NSNumber from String in class to json string and convert back
    func testClassNSNumberFromStringToModel () {
    
        let arrValues = mismatchValuesFrom(String.self, to:NSNumber.self)
        let arrResults = mismatchResultsFrom(String.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSNumber, empertyValueForType(NSNumber.self)!)
                XCTAssertNil(modelResult?.nSNumberOptionl)
                XCTAssertNil(modelResult?.nSNumberUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.nSNumber, resultValue)
                XCTAssertEqual(modelResult?.nSNumberOptionl, resultValue)
                XCTAssertEqual(modelResult?.nSNumberUnwrapped, resultValue)
            }
        }
    }
    
    /// Test NSNumber from Float in class to json string and convert back
    func testClassNSNumberFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:NSNumber.self)
        let arrResults = mismatchResultsFrom(Float.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSNumber, empertyValueForType(NSNumber.self)!)
                XCTAssertNil(modelResult?.nSNumberOptionl)
                XCTAssertNil(modelResult?.nSNumberUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.nSNumber, resultValue)
                XCTAssertEqual(modelResult?.nSNumberOptionl, resultValue)
                XCTAssertEqual(modelResult?.nSNumberUnwrapped, resultValue)
            }
        }
    }
    
    /// Test NSNumber from Double in class to json string and convert back
    func testClassNSNumberFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:NSNumber.self)
        let arrResults = mismatchResultsFrom(Double.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSNumber, empertyValueForType(NSNumber.self)!)
                XCTAssertNil(modelResult?.nSNumberOptionl)
                XCTAssertNil(modelResult?.nSNumberUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.nSNumber, resultValue)
                XCTAssertEqual(modelResult?.nSNumberOptionl, resultValue)
                XCTAssertEqual(modelResult?.nSNumberUnwrapped, resultValue)
            }
        }
    }
    
    /// Test NSNumber from Bool in class to json string and convert back
    func testClassNSNumberFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:NSNumber.self)
        let arrResults = mismatchResultsFrom(Bool.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSNumber, empertyValueForType(NSNumber.self)!)
                XCTAssertNil(modelResult?.nSNumberOptionl)
                XCTAssertNil(modelResult?.nSNumberUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.nSNumber, resultValue)
                XCTAssertEqual(modelResult?.nSNumberOptionl, resultValue)
                XCTAssertEqual(modelResult?.nSNumberUnwrapped, resultValue)
            }
        }
    }
    
    /// Test NSNumber from NSString in class to json string and convert back
    func testClassNSNumberFromNSStringToModel () {
    
        let arrValues = mismatchValuesFrom(NSString.self, to:NSNumber.self)
        let arrResults = mismatchResultsFrom(NSString.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSNumber, empertyValueForType(NSNumber.self)!)
                XCTAssertNil(modelResult?.nSNumberOptionl)
                XCTAssertNil(modelResult?.nSNumberUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.nSNumber, resultValue)
                XCTAssertEqual(modelResult?.nSNumberOptionl, resultValue)
                XCTAssertEqual(modelResult?.nSNumberUnwrapped, resultValue)
            }
        }
    }
    
    /// Test EnumInt from Int in class to json string and convert back
    func testClassEnumIntFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:EnumInt.self)
        let arrResults = mismatchResultsFrom(Int.self, to:EnumInt.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["enumInt":value,"enumIntOptionl":value,"enumIntUnwrapped":value]
            let modelResult = EnumClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.enumInt, .One)
                XCTAssertNil(modelResult?.enumIntOptionl)
                XCTAssertNil(modelResult?.enumIntUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.enumInt, resultValue)
                XCTAssertEqual(modelResult?.enumIntOptionl, resultValue)
                XCTAssertEqual(modelResult?.enumIntUnwrapped, resultValue)
            }
        }
    }
    
    /// Test EnumInt from String in class to json string and convert back
    func testClassEnumIntFromStringToModel () {
    
        let arrValues = mismatchValuesFrom(String.self, to:EnumInt.self)
        let arrResults = mismatchResultsFrom(String.self, to:EnumInt.self)
        XCTAssertNotNil(arrValues)
        for (index,value) in arrValues!.enumerated() {
        
            let dic = ["enumInt":value,"enumIntOptionl":value,"enumIntUnwrapped":value]
            let modelResult = EnumClass.initWith(dic)
            let resultValue = arrResults?[index]
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.enumInt, .One)
                XCTAssertNil(modelResult?.enumIntOptionl)
                XCTAssertNil(modelResult?.enumIntUnwrapped)
            } else {
                XCTAssertEqual(modelResult?.enumInt, resultValue)
                XCTAssertEqual(modelResult?.enumIntOptionl, resultValue)
                XCTAssertEqual(modelResult?.enumIntUnwrapped, resultValue)
            }
        }
    }
    


}

