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
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = Int(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.int, resultValue)
            XCTAssertEqual(modelResult?.intOptionl, resultValue)
            XCTAssertEqual(modelResult?.intUnwrapped, resultValue)
        }
    }
    
    /// Test Int from String in struct to json string and convert back
    func testStructIntFromStringUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(String.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : Int? = Int(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.int, empertyValueForType(Int.self)!)
                XCTAssertNil(modelResult?.intOptionl)
                XCTAssertNil(modelResult?.intUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Int.self)!) {
                    XCTAssertEqual(modelResult?.int, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.int, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.intOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.intUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Int from Float in struct to json string and convert back
    func testStructIntFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = Int(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.int, resultValue)
            XCTAssertEqual(modelResult?.intOptionl, resultValue)
            XCTAssertEqual(modelResult?.intUnwrapped, resultValue)
        }
    }
    
    /// Test Int from Float in struct to json string and convert back
    func testStructIntFromFloatUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Float.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : Int? = Int(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.int, empertyValueForType(Int.self)!)
                XCTAssertNil(modelResult?.intOptionl)
                XCTAssertNil(modelResult?.intUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Int.self)!) {
                    XCTAssertEqual(modelResult?.int, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.int, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.intOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.intUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Int from Double in struct to json string and convert back
    func testStructIntFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = Int(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.int, resultValue)
            XCTAssertEqual(modelResult?.intOptionl, resultValue)
            XCTAssertEqual(modelResult?.intUnwrapped, resultValue)
        }
    }
    
    /// Test Int from Double in struct to json string and convert back
    func testStructIntFromDoubleUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Double.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : Int? = Int(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.int, empertyValueForType(Int.self)!)
                XCTAssertNil(modelResult?.intOptionl)
                XCTAssertNil(modelResult?.intUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Int.self)!) {
                    XCTAssertEqual(modelResult?.int, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.int, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.intOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.intUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Int from Bool in struct to json string and convert back
    func testStructIntFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = Int(value ? 1 : 0)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.int, resultValue)
            XCTAssertEqual(modelResult?.intOptionl, resultValue)
            XCTAssertEqual(modelResult?.intUnwrapped, resultValue)
        }
    }
    
    /// Test Int from Bool in struct to json string and convert back
    func testStructIntFromBoolUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Bool.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : Int? = Int(value ? 1 : 0)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.int, empertyValueForType(Int.self)!)
                XCTAssertNil(modelResult?.intOptionl)
                XCTAssertNil(modelResult?.intUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Int.self)!) {
                    XCTAssertEqual(modelResult?.int, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.int, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.intOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.intUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Int from NSString in struct to json string and convert back
    func testStructIntFromNSStringToModel () {
    
        let arrValues = mismatchValuesFrom(NSString.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = Int(value as String)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.int, resultValue)
            XCTAssertEqual(modelResult?.intOptionl, resultValue)
            XCTAssertEqual(modelResult?.intUnwrapped, resultValue)
        }
    }
    
    /// Test Int from NSString in struct to json string and convert back
    func testStructIntFromNSStringUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(NSString.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : Int? = Int(value as String)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.int, empertyValueForType(Int.self)!)
                XCTAssertNil(modelResult?.intOptionl)
                XCTAssertNil(modelResult?.intUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Int.self)!) {
                    XCTAssertEqual(modelResult?.int, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.int, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.intOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.intUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Int from NSNumber in struct to json string and convert back
    func testStructIntFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = Int(truncating:value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.int, resultValue)
            XCTAssertEqual(modelResult?.intOptionl, resultValue)
            XCTAssertEqual(modelResult?.intUnwrapped, resultValue)
        }
    }
    
    /// Test Int from NSNumber in struct to json string and convert back
    func testStructIntFromNSNumberUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(NSNumber.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : Int? = Int(truncating:value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.int, empertyValueForType(Int.self)!)
                XCTAssertNil(modelResult?.intOptionl)
                XCTAssertNil(modelResult?.intUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Int.self)!) {
                    XCTAssertEqual(modelResult?.int, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.int, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.intOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.intUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test UInt from Int in struct to json string and convert back
    func testStructUIntFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = UInt(value >= 0 ? value : 0)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.uInt, resultValue)
            XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
            XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
        }
    }
    
    /// Test UInt from Int in struct to json string and convert back
    func testStructUIntFromIntUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Int.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : UInt? = UInt(value >= 0 ? value : 0)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(UInt.self)!) {
                    XCTAssertEqual(modelResult?.uInt, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.uInt, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.uIntOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.uIntUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test UInt from String in struct to json string and convert back
    func testStructUIntFromStringToModel () {
    
        let arrValues = mismatchValuesFrom(String.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = UInt(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.uInt, resultValue)
            XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
            XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
        }
    }
    
    /// Test UInt from String in struct to json string and convert back
    func testStructUIntFromStringUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(String.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : UInt? = UInt(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(UInt.self)!) {
                    XCTAssertEqual(modelResult?.uInt, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.uInt, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.uIntOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.uIntUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test UInt from Float in struct to json string and convert back
    func testStructUIntFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = (value >= 0 ? UInt(value) : nil)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.uInt, resultValue)
            XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
            XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
        }
    }
    
    /// Test UInt from Float in struct to json string and convert back
    func testStructUIntFromFloatUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Float.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : UInt? = (value >= 0 ? UInt(value) : nil)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(UInt.self)!) {
                    XCTAssertEqual(modelResult?.uInt, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.uInt, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.uIntOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.uIntUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test UInt from Double in struct to json string and convert back
    func testStructUIntFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = (value >= 0 ? UInt(value) : nil)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.uInt, resultValue)
            XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
            XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
        }
    }
    
    /// Test UInt from Double in struct to json string and convert back
    func testStructUIntFromDoubleUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Double.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : UInt? = (value >= 0 ? UInt(value) : nil)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(UInt.self)!) {
                    XCTAssertEqual(modelResult?.uInt, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.uInt, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.uIntOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.uIntUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test UInt from Bool in struct to json string and convert back
    func testStructUIntFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = UInt(value ? 1 : 0)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.uInt, resultValue)
            XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
            XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
        }
    }
    
    /// Test UInt from Bool in struct to json string and convert back
    func testStructUIntFromBoolUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Bool.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : UInt? = UInt(value ? 1 : 0)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(UInt.self)!) {
                    XCTAssertEqual(modelResult?.uInt, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.uInt, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.uIntOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.uIntUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test UInt from NSString in struct to json string and convert back
    func testStructUIntFromNSStringToModel () {
    
        let arrValues = mismatchValuesFrom(NSString.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = UInt(value as String)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.uInt, resultValue)
            XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
            XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
        }
    }
    
    /// Test UInt from NSString in struct to json string and convert back
    func testStructUIntFromNSStringUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(NSString.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : UInt? = UInt(value as String)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(UInt.self)!) {
                    XCTAssertEqual(modelResult?.uInt, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.uInt, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.uIntOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.uIntUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test UInt from NSNumber in struct to json string and convert back
    func testStructUIntFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = UInt(truncating:value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.uInt, resultValue)
            XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
            XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
        }
    }
    
    /// Test UInt from NSNumber in struct to json string and convert back
    func testStructUIntFromNSNumberUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(NSNumber.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : UInt? = UInt(truncating:value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(UInt.self)!) {
                    XCTAssertEqual(modelResult?.uInt, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.uInt, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.uIntOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.uIntUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Float from Int in struct to json string and convert back
    func testStructFloatFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = Float(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.float, resultValue)
            XCTAssertEqual(modelResult?.floatOptionl, resultValue)
            XCTAssertEqual(modelResult?.floatUnwrapped, resultValue)
        }
    }
    
    /// Test Float from Int in struct to json string and convert back
    func testStructFloatFromIntUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Int.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : Float? = Float(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.float, empertyValueForType(Float.self)!)
                XCTAssertNil(modelResult?.floatOptionl)
                XCTAssertNil(modelResult?.floatUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Float.self)!) {
                    XCTAssertEqual(modelResult?.float, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.float, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.floatOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.floatUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Float from String in struct to json string and convert back
    func testStructFloatFromStringToModel () {
    
        let arrValues = mismatchValuesFrom(String.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = Float(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.float, resultValue)
            XCTAssertEqual(modelResult?.floatOptionl, resultValue)
            XCTAssertEqual(modelResult?.floatUnwrapped, resultValue)
        }
    }
    
    /// Test Float from String in struct to json string and convert back
    func testStructFloatFromStringUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(String.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : Float? = Float(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.float, empertyValueForType(Float.self)!)
                XCTAssertNil(modelResult?.floatOptionl)
                XCTAssertNil(modelResult?.floatUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Float.self)!) {
                    XCTAssertEqual(modelResult?.float, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.float, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.floatOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.floatUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Float from Double in struct to json string and convert back
    func testStructFloatFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = Float(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.float, resultValue)
            XCTAssertEqual(modelResult?.floatOptionl, resultValue)
            XCTAssertEqual(modelResult?.floatUnwrapped, resultValue)
        }
    }
    
    /// Test Float from Double in struct to json string and convert back
    func testStructFloatFromDoubleUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Double.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : Float? = Float(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.float, empertyValueForType(Float.self)!)
                XCTAssertNil(modelResult?.floatOptionl)
                XCTAssertNil(modelResult?.floatUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Float.self)!) {
                    XCTAssertEqual(modelResult?.float, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.float, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.floatOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.floatUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Float from Bool in struct to json string and convert back
    func testStructFloatFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = Float(value ? 1 : 0)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.float, resultValue)
            XCTAssertEqual(modelResult?.floatOptionl, resultValue)
            XCTAssertEqual(modelResult?.floatUnwrapped, resultValue)
        }
    }
    
    /// Test Float from Bool in struct to json string and convert back
    func testStructFloatFromBoolUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Bool.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : Float? = Float(value ? 1 : 0)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.float, empertyValueForType(Float.self)!)
                XCTAssertNil(modelResult?.floatOptionl)
                XCTAssertNil(modelResult?.floatUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Float.self)!) {
                    XCTAssertEqual(modelResult?.float, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.float, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.floatOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.floatUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Float from NSString in struct to json string and convert back
    func testStructFloatFromNSStringToModel () {
    
        let arrValues = mismatchValuesFrom(NSString.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = Float(value as String)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.float, resultValue)
            XCTAssertEqual(modelResult?.floatOptionl, resultValue)
            XCTAssertEqual(modelResult?.floatUnwrapped, resultValue)
        }
    }
    
    /// Test Float from NSString in struct to json string and convert back
    func testStructFloatFromNSStringUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(NSString.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : Float? = Float(value as String)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.float, empertyValueForType(Float.self)!)
                XCTAssertNil(modelResult?.floatOptionl)
                XCTAssertNil(modelResult?.floatUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Float.self)!) {
                    XCTAssertEqual(modelResult?.float, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.float, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.floatOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.floatUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Float from NSNumber in struct to json string and convert back
    func testStructFloatFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = Float(truncating:value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.float, resultValue)
            XCTAssertEqual(modelResult?.floatOptionl, resultValue)
            XCTAssertEqual(modelResult?.floatUnwrapped, resultValue)
        }
    }
    
    /// Test Float from NSNumber in struct to json string and convert back
    func testStructFloatFromNSNumberUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(NSNumber.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : Float? = Float(truncating:value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.float, empertyValueForType(Float.self)!)
                XCTAssertNil(modelResult?.floatOptionl)
                XCTAssertNil(modelResult?.floatUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Float.self)!) {
                    XCTAssertEqual(modelResult?.float, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.float, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.floatOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.floatUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Double from Int in struct to json string and convert back
    func testStructDoubleFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = Double(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.double, resultValue)
            XCTAssertEqual(modelResult?.doubleOptionl, resultValue)
            XCTAssertEqual(modelResult?.doubleUnwrapped, resultValue)
        }
    }
    
    /// Test Double from Int in struct to json string and convert back
    func testStructDoubleFromIntUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Int.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : Double? = Double(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.double, empertyValueForType(Double.self)!)
                XCTAssertNil(modelResult?.doubleOptionl)
                XCTAssertNil(modelResult?.doubleUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Double.self)!) {
                    XCTAssertEqual(modelResult?.double, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.double, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.doubleOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.doubleUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Double from String in struct to json string and convert back
    func testStructDoubleFromStringToModel () {
    
        let arrValues = mismatchValuesFrom(String.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = Double(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.double, resultValue)
            XCTAssertEqual(modelResult?.doubleOptionl, resultValue)
            XCTAssertEqual(modelResult?.doubleUnwrapped, resultValue)
        }
    }
    
    /// Test Double from String in struct to json string and convert back
    func testStructDoubleFromStringUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(String.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : Double? = Double(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.double, empertyValueForType(Double.self)!)
                XCTAssertNil(modelResult?.doubleOptionl)
                XCTAssertNil(modelResult?.doubleUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Double.self)!) {
                    XCTAssertEqual(modelResult?.double, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.double, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.doubleOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.doubleUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Double from Float in struct to json string and convert back
    func testStructDoubleFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = Double(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.double, resultValue)
            XCTAssertEqual(modelResult?.doubleOptionl, resultValue)
            XCTAssertEqual(modelResult?.doubleUnwrapped, resultValue)
        }
    }
    
    /// Test Double from Float in struct to json string and convert back
    func testStructDoubleFromFloatUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Float.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : Double? = Double(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.double, empertyValueForType(Double.self)!)
                XCTAssertNil(modelResult?.doubleOptionl)
                XCTAssertNil(modelResult?.doubleUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Double.self)!) {
                    XCTAssertEqual(modelResult?.double, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.double, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.doubleOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.doubleUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Double from Bool in struct to json string and convert back
    func testStructDoubleFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = Double(value ? 1 : 0)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.double, resultValue)
            XCTAssertEqual(modelResult?.doubleOptionl, resultValue)
            XCTAssertEqual(modelResult?.doubleUnwrapped, resultValue)
        }
    }
    
    /// Test Double from Bool in struct to json string and convert back
    func testStructDoubleFromBoolUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Bool.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : Double? = Double(value ? 1 : 0)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.double, empertyValueForType(Double.self)!)
                XCTAssertNil(modelResult?.doubleOptionl)
                XCTAssertNil(modelResult?.doubleUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Double.self)!) {
                    XCTAssertEqual(modelResult?.double, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.double, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.doubleOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.doubleUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Double from NSString in struct to json string and convert back
    func testStructDoubleFromNSStringToModel () {
    
        let arrValues = mismatchValuesFrom(NSString.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = Double(value as String)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.double, resultValue)
            XCTAssertEqual(modelResult?.doubleOptionl, resultValue)
            XCTAssertEqual(modelResult?.doubleUnwrapped, resultValue)
        }
    }
    
    /// Test Double from NSString in struct to json string and convert back
    func testStructDoubleFromNSStringUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(NSString.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : Double? = Double(value as String)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.double, empertyValueForType(Double.self)!)
                XCTAssertNil(modelResult?.doubleOptionl)
                XCTAssertNil(modelResult?.doubleUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Double.self)!) {
                    XCTAssertEqual(modelResult?.double, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.double, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.doubleOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.doubleUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Double from NSNumber in struct to json string and convert back
    func testStructDoubleFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = Double(truncating:value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.double, resultValue)
            XCTAssertEqual(modelResult?.doubleOptionl, resultValue)
            XCTAssertEqual(modelResult?.doubleUnwrapped, resultValue)
        }
    }
    
    /// Test Double from NSNumber in struct to json string and convert back
    func testStructDoubleFromNSNumberUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(NSNumber.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : Double? = Double(truncating:value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.double, empertyValueForType(Double.self)!)
                XCTAssertNil(modelResult?.doubleOptionl)
                XCTAssertNil(modelResult?.doubleUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Double.self)!) {
                    XCTAssertEqual(modelResult?.double, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.double, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.doubleOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.doubleUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Bool from Int in struct to json string and convert back
    func testStructBoolFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = Bool(value != 0)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.bool, resultValue)
            XCTAssertEqual(modelResult?.boolOptionl, resultValue)
            XCTAssertEqual(modelResult?.boolUnwrapped, resultValue)
        }
    }
    
    /// Test Bool from Int in struct to json string and convert back
    func testStructBoolFromIntUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Int.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : Bool? = Bool(value != 0)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.bool, empertyValueForType(Bool.self)!)
                XCTAssertNil(modelResult?.boolOptionl)
                XCTAssertNil(modelResult?.boolUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Bool.self)!) {
                    XCTAssertEqual(modelResult?.bool, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.bool, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.boolOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.boolUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Bool from String in struct to json string and convert back
    func testStructBoolFromStringToModel () {
    
        let arrValues = mismatchValuesFrom(String.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = Bool((value as NSString).boolValue)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.bool, resultValue)
            XCTAssertEqual(modelResult?.boolOptionl, resultValue)
            XCTAssertEqual(modelResult?.boolUnwrapped, resultValue)
        }
    }
    
    /// Test Bool from String in struct to json string and convert back
    func testStructBoolFromStringUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(String.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : Bool? = Bool((value as NSString).boolValue)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.bool, empertyValueForType(Bool.self)!)
                XCTAssertNil(modelResult?.boolOptionl)
                XCTAssertNil(modelResult?.boolUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Bool.self)!) {
                    XCTAssertEqual(modelResult?.bool, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.bool, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.boolOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.boolUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Bool from Float in struct to json string and convert back
    func testStructBoolFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = Bool(value != 0)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.bool, resultValue)
            XCTAssertEqual(modelResult?.boolOptionl, resultValue)
            XCTAssertEqual(modelResult?.boolUnwrapped, resultValue)
        }
    }
    
    /// Test Bool from Float in struct to json string and convert back
    func testStructBoolFromFloatUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Float.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : Bool? = Bool(value != 0)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.bool, empertyValueForType(Bool.self)!)
                XCTAssertNil(modelResult?.boolOptionl)
                XCTAssertNil(modelResult?.boolUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Bool.self)!) {
                    XCTAssertEqual(modelResult?.bool, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.bool, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.boolOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.boolUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Bool from Double in struct to json string and convert back
    func testStructBoolFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = Bool(value != 0)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.bool, resultValue)
            XCTAssertEqual(modelResult?.boolOptionl, resultValue)
            XCTAssertEqual(modelResult?.boolUnwrapped, resultValue)
        }
    }
    
    /// Test Bool from Double in struct to json string and convert back
    func testStructBoolFromDoubleUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Double.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : Bool? = Bool(value != 0)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.bool, empertyValueForType(Bool.self)!)
                XCTAssertNil(modelResult?.boolOptionl)
                XCTAssertNil(modelResult?.boolUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Bool.self)!) {
                    XCTAssertEqual(modelResult?.bool, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.bool, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.boolOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.boolUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Bool from NSString in struct to json string and convert back
    func testStructBoolFromNSStringToModel () {
    
        let arrValues = mismatchValuesFrom(NSString.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = Bool(value.boolValue)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.bool, resultValue)
            XCTAssertEqual(modelResult?.boolOptionl, resultValue)
            XCTAssertEqual(modelResult?.boolUnwrapped, resultValue)
        }
    }
    
    /// Test Bool from NSString in struct to json string and convert back
    func testStructBoolFromNSStringUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(NSString.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : Bool? = Bool(value.boolValue)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.bool, empertyValueForType(Bool.self)!)
                XCTAssertNil(modelResult?.boolOptionl)
                XCTAssertNil(modelResult?.boolUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Bool.self)!) {
                    XCTAssertEqual(modelResult?.bool, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.bool, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.boolOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.boolUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Bool from NSNumber in struct to json string and convert back
    func testStructBoolFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = Bool(truncating:value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.bool, resultValue)
            XCTAssertEqual(modelResult?.boolOptionl, resultValue)
            XCTAssertEqual(modelResult?.boolUnwrapped, resultValue)
        }
    }
    
    /// Test Bool from NSNumber in struct to json string and convert back
    func testStructBoolFromNSNumberUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(NSNumber.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : Bool? = Bool(truncating:value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.bool, empertyValueForType(Bool.self)!)
                XCTAssertNil(modelResult?.boolOptionl)
                XCTAssertNil(modelResult?.boolUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Bool.self)!) {
                    XCTAssertEqual(modelResult?.bool, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.bool, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.boolOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.boolUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test String from Int in struct to json string and convert back
    func testStructStringFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = String(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.string, resultValue)
            XCTAssertEqual(modelResult?.stringOptionl, resultValue)
            XCTAssertEqual(modelResult?.stringUnwrapped, resultValue)
        }
    }
    
    /// Test String from Int in struct to json string and convert back
    func testStructStringFromIntUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Int.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : String? = String(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.string, empertyValueForType(String.self)!)
                XCTAssertNil(modelResult?.stringOptionl)
                XCTAssertNil(modelResult?.stringUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(String.self)!) {
                    XCTAssertEqual(modelResult?.string, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.string, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.stringOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.stringUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test String from Float in struct to json string and convert back
    func testStructStringFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = String(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.string, resultValue)
            XCTAssertEqual(modelResult?.stringOptionl, resultValue)
            XCTAssertEqual(modelResult?.stringUnwrapped, resultValue)
        }
    }
    
    /// Test String from Float in struct to json string and convert back
    func testStructStringFromFloatUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Float.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : String? = String(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.string, empertyValueForType(String.self)!)
                XCTAssertNil(modelResult?.stringOptionl)
                XCTAssertNil(modelResult?.stringUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(String.self)!) {
                    XCTAssertEqual(modelResult?.string, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.string, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.stringOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.stringUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test String from Double in struct to json string and convert back
    func testStructStringFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = String(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.string, resultValue)
            XCTAssertEqual(modelResult?.stringOptionl, resultValue)
            XCTAssertEqual(modelResult?.stringUnwrapped, resultValue)
        }
    }
    
    /// Test String from Double in struct to json string and convert back
    func testStructStringFromDoubleUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Double.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : String? = String(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.string, empertyValueForType(String.self)!)
                XCTAssertNil(modelResult?.stringOptionl)
                XCTAssertNil(modelResult?.stringUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(String.self)!) {
                    XCTAssertEqual(modelResult?.string, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.string, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.stringOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.stringUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test String from Bool in struct to json string and convert back
    func testStructStringFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = String(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.string, resultValue)
            XCTAssertEqual(modelResult?.stringOptionl, resultValue)
            XCTAssertEqual(modelResult?.stringUnwrapped, resultValue)
        }
    }
    
    /// Test String from Bool in struct to json string and convert back
    func testStructStringFromBoolUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Bool.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : String? = String(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.string, empertyValueForType(String.self)!)
                XCTAssertNil(modelResult?.stringOptionl)
                XCTAssertNil(modelResult?.stringUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(String.self)!) {
                    XCTAssertEqual(modelResult?.string, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.string, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.stringOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.stringUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test String from NSNumber in struct to json string and convert back
    func testStructStringFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = String(value.stringValue)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.string, resultValue)
            XCTAssertEqual(modelResult?.stringOptionl, resultValue)
            XCTAssertEqual(modelResult?.stringUnwrapped, resultValue)
        }
    }
    
    /// Test String from NSNumber in struct to json string and convert back
    func testStructStringFromNSNumberUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(NSNumber.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : String? = String(value.stringValue)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.string, empertyValueForType(String.self)!)
                XCTAssertNil(modelResult?.stringOptionl)
                XCTAssertNil(modelResult?.stringUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(String.self)!) {
                    XCTAssertEqual(modelResult?.string, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.string, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.stringOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.stringUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test NSString from Int in struct to json string and convert back
    func testStructNSStringFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = NSString(string: "\(value)")
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.nSString, resultValue)
            XCTAssertEqual(modelResult?.nSStringOptionl, resultValue)
            XCTAssertEqual(modelResult?.nSStringUnwrapped, resultValue)
        }
    }
    
    /// Test NSString from Int in struct to json string and convert back
    func testStructNSStringFromIntUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Int.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : NSString? = NSString(string: "\(value)")
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSString, empertyValueForType(NSString.self)!)
                XCTAssertNil(modelResult?.nSStringOptionl)
                XCTAssertNil(modelResult?.nSStringUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(NSString.self)!) {
                    XCTAssertEqual(modelResult?.nSString, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.nSString, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.nSStringOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.nSStringUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test NSString from Float in struct to json string and convert back
    func testStructNSStringFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = NSString(string: "\(value)")
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.nSString, resultValue)
            XCTAssertEqual(modelResult?.nSStringOptionl, resultValue)
            XCTAssertEqual(modelResult?.nSStringUnwrapped, resultValue)
        }
    }
    
    /// Test NSString from Float in struct to json string and convert back
    func testStructNSStringFromFloatUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Float.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : NSString? = NSString(string: "\(value)")
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSString, empertyValueForType(NSString.self)!)
                XCTAssertNil(modelResult?.nSStringOptionl)
                XCTAssertNil(modelResult?.nSStringUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(NSString.self)!) {
                    XCTAssertEqual(modelResult?.nSString, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.nSString, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.nSStringOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.nSStringUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test NSString from Double in struct to json string and convert back
    func testStructNSStringFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = NSString(string: "\(value)")
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.nSString, resultValue)
            XCTAssertEqual(modelResult?.nSStringOptionl, resultValue)
            XCTAssertEqual(modelResult?.nSStringUnwrapped, resultValue)
        }
    }
    
    /// Test NSString from Double in struct to json string and convert back
    func testStructNSStringFromDoubleUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Double.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : NSString? = NSString(string: "\(value)")
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSString, empertyValueForType(NSString.self)!)
                XCTAssertNil(modelResult?.nSStringOptionl)
                XCTAssertNil(modelResult?.nSStringUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(NSString.self)!) {
                    XCTAssertEqual(modelResult?.nSString, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.nSString, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.nSStringOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.nSStringUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test NSString from Bool in struct to json string and convert back
    func testStructNSStringFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = NSString(string: "\(value)")
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.nSString, resultValue)
            XCTAssertEqual(modelResult?.nSStringOptionl, resultValue)
            XCTAssertEqual(modelResult?.nSStringUnwrapped, resultValue)
        }
    }
    
    /// Test NSString from Bool in struct to json string and convert back
    func testStructNSStringFromBoolUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Bool.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : NSString? = NSString(string: "\(value)")
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSString, empertyValueForType(NSString.self)!)
                XCTAssertNil(modelResult?.nSStringOptionl)
                XCTAssertNil(modelResult?.nSStringUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(NSString.self)!) {
                    XCTAssertEqual(modelResult?.nSString, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.nSString, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.nSStringOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.nSStringUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test NSString from NSNumber in struct to json string and convert back
    func testStructNSStringFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = NSString(string: value.stringValue)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.nSString, resultValue)
            XCTAssertEqual(modelResult?.nSStringOptionl, resultValue)
            XCTAssertEqual(modelResult?.nSStringUnwrapped, resultValue)
        }
    }
    
    /// Test NSString from NSNumber in struct to json string and convert back
    func testStructNSStringFromNSNumberUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(NSNumber.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : NSString? = NSString(string: value.stringValue)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSString, empertyValueForType(NSString.self)!)
                XCTAssertNil(modelResult?.nSStringOptionl)
                XCTAssertNil(modelResult?.nSStringUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(NSString.self)!) {
                    XCTAssertEqual(modelResult?.nSString, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.nSString, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.nSStringOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.nSStringUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test NSNumber from Int in struct to json string and convert back
    func testStructNSNumberFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = NSNumber(value:value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.nSNumber, resultValue)
            XCTAssertEqual(modelResult?.nSNumberOptionl, resultValue)
            XCTAssertEqual(modelResult?.nSNumberUnwrapped, resultValue)
        }
    }
    
    /// Test NSNumber from Int in struct to json string and convert back
    func testStructNSNumberFromIntUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Int.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : NSNumber? = NSNumber(value:value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSNumber, empertyValueForType(NSNumber.self)!)
                XCTAssertNil(modelResult?.nSNumberOptionl)
                XCTAssertNil(modelResult?.nSNumberUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(NSNumber.self)!) {
                    XCTAssertEqual(modelResult?.nSNumber, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.nSNumber, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.nSNumberOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.nSNumberUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test NSNumber from String in struct to json string and convert back
    func testStructNSNumberFromStringToModel () {
    
        let arrValues = mismatchValuesFrom(String.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = convertStringToNSNumber(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.nSNumber, resultValue)
            XCTAssertEqual(modelResult?.nSNumberOptionl, resultValue)
            XCTAssertEqual(modelResult?.nSNumberUnwrapped, resultValue)
        }
    }
    
    /// Test NSNumber from String in struct to json string and convert back
    func testStructNSNumberFromStringUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(String.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : NSNumber? = convertStringToNSNumber(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSNumber, empertyValueForType(NSNumber.self)!)
                XCTAssertNil(modelResult?.nSNumberOptionl)
                XCTAssertNil(modelResult?.nSNumberUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(NSNumber.self)!) {
                    XCTAssertEqual(modelResult?.nSNumber, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.nSNumber, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.nSNumberOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.nSNumberUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test NSNumber from Float in struct to json string and convert back
    func testStructNSNumberFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = NSNumber(value:value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.nSNumber, resultValue)
            XCTAssertEqual(modelResult?.nSNumberOptionl, resultValue)
            XCTAssertEqual(modelResult?.nSNumberUnwrapped, resultValue)
        }
    }
    
    /// Test NSNumber from Float in struct to json string and convert back
    func testStructNSNumberFromFloatUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Float.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : NSNumber? = NSNumber(value:value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSNumber, empertyValueForType(NSNumber.self)!)
                XCTAssertNil(modelResult?.nSNumberOptionl)
                XCTAssertNil(modelResult?.nSNumberUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(NSNumber.self)!) {
                    XCTAssertEqual(modelResult?.nSNumber, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.nSNumber, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.nSNumberOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.nSNumberUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test NSNumber from Double in struct to json string and convert back
    func testStructNSNumberFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = NSNumber(value:value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.nSNumber, resultValue)
            XCTAssertEqual(modelResult?.nSNumberOptionl, resultValue)
            XCTAssertEqual(modelResult?.nSNumberUnwrapped, resultValue)
        }
    }
    
    /// Test NSNumber from Double in struct to json string and convert back
    func testStructNSNumberFromDoubleUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Double.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : NSNumber? = NSNumber(value:value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSNumber, empertyValueForType(NSNumber.self)!)
                XCTAssertNil(modelResult?.nSNumberOptionl)
                XCTAssertNil(modelResult?.nSNumberUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(NSNumber.self)!) {
                    XCTAssertEqual(modelResult?.nSNumber, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.nSNumber, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.nSNumberOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.nSNumberUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test NSNumber from Bool in struct to json string and convert back
    func testStructNSNumberFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = NSNumber(value:value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.nSNumber, resultValue)
            XCTAssertEqual(modelResult?.nSNumberOptionl, resultValue)
            XCTAssertEqual(modelResult?.nSNumberUnwrapped, resultValue)
        }
    }
    
    /// Test NSNumber from Bool in struct to json string and convert back
    func testStructNSNumberFromBoolUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Bool.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : NSNumber? = NSNumber(value:value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSNumber, empertyValueForType(NSNumber.self)!)
                XCTAssertNil(modelResult?.nSNumberOptionl)
                XCTAssertNil(modelResult?.nSNumberUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(NSNumber.self)!) {
                    XCTAssertEqual(modelResult?.nSNumber, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.nSNumber, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.nSNumberOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.nSNumberUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test NSNumber from NSString in struct to json string and convert back
    func testStructNSNumberFromNSStringToModel () {
    
        let arrValues = mismatchValuesFrom(NSString.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue = convertStringToNSNumber(value as String)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.nSNumber, resultValue)
            XCTAssertEqual(modelResult?.nSNumberOptionl, resultValue)
            XCTAssertEqual(modelResult?.nSNumberUnwrapped, resultValue)
        }
    }
    
    /// Test NSNumber from NSString in struct to json string and convert back
    func testStructNSNumberFromNSStringUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(NSString.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeStruct.initWith(dic)
            let resultValue : NSNumber? = convertStringToNSNumber(value as String)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSNumber, empertyValueForType(NSNumber.self)!)
                XCTAssertNil(modelResult?.nSNumberOptionl)
                XCTAssertNil(modelResult?.nSNumberUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(NSNumber.self)!) {
                    XCTAssertEqual(modelResult?.nSNumber, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.nSNumber, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.nSNumberOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.nSNumberUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test EnumInt from String in struct to json string and convert back
    func testStructEnumIntFromStringToModel () {
    
        let arrValues = mismatchValuesFrom(String.self, to:EnumInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["enumInt":value,"enumIntOptionl":value,"enumIntUnwrapped":value]
            let modelResult = EnumStruct.initWith(dic)
            let resultValue = ((Int(value) != nil) ? EnumInt(rawValue: Int(value)!) : nil)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.enumInt, resultValue)
            XCTAssertEqual(modelResult?.enumIntOptionl, resultValue)
            XCTAssertEqual(modelResult?.enumIntUnwrapped, resultValue)
        }
    }
    
    /// Test EnumInt from String in struct to json string and convert back
    func testStructEnumIntFromStringUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(String.self, to:EnumInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["enumInt":value,"enumIntOptionl":value,"enumIntUnwrapped":value]
            let modelResult = EnumStruct.initWith(dic)
            let resultValue : EnumInt? = ((Int(value) != nil) ? EnumInt(rawValue: Int(value)!) : nil)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.enumInt, .One)
                XCTAssertNil(modelResult?.enumIntOptionl)
                XCTAssertNil(modelResult?.enumIntUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(EnumInt.self)!) {
                    XCTAssertEqual(modelResult?.enumInt, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.enumInt, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.enumIntOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.enumIntUnwrapped, resultValue!)
            }
            
        }
    }

    /// Test Int from String in class to json string and convert back
    func testClassIntFromStringToModel () {
    
        let arrValues = mismatchValuesFrom(String.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = Int(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.int, resultValue)
            XCTAssertEqual(modelResult?.intOptionl, resultValue)
            XCTAssertEqual(modelResult?.intUnwrapped, resultValue)
        }
    }
    
    /// Test Int from String in class to json string and convert back
    func testClassIntFromStringUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(String.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : Int? = Int(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.int, empertyValueForType(Int.self)!)
                XCTAssertNil(modelResult?.intOptionl)
                XCTAssertNil(modelResult?.intUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Int.self)!) {
                    XCTAssertEqual(modelResult?.int, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.int, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.intOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.intUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Int from Float in class to json string and convert back
    func testClassIntFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = Int(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.int, resultValue)
            XCTAssertEqual(modelResult?.intOptionl, resultValue)
            XCTAssertEqual(modelResult?.intUnwrapped, resultValue)
        }
    }
    
    /// Test Int from Float in class to json string and convert back
    func testClassIntFromFloatUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Float.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : Int? = Int(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.int, empertyValueForType(Int.self)!)
                XCTAssertNil(modelResult?.intOptionl)
                XCTAssertNil(modelResult?.intUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Int.self)!) {
                    XCTAssertEqual(modelResult?.int, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.int, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.intOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.intUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Int from Double in class to json string and convert back
    func testClassIntFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = Int(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.int, resultValue)
            XCTAssertEqual(modelResult?.intOptionl, resultValue)
            XCTAssertEqual(modelResult?.intUnwrapped, resultValue)
        }
    }
    
    /// Test Int from Double in class to json string and convert back
    func testClassIntFromDoubleUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Double.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : Int? = Int(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.int, empertyValueForType(Int.self)!)
                XCTAssertNil(modelResult?.intOptionl)
                XCTAssertNil(modelResult?.intUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Int.self)!) {
                    XCTAssertEqual(modelResult?.int, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.int, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.intOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.intUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Int from Bool in class to json string and convert back
    func testClassIntFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = Int(value ? 1 : 0)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.int, resultValue)
            XCTAssertEqual(modelResult?.intOptionl, resultValue)
            XCTAssertEqual(modelResult?.intUnwrapped, resultValue)
        }
    }
    
    /// Test Int from Bool in class to json string and convert back
    func testClassIntFromBoolUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Bool.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : Int? = Int(value ? 1 : 0)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.int, empertyValueForType(Int.self)!)
                XCTAssertNil(modelResult?.intOptionl)
                XCTAssertNil(modelResult?.intUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Int.self)!) {
                    XCTAssertEqual(modelResult?.int, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.int, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.intOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.intUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Int from NSString in class to json string and convert back
    func testClassIntFromNSStringToModel () {
    
        let arrValues = mismatchValuesFrom(NSString.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = Int(value as String)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.int, resultValue)
            XCTAssertEqual(modelResult?.intOptionl, resultValue)
            XCTAssertEqual(modelResult?.intUnwrapped, resultValue)
        }
    }
    
    /// Test Int from NSString in class to json string and convert back
    func testClassIntFromNSStringUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(NSString.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : Int? = Int(value as String)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.int, empertyValueForType(Int.self)!)
                XCTAssertNil(modelResult?.intOptionl)
                XCTAssertNil(modelResult?.intUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Int.self)!) {
                    XCTAssertEqual(modelResult?.int, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.int, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.intOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.intUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Int from NSNumber in class to json string and convert back
    func testClassIntFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = Int(truncating:value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.int, resultValue)
            XCTAssertEqual(modelResult?.intOptionl, resultValue)
            XCTAssertEqual(modelResult?.intUnwrapped, resultValue)
        }
    }
    
    /// Test Int from NSNumber in class to json string and convert back
    func testClassIntFromNSNumberUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(NSNumber.self, to:Int.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["int":value,"intOptionl":value,"intUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : Int? = Int(truncating:value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.int, empertyValueForType(Int.self)!)
                XCTAssertNil(modelResult?.intOptionl)
                XCTAssertNil(modelResult?.intUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Int.self)!) {
                    XCTAssertEqual(modelResult?.int, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.int, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.intOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.intUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test UInt from Int in class to json string and convert back
    func testClassUIntFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = UInt(value >= 0 ? value : 0)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.uInt, resultValue)
            XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
            XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
        }
    }
    
    /// Test UInt from Int in class to json string and convert back
    func testClassUIntFromIntUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Int.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : UInt? = UInt(value >= 0 ? value : 0)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(UInt.self)!) {
                    XCTAssertEqual(modelResult?.uInt, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.uInt, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.uIntOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.uIntUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test UInt from String in class to json string and convert back
    func testClassUIntFromStringToModel () {
    
        let arrValues = mismatchValuesFrom(String.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = UInt(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.uInt, resultValue)
            XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
            XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
        }
    }
    
    /// Test UInt from String in class to json string and convert back
    func testClassUIntFromStringUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(String.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : UInt? = UInt(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(UInt.self)!) {
                    XCTAssertEqual(modelResult?.uInt, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.uInt, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.uIntOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.uIntUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test UInt from Float in class to json string and convert back
    func testClassUIntFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = (value >= 0 ? UInt(value) : nil)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.uInt, resultValue)
            XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
            XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
        }
    }
    
    /// Test UInt from Float in class to json string and convert back
    func testClassUIntFromFloatUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Float.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : UInt? = (value >= 0 ? UInt(value) : nil)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(UInt.self)!) {
                    XCTAssertEqual(modelResult?.uInt, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.uInt, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.uIntOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.uIntUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test UInt from Double in class to json string and convert back
    func testClassUIntFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = (value >= 0 ? UInt(value) : nil)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.uInt, resultValue)
            XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
            XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
        }
    }
    
    /// Test UInt from Double in class to json string and convert back
    func testClassUIntFromDoubleUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Double.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : UInt? = (value >= 0 ? UInt(value) : nil)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(UInt.self)!) {
                    XCTAssertEqual(modelResult?.uInt, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.uInt, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.uIntOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.uIntUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test UInt from Bool in class to json string and convert back
    func testClassUIntFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = UInt(value ? 1 : 0)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.uInt, resultValue)
            XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
            XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
        }
    }
    
    /// Test UInt from Bool in class to json string and convert back
    func testClassUIntFromBoolUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Bool.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : UInt? = UInt(value ? 1 : 0)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(UInt.self)!) {
                    XCTAssertEqual(modelResult?.uInt, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.uInt, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.uIntOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.uIntUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test UInt from NSString in class to json string and convert back
    func testClassUIntFromNSStringToModel () {
    
        let arrValues = mismatchValuesFrom(NSString.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = UInt(value as String)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.uInt, resultValue)
            XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
            XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
        }
    }
    
    /// Test UInt from NSString in class to json string and convert back
    func testClassUIntFromNSStringUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(NSString.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : UInt? = UInt(value as String)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(UInt.self)!) {
                    XCTAssertEqual(modelResult?.uInt, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.uInt, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.uIntOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.uIntUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test UInt from NSNumber in class to json string and convert back
    func testClassUIntFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = UInt(truncating:value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.uInt, resultValue)
            XCTAssertEqual(modelResult?.uIntOptionl, resultValue)
            XCTAssertEqual(modelResult?.uIntUnwrapped, resultValue)
        }
    }
    
    /// Test UInt from NSNumber in class to json string and convert back
    func testClassUIntFromNSNumberUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(NSNumber.self, to:UInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["uInt":value,"uIntOptionl":value,"uIntUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : UInt? = UInt(truncating:value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.uInt, empertyValueForType(UInt.self)!)
                XCTAssertNil(modelResult?.uIntOptionl)
                XCTAssertNil(modelResult?.uIntUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(UInt.self)!) {
                    XCTAssertEqual(modelResult?.uInt, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.uInt, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.uIntOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.uIntUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Float from Int in class to json string and convert back
    func testClassFloatFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = Float(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.float, resultValue)
            XCTAssertEqual(modelResult?.floatOptionl, resultValue)
            XCTAssertEqual(modelResult?.floatUnwrapped, resultValue)
        }
    }
    
    /// Test Float from Int in class to json string and convert back
    func testClassFloatFromIntUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Int.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : Float? = Float(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.float, empertyValueForType(Float.self)!)
                XCTAssertNil(modelResult?.floatOptionl)
                XCTAssertNil(modelResult?.floatUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Float.self)!) {
                    XCTAssertEqual(modelResult?.float, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.float, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.floatOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.floatUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Float from String in class to json string and convert back
    func testClassFloatFromStringToModel () {
    
        let arrValues = mismatchValuesFrom(String.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = Float(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.float, resultValue)
            XCTAssertEqual(modelResult?.floatOptionl, resultValue)
            XCTAssertEqual(modelResult?.floatUnwrapped, resultValue)
        }
    }
    
    /// Test Float from String in class to json string and convert back
    func testClassFloatFromStringUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(String.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : Float? = Float(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.float, empertyValueForType(Float.self)!)
                XCTAssertNil(modelResult?.floatOptionl)
                XCTAssertNil(modelResult?.floatUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Float.self)!) {
                    XCTAssertEqual(modelResult?.float, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.float, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.floatOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.floatUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Float from Double in class to json string and convert back
    func testClassFloatFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = Float(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.float, resultValue)
            XCTAssertEqual(modelResult?.floatOptionl, resultValue)
            XCTAssertEqual(modelResult?.floatUnwrapped, resultValue)
        }
    }
    
    /// Test Float from Double in class to json string and convert back
    func testClassFloatFromDoubleUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Double.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : Float? = Float(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.float, empertyValueForType(Float.self)!)
                XCTAssertNil(modelResult?.floatOptionl)
                XCTAssertNil(modelResult?.floatUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Float.self)!) {
                    XCTAssertEqual(modelResult?.float, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.float, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.floatOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.floatUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Float from Bool in class to json string and convert back
    func testClassFloatFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = Float(value ? 1 : 0)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.float, resultValue)
            XCTAssertEqual(modelResult?.floatOptionl, resultValue)
            XCTAssertEqual(modelResult?.floatUnwrapped, resultValue)
        }
    }
    
    /// Test Float from Bool in class to json string and convert back
    func testClassFloatFromBoolUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Bool.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : Float? = Float(value ? 1 : 0)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.float, empertyValueForType(Float.self)!)
                XCTAssertNil(modelResult?.floatOptionl)
                XCTAssertNil(modelResult?.floatUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Float.self)!) {
                    XCTAssertEqual(modelResult?.float, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.float, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.floatOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.floatUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Float from NSString in class to json string and convert back
    func testClassFloatFromNSStringToModel () {
    
        let arrValues = mismatchValuesFrom(NSString.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = Float(value as String)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.float, resultValue)
            XCTAssertEqual(modelResult?.floatOptionl, resultValue)
            XCTAssertEqual(modelResult?.floatUnwrapped, resultValue)
        }
    }
    
    /// Test Float from NSString in class to json string and convert back
    func testClassFloatFromNSStringUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(NSString.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : Float? = Float(value as String)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.float, empertyValueForType(Float.self)!)
                XCTAssertNil(modelResult?.floatOptionl)
                XCTAssertNil(modelResult?.floatUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Float.self)!) {
                    XCTAssertEqual(modelResult?.float, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.float, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.floatOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.floatUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Float from NSNumber in class to json string and convert back
    func testClassFloatFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = Float(truncating:value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.float, resultValue)
            XCTAssertEqual(modelResult?.floatOptionl, resultValue)
            XCTAssertEqual(modelResult?.floatUnwrapped, resultValue)
        }
    }
    
    /// Test Float from NSNumber in class to json string and convert back
    func testClassFloatFromNSNumberUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(NSNumber.self, to:Float.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["float":value,"floatOptionl":value,"floatUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : Float? = Float(truncating:value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.float, empertyValueForType(Float.self)!)
                XCTAssertNil(modelResult?.floatOptionl)
                XCTAssertNil(modelResult?.floatUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Float.self)!) {
                    XCTAssertEqual(modelResult?.float, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.float, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.floatOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.floatUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Double from Int in class to json string and convert back
    func testClassDoubleFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = Double(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.double, resultValue)
            XCTAssertEqual(modelResult?.doubleOptionl, resultValue)
            XCTAssertEqual(modelResult?.doubleUnwrapped, resultValue)
        }
    }
    
    /// Test Double from Int in class to json string and convert back
    func testClassDoubleFromIntUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Int.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : Double? = Double(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.double, empertyValueForType(Double.self)!)
                XCTAssertNil(modelResult?.doubleOptionl)
                XCTAssertNil(modelResult?.doubleUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Double.self)!) {
                    XCTAssertEqual(modelResult?.double, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.double, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.doubleOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.doubleUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Double from String in class to json string and convert back
    func testClassDoubleFromStringToModel () {
    
        let arrValues = mismatchValuesFrom(String.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = Double(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.double, resultValue)
            XCTAssertEqual(modelResult?.doubleOptionl, resultValue)
            XCTAssertEqual(modelResult?.doubleUnwrapped, resultValue)
        }
    }
    
    /// Test Double from String in class to json string and convert back
    func testClassDoubleFromStringUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(String.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : Double? = Double(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.double, empertyValueForType(Double.self)!)
                XCTAssertNil(modelResult?.doubleOptionl)
                XCTAssertNil(modelResult?.doubleUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Double.self)!) {
                    XCTAssertEqual(modelResult?.double, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.double, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.doubleOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.doubleUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Double from Float in class to json string and convert back
    func testClassDoubleFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = Double(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.double, resultValue)
            XCTAssertEqual(modelResult?.doubleOptionl, resultValue)
            XCTAssertEqual(modelResult?.doubleUnwrapped, resultValue)
        }
    }
    
    /// Test Double from Float in class to json string and convert back
    func testClassDoubleFromFloatUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Float.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : Double? = Double(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.double, empertyValueForType(Double.self)!)
                XCTAssertNil(modelResult?.doubleOptionl)
                XCTAssertNil(modelResult?.doubleUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Double.self)!) {
                    XCTAssertEqual(modelResult?.double, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.double, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.doubleOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.doubleUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Double from Bool in class to json string and convert back
    func testClassDoubleFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = Double(value ? 1 : 0)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.double, resultValue)
            XCTAssertEqual(modelResult?.doubleOptionl, resultValue)
            XCTAssertEqual(modelResult?.doubleUnwrapped, resultValue)
        }
    }
    
    /// Test Double from Bool in class to json string and convert back
    func testClassDoubleFromBoolUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Bool.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : Double? = Double(value ? 1 : 0)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.double, empertyValueForType(Double.self)!)
                XCTAssertNil(modelResult?.doubleOptionl)
                XCTAssertNil(modelResult?.doubleUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Double.self)!) {
                    XCTAssertEqual(modelResult?.double, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.double, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.doubleOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.doubleUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Double from NSString in class to json string and convert back
    func testClassDoubleFromNSStringToModel () {
    
        let arrValues = mismatchValuesFrom(NSString.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = Double(value as String)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.double, resultValue)
            XCTAssertEqual(modelResult?.doubleOptionl, resultValue)
            XCTAssertEqual(modelResult?.doubleUnwrapped, resultValue)
        }
    }
    
    /// Test Double from NSString in class to json string and convert back
    func testClassDoubleFromNSStringUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(NSString.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : Double? = Double(value as String)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.double, empertyValueForType(Double.self)!)
                XCTAssertNil(modelResult?.doubleOptionl)
                XCTAssertNil(modelResult?.doubleUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Double.self)!) {
                    XCTAssertEqual(modelResult?.double, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.double, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.doubleOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.doubleUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Double from NSNumber in class to json string and convert back
    func testClassDoubleFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = Double(truncating:value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.double, resultValue)
            XCTAssertEqual(modelResult?.doubleOptionl, resultValue)
            XCTAssertEqual(modelResult?.doubleUnwrapped, resultValue)
        }
    }
    
    /// Test Double from NSNumber in class to json string and convert back
    func testClassDoubleFromNSNumberUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(NSNumber.self, to:Double.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["double":value,"doubleOptionl":value,"doubleUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : Double? = Double(truncating:value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.double, empertyValueForType(Double.self)!)
                XCTAssertNil(modelResult?.doubleOptionl)
                XCTAssertNil(modelResult?.doubleUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Double.self)!) {
                    XCTAssertEqual(modelResult?.double, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.double, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.doubleOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.doubleUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Bool from Int in class to json string and convert back
    func testClassBoolFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = Bool(value != 0)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.bool, resultValue)
            XCTAssertEqual(modelResult?.boolOptionl, resultValue)
            XCTAssertEqual(modelResult?.boolUnwrapped, resultValue)
        }
    }
    
    /// Test Bool from Int in class to json string and convert back
    func testClassBoolFromIntUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Int.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : Bool? = Bool(value != 0)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.bool, empertyValueForType(Bool.self)!)
                XCTAssertNil(modelResult?.boolOptionl)
                XCTAssertNil(modelResult?.boolUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Bool.self)!) {
                    XCTAssertEqual(modelResult?.bool, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.bool, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.boolOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.boolUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Bool from String in class to json string and convert back
    func testClassBoolFromStringToModel () {
    
        let arrValues = mismatchValuesFrom(String.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = Bool((value as NSString).boolValue)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.bool, resultValue)
            XCTAssertEqual(modelResult?.boolOptionl, resultValue)
            XCTAssertEqual(modelResult?.boolUnwrapped, resultValue)
        }
    }
    
    /// Test Bool from String in class to json string and convert back
    func testClassBoolFromStringUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(String.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : Bool? = Bool((value as NSString).boolValue)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.bool, empertyValueForType(Bool.self)!)
                XCTAssertNil(modelResult?.boolOptionl)
                XCTAssertNil(modelResult?.boolUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Bool.self)!) {
                    XCTAssertEqual(modelResult?.bool, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.bool, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.boolOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.boolUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Bool from Float in class to json string and convert back
    func testClassBoolFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = Bool(value != 0)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.bool, resultValue)
            XCTAssertEqual(modelResult?.boolOptionl, resultValue)
            XCTAssertEqual(modelResult?.boolUnwrapped, resultValue)
        }
    }
    
    /// Test Bool from Float in class to json string and convert back
    func testClassBoolFromFloatUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Float.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : Bool? = Bool(value != 0)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.bool, empertyValueForType(Bool.self)!)
                XCTAssertNil(modelResult?.boolOptionl)
                XCTAssertNil(modelResult?.boolUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Bool.self)!) {
                    XCTAssertEqual(modelResult?.bool, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.bool, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.boolOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.boolUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Bool from Double in class to json string and convert back
    func testClassBoolFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = Bool(value != 0)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.bool, resultValue)
            XCTAssertEqual(modelResult?.boolOptionl, resultValue)
            XCTAssertEqual(modelResult?.boolUnwrapped, resultValue)
        }
    }
    
    /// Test Bool from Double in class to json string and convert back
    func testClassBoolFromDoubleUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Double.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : Bool? = Bool(value != 0)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.bool, empertyValueForType(Bool.self)!)
                XCTAssertNil(modelResult?.boolOptionl)
                XCTAssertNil(modelResult?.boolUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Bool.self)!) {
                    XCTAssertEqual(modelResult?.bool, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.bool, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.boolOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.boolUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Bool from NSString in class to json string and convert back
    func testClassBoolFromNSStringToModel () {
    
        let arrValues = mismatchValuesFrom(NSString.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = Bool(value.boolValue)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.bool, resultValue)
            XCTAssertEqual(modelResult?.boolOptionl, resultValue)
            XCTAssertEqual(modelResult?.boolUnwrapped, resultValue)
        }
    }
    
    /// Test Bool from NSString in class to json string and convert back
    func testClassBoolFromNSStringUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(NSString.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : Bool? = Bool(value.boolValue)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.bool, empertyValueForType(Bool.self)!)
                XCTAssertNil(modelResult?.boolOptionl)
                XCTAssertNil(modelResult?.boolUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Bool.self)!) {
                    XCTAssertEqual(modelResult?.bool, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.bool, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.boolOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.boolUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test Bool from NSNumber in class to json string and convert back
    func testClassBoolFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = Bool(truncating:value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.bool, resultValue)
            XCTAssertEqual(modelResult?.boolOptionl, resultValue)
            XCTAssertEqual(modelResult?.boolUnwrapped, resultValue)
        }
    }
    
    /// Test Bool from NSNumber in class to json string and convert back
    func testClassBoolFromNSNumberUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(NSNumber.self, to:Bool.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["bool":value,"boolOptionl":value,"boolUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : Bool? = Bool(truncating:value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.bool, empertyValueForType(Bool.self)!)
                XCTAssertNil(modelResult?.boolOptionl)
                XCTAssertNil(modelResult?.boolUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(Bool.self)!) {
                    XCTAssertEqual(modelResult?.bool, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.bool, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.boolOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.boolUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test String from Int in class to json string and convert back
    func testClassStringFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = String(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.string, resultValue)
            XCTAssertEqual(modelResult?.stringOptionl, resultValue)
            XCTAssertEqual(modelResult?.stringUnwrapped, resultValue)
        }
    }
    
    /// Test String from Int in class to json string and convert back
    func testClassStringFromIntUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Int.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : String? = String(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.string, empertyValueForType(String.self)!)
                XCTAssertNil(modelResult?.stringOptionl)
                XCTAssertNil(modelResult?.stringUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(String.self)!) {
                    XCTAssertEqual(modelResult?.string, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.string, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.stringOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.stringUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test String from Float in class to json string and convert back
    func testClassStringFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = String(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.string, resultValue)
            XCTAssertEqual(modelResult?.stringOptionl, resultValue)
            XCTAssertEqual(modelResult?.stringUnwrapped, resultValue)
        }
    }
    
    /// Test String from Float in class to json string and convert back
    func testClassStringFromFloatUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Float.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : String? = String(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.string, empertyValueForType(String.self)!)
                XCTAssertNil(modelResult?.stringOptionl)
                XCTAssertNil(modelResult?.stringUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(String.self)!) {
                    XCTAssertEqual(modelResult?.string, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.string, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.stringOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.stringUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test String from Double in class to json string and convert back
    func testClassStringFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = String(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.string, resultValue)
            XCTAssertEqual(modelResult?.stringOptionl, resultValue)
            XCTAssertEqual(modelResult?.stringUnwrapped, resultValue)
        }
    }
    
    /// Test String from Double in class to json string and convert back
    func testClassStringFromDoubleUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Double.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : String? = String(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.string, empertyValueForType(String.self)!)
                XCTAssertNil(modelResult?.stringOptionl)
                XCTAssertNil(modelResult?.stringUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(String.self)!) {
                    XCTAssertEqual(modelResult?.string, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.string, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.stringOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.stringUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test String from Bool in class to json string and convert back
    func testClassStringFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = String(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.string, resultValue)
            XCTAssertEqual(modelResult?.stringOptionl, resultValue)
            XCTAssertEqual(modelResult?.stringUnwrapped, resultValue)
        }
    }
    
    /// Test String from Bool in class to json string and convert back
    func testClassStringFromBoolUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Bool.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : String? = String(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.string, empertyValueForType(String.self)!)
                XCTAssertNil(modelResult?.stringOptionl)
                XCTAssertNil(modelResult?.stringUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(String.self)!) {
                    XCTAssertEqual(modelResult?.string, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.string, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.stringOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.stringUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test String from NSNumber in class to json string and convert back
    func testClassStringFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = String(value.stringValue)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.string, resultValue)
            XCTAssertEqual(modelResult?.stringOptionl, resultValue)
            XCTAssertEqual(modelResult?.stringUnwrapped, resultValue)
        }
    }
    
    /// Test String from NSNumber in class to json string and convert back
    func testClassStringFromNSNumberUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(NSNumber.self, to:String.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["string":value,"stringOptionl":value,"stringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : String? = String(value.stringValue)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.string, empertyValueForType(String.self)!)
                XCTAssertNil(modelResult?.stringOptionl)
                XCTAssertNil(modelResult?.stringUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(String.self)!) {
                    XCTAssertEqual(modelResult?.string, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.string, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.stringOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.stringUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test NSString from Int in class to json string and convert back
    func testClassNSStringFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = NSString(string: "\(value)")
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.nSString, resultValue)
            XCTAssertEqual(modelResult?.nSStringOptionl, resultValue)
            XCTAssertEqual(modelResult?.nSStringUnwrapped, resultValue)
        }
    }
    
    /// Test NSString from Int in class to json string and convert back
    func testClassNSStringFromIntUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Int.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : NSString? = NSString(string: "\(value)")
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSString, empertyValueForType(NSString.self)!)
                XCTAssertNil(modelResult?.nSStringOptionl)
                XCTAssertNil(modelResult?.nSStringUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(NSString.self)!) {
                    XCTAssertEqual(modelResult?.nSString, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.nSString, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.nSStringOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.nSStringUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test NSString from Float in class to json string and convert back
    func testClassNSStringFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = NSString(string: "\(value)")
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.nSString, resultValue)
            XCTAssertEqual(modelResult?.nSStringOptionl, resultValue)
            XCTAssertEqual(modelResult?.nSStringUnwrapped, resultValue)
        }
    }
    
    /// Test NSString from Float in class to json string and convert back
    func testClassNSStringFromFloatUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Float.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : NSString? = NSString(string: "\(value)")
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSString, empertyValueForType(NSString.self)!)
                XCTAssertNil(modelResult?.nSStringOptionl)
                XCTAssertNil(modelResult?.nSStringUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(NSString.self)!) {
                    XCTAssertEqual(modelResult?.nSString, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.nSString, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.nSStringOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.nSStringUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test NSString from Double in class to json string and convert back
    func testClassNSStringFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = NSString(string: "\(value)")
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.nSString, resultValue)
            XCTAssertEqual(modelResult?.nSStringOptionl, resultValue)
            XCTAssertEqual(modelResult?.nSStringUnwrapped, resultValue)
        }
    }
    
    /// Test NSString from Double in class to json string and convert back
    func testClassNSStringFromDoubleUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Double.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : NSString? = NSString(string: "\(value)")
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSString, empertyValueForType(NSString.self)!)
                XCTAssertNil(modelResult?.nSStringOptionl)
                XCTAssertNil(modelResult?.nSStringUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(NSString.self)!) {
                    XCTAssertEqual(modelResult?.nSString, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.nSString, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.nSStringOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.nSStringUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test NSString from Bool in class to json string and convert back
    func testClassNSStringFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = NSString(string: "\(value)")
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.nSString, resultValue)
            XCTAssertEqual(modelResult?.nSStringOptionl, resultValue)
            XCTAssertEqual(modelResult?.nSStringUnwrapped, resultValue)
        }
    }
    
    /// Test NSString from Bool in class to json string and convert back
    func testClassNSStringFromBoolUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Bool.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : NSString? = NSString(string: "\(value)")
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSString, empertyValueForType(NSString.self)!)
                XCTAssertNil(modelResult?.nSStringOptionl)
                XCTAssertNil(modelResult?.nSStringUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(NSString.self)!) {
                    XCTAssertEqual(modelResult?.nSString, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.nSString, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.nSStringOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.nSStringUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test NSString from NSNumber in class to json string and convert back
    func testClassNSStringFromNSNumberToModel () {
    
        let arrValues = mismatchValuesFrom(NSNumber.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = NSString(string: value.stringValue)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.nSString, resultValue)
            XCTAssertEqual(modelResult?.nSStringOptionl, resultValue)
            XCTAssertEqual(modelResult?.nSStringUnwrapped, resultValue)
        }
    }
    
    /// Test NSString from NSNumber in class to json string and convert back
    func testClassNSStringFromNSNumberUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(NSNumber.self, to:NSString.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSString":value,"nSStringOptionl":value,"nSStringUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : NSString? = NSString(string: value.stringValue)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSString, empertyValueForType(NSString.self)!)
                XCTAssertNil(modelResult?.nSStringOptionl)
                XCTAssertNil(modelResult?.nSStringUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(NSString.self)!) {
                    XCTAssertEqual(modelResult?.nSString, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.nSString, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.nSStringOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.nSStringUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test NSNumber from Int in class to json string and convert back
    func testClassNSNumberFromIntToModel () {
    
        let arrValues = mismatchValuesFrom(Int.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = NSNumber(value:value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.nSNumber, resultValue)
            XCTAssertEqual(modelResult?.nSNumberOptionl, resultValue)
            XCTAssertEqual(modelResult?.nSNumberUnwrapped, resultValue)
        }
    }
    
    /// Test NSNumber from Int in class to json string and convert back
    func testClassNSNumberFromIntUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Int.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : NSNumber? = NSNumber(value:value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSNumber, empertyValueForType(NSNumber.self)!)
                XCTAssertNil(modelResult?.nSNumberOptionl)
                XCTAssertNil(modelResult?.nSNumberUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(NSNumber.self)!) {
                    XCTAssertEqual(modelResult?.nSNumber, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.nSNumber, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.nSNumberOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.nSNumberUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test NSNumber from String in class to json string and convert back
    func testClassNSNumberFromStringToModel () {
    
        let arrValues = mismatchValuesFrom(String.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = convertStringToNSNumber(value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.nSNumber, resultValue)
            XCTAssertEqual(modelResult?.nSNumberOptionl, resultValue)
            XCTAssertEqual(modelResult?.nSNumberUnwrapped, resultValue)
        }
    }
    
    /// Test NSNumber from String in class to json string and convert back
    func testClassNSNumberFromStringUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(String.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : NSNumber? = convertStringToNSNumber(value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSNumber, empertyValueForType(NSNumber.self)!)
                XCTAssertNil(modelResult?.nSNumberOptionl)
                XCTAssertNil(modelResult?.nSNumberUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(NSNumber.self)!) {
                    XCTAssertEqual(modelResult?.nSNumber, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.nSNumber, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.nSNumberOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.nSNumberUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test NSNumber from Float in class to json string and convert back
    func testClassNSNumberFromFloatToModel () {
    
        let arrValues = mismatchValuesFrom(Float.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = NSNumber(value:value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.nSNumber, resultValue)
            XCTAssertEqual(modelResult?.nSNumberOptionl, resultValue)
            XCTAssertEqual(modelResult?.nSNumberUnwrapped, resultValue)
        }
    }
    
    /// Test NSNumber from Float in class to json string and convert back
    func testClassNSNumberFromFloatUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Float.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : NSNumber? = NSNumber(value:value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSNumber, empertyValueForType(NSNumber.self)!)
                XCTAssertNil(modelResult?.nSNumberOptionl)
                XCTAssertNil(modelResult?.nSNumberUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(NSNumber.self)!) {
                    XCTAssertEqual(modelResult?.nSNumber, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.nSNumber, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.nSNumberOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.nSNumberUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test NSNumber from Double in class to json string and convert back
    func testClassNSNumberFromDoubleToModel () {
    
        let arrValues = mismatchValuesFrom(Double.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = NSNumber(value:value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.nSNumber, resultValue)
            XCTAssertEqual(modelResult?.nSNumberOptionl, resultValue)
            XCTAssertEqual(modelResult?.nSNumberUnwrapped, resultValue)
        }
    }
    
    /// Test NSNumber from Double in class to json string and convert back
    func testClassNSNumberFromDoubleUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Double.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : NSNumber? = NSNumber(value:value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSNumber, empertyValueForType(NSNumber.self)!)
                XCTAssertNil(modelResult?.nSNumberOptionl)
                XCTAssertNil(modelResult?.nSNumberUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(NSNumber.self)!) {
                    XCTAssertEqual(modelResult?.nSNumber, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.nSNumber, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.nSNumberOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.nSNumberUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test NSNumber from Bool in class to json string and convert back
    func testClassNSNumberFromBoolToModel () {
    
        let arrValues = mismatchValuesFrom(Bool.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = NSNumber(value:value)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.nSNumber, resultValue)
            XCTAssertEqual(modelResult?.nSNumberOptionl, resultValue)
            XCTAssertEqual(modelResult?.nSNumberUnwrapped, resultValue)
        }
    }
    
    /// Test NSNumber from Bool in class to json string and convert back
    func testClassNSNumberFromBoolUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(Bool.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : NSNumber? = NSNumber(value:value)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSNumber, empertyValueForType(NSNumber.self)!)
                XCTAssertNil(modelResult?.nSNumberOptionl)
                XCTAssertNil(modelResult?.nSNumberUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(NSNumber.self)!) {
                    XCTAssertEqual(modelResult?.nSNumber, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.nSNumber, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.nSNumberOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.nSNumberUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test NSNumber from NSString in class to json string and convert back
    func testClassNSNumberFromNSStringToModel () {
    
        let arrValues = mismatchValuesFrom(NSString.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue = convertStringToNSNumber(value as String)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.nSNumber, resultValue)
            XCTAssertEqual(modelResult?.nSNumberOptionl, resultValue)
            XCTAssertEqual(modelResult?.nSNumberUnwrapped, resultValue)
        }
    }
    
    /// Test NSNumber from NSString in class to json string and convert back
    func testClassNSNumberFromNSStringUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(NSString.self, to:NSNumber.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["nSNumber":value,"nSNumberOptionl":value,"nSNumberUnwrapped":value]
            let modelResult = BaseTypeClass.initWith(dic)
            let resultValue : NSNumber? = convertStringToNSNumber(value as String)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.nSNumber, empertyValueForType(NSNumber.self)!)
                XCTAssertNil(modelResult?.nSNumberOptionl)
                XCTAssertNil(modelResult?.nSNumberUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(NSNumber.self)!) {
                    XCTAssertEqual(modelResult?.nSNumber, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.nSNumber, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.nSNumberOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.nSNumberUnwrapped, resultValue!)
            }
            
        }
    }
    /// Test EnumInt from String in class to json string and convert back
    func testClassEnumIntFromStringToModel () {
    
        let arrValues = mismatchValuesFrom(String.self, to:EnumInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["enumInt":value,"enumIntOptionl":value,"enumIntUnwrapped":value]
            let modelResult = EnumClass.initWith(dic)
            let resultValue = ((Int(value) != nil) ? EnumInt(rawValue: Int(value)!) : nil)
            
            XCTAssertNotNil(modelResult)
            XCTAssertEqual(modelResult?.enumInt, resultValue)
            XCTAssertEqual(modelResult?.enumIntOptionl, resultValue)
            XCTAssertEqual(modelResult?.enumIntUnwrapped, resultValue)
        }
    }
    
    /// Test EnumInt from String in class to json string and convert back
    func testClassEnumIntFromStringUnexpectedToModel () {
    
        let arrValues = mismatchUnexpectedValuesFrom(String.self, to:EnumInt.self)
        XCTAssertNotNil(arrValues)
        for value in arrValues! {
        
            let dic = ["enumInt":value,"enumIntOptionl":value,"enumIntUnwrapped":value]
            let modelResult = EnumClass.initWith(dic)
            let resultValue : EnumInt? = ((Int(value) != nil) ? EnumInt(rawValue: Int(value)!) : nil)
            
            XCTAssertNotNil(modelResult)
            if (resultValue == nil) {
                XCTAssertEqual(modelResult?.enumInt, .One)
                XCTAssertNil(modelResult?.enumIntOptionl)
                XCTAssertNil(modelResult?.enumIntUnwrapped)
            } else {
                if (resultValue! == empertyValueForType(EnumInt.self)!) {
                    XCTAssertEqual(modelResult?.enumInt, resultValue!)
                } else {
                    XCTAssertNotEqual(modelResult?.enumInt, resultValue!)
                }
                XCTAssertNotEqual(modelResult?.enumIntOptionl, resultValue!)
                XCTAssertNotEqual(modelResult?.enumIntUnwrapped, resultValue!)
            }
            
        }
    }


}

