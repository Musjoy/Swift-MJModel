//
//  TestUtils.swift
//  MJModel_Tests
//
//  Created by 黄磊 on 2019/8/5.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation

let s_dicDefaultValues : [String : Any] = [
    "Int" : 1,
    "UInt" : UInt(2),
    "Int8" : Int8(3),
    "Int16" : Int16(4),
    "Int32" : Int32(5),
    "Int64" : Int64(6),
    "UInt8" : UInt8(7),
    "UInt16" : UInt16(8),
    "UInt32" : UInt32(9),
    "UInt64" : UInt64(10),

    "Float" : Float(1.1),
    "Double" : 1.2,

    "Bool" : true,

    "String" : "string1stringstringstringstringstringstringstringstringstringstringstring",

    "NSString" : "nsstring",

    "NSNumber" : 123,
    
    "Any" : "any",
]

let s_dicEmpertyValues : [String : Any] = [
    "Int" : 0,
    "UInt" : UInt(0),
    "Int8" : Int8(0),
    "Int16" : Int16(0),
    "Int32" : Int32(0),
    "Int64" : Int64(0),
    "UInt8" : UInt8(0),
    "UInt16" : UInt16(0),
    "UInt32" : UInt32(0),
    "UInt64" : UInt64(0),

    "Float" : Float(0.0),
    "Double" : 0.0,

    "Bool" : false,

    "String" : "",

    "NSString" : "",

    "NSNumber" : 0,
    
    "Any" : 0,
]

let s_dicMismatchValues : [String : Any] = [
    "Int" : [
        "String" : ["1","0","-1"],
        "StringUnexpected" : ["","1.1","abc"],
        "Float" : [Float(1),Float(0),Float(-1)],
        "FloatUnexpected" : [Float(1.1)],
        "Double" : [Double(1),Double(0),Double(-1)],
        "DoubleUnexpected" : [Double(1.1)],
        "Bool" : [true, false],
        "BoolUnexpected" : [],
        "NSString" : [NSString("1"),NSString("0"),NSString("-1")],
        "NSStringUnexpected" : [NSString(""),NSString("1.1"),NSString("abc")],
        "NSNumber" : [NSNumber(1),NSNumber(0),NSNumber(-1)],
        "NSNumberUnexpected" : [NSNumber(1.1)],
    ],
    "UInt" : [
        "Int" : [0,1],
        "IntUnexpected" : [-1],
        "IntException" : [],
        "String" : ["0","1"],
        "StringUnexpected" : ["","1.1","-1","abc"],
        "Float" : [Float(0),Float(1)],
        "FloatUnexpected" : [Float(1.1),Float(-1)],
        "FloatException" : [],
        "Double" : [Double(0),Double(1)],
        "DoubleUnexpected" : [Double(1.1),Double(-1)],
        "DoubleException" : [],
        "Bool" : [true,false],
        "BoolUnexpected" : [],
        "NSString" : [NSString("0"),NSString("1")],
        "NSStringUnexpected" : [NSString(""),NSString("1.1"),NSString("-1"),NSString("abc")],
        "NSNumber" : [NSNumber(0),NSNumber(1)],
        "NSNumberUnexpected" : [NSNumber(1.1),NSNumber(-1)],
    ],
   

    "Float" : [
        "Int" : [1,0,-1],
        "IntUnexpected" : [],
        "String" : ["1","0","1.1","-1"],
        "StringUnexpected" : ["","abc"],
        "Double" : [Double(1),Double(0),Double(1.1),Double(-1)],
        "DoubleUnexpected" : [],
        "Bool" : [true, false],
        "BoolUnexpected" : [],
        "NSString" : [NSString("1"),NSString("0"),NSString("1.1"),NSString("-1")],
        "NSStringUnexpected" : [NSString(""),NSString("abc")],
        "NSNumber" : [NSNumber(1),NSNumber(0),NSNumber(1.1),NSNumber(-1)],
        "NSNumberUnexpected" : [],
    ],
    "Double" : [
        "Int" : [1,0,-1],
        "IntUnexpected" : [],
        "String" : ["1","0","1.1","-1"],
        "StringUnexpected" : ["","abc"],
        "Float" : [Float(1),Float(0),Float(1.1),Float(-1)],
        "FloatUnexpected" : [],
        "Bool" : [true, false],
        "BoolUnexpected" : [],
        "NSString" : [NSString("1"),NSString("0"),NSString("1.1"),NSString("-1")],
        "NSStringUnexpected" : [NSString(""),NSString("abc")],
        "NSNumber" : [NSNumber(1),NSNumber(0),NSNumber(1.1),NSNumber(-1)],
        "NSNumberUnexpected" : [],
    ],

    "Bool" : [
        "Int" : [1,0,-1],
        "IntUnexpected" : [],
        "String" : ["1","0","true","false"],
        "StringUnexpected" : ["","abc"],
        "Float" : [Float(1),Float(0),Float(1.1),Float(-1)],
        "FloatUnexpected" : [],
        "Double" : [Double(1),Double(0),Double(1.1),Double(-1)],
        "DoubleUnexpected" : [],
        "NSString" : [NSString("1"),NSString("0"),NSString("true"),NSString("false")],
        "NSStringUnexpected" : [NSString(""),NSString("abc")],
        "NSNumber" : [NSNumber(1),NSNumber(0),NSNumber(1.1),NSNumber(-1)],
        "NSNumberUnexpected" : [],
    ],

    "String" : [
        "Int" : [1,0,-1],
        "IntUnexpected" : [],
        "Float" : [Float(1.1)],
        // 1.0、0.0、-1.0 转字符串只能得到 1、0、-1
        "FloatUnexpected" : [Float(1),Float(0),Float(-1)],
        "Double" : [Double(1.1)],
        "DoubleUnexpected" : [Double(1),Double(0),Double(-1)],
        "Bool" : [],
        "BoolUnexpected" : [true, false],
        "NSNumber" : [NSNumber(1),NSNumber(0),NSNumber(1.1),NSNumber(-1)],
        "NSNumberUnexpected" : [],
    ],

    "NSString" : [
       "Int" : [1,0,-1],
       "IntUnexpected" : [],
       "Float" : [Float(1.1)],
       // 1.0、0.0、-1.0 转字符串只能得到 1、0、-1
       "FloatUnexpected" : [Float(1),Float(0),Float(-1)],
       "Double" : [Double(1.1)],
       "DoubleUnexpected" : [Double(1),Double(0),Double(-1)],
       "Bool" : [],
       "BoolUnexpected" : [true, false],
       "NSNumber" : [NSNumber(1),NSNumber(0),NSNumber(1.1),NSNumber(-1)],
       "NSNumberUnexpected" : [],
   ],

    "NSNumber" : [
       "Int" : [1,0,-1],
       "IntUnexpected" : [],
       "String" : ["1","0","1.1","-1","true","false"],
       "StringUnexpected" : ["","abc"],
       "Float" : [Float(1),Float(0),Float(1.1),Float(-1)],
       "FloatUnexpected" : [],
       "Double" : [Double(1),Double(0),Double(1.1),Double(-1)],
       "DoubleUnexpected" : [],
       "Bool" : [true, false],
       "BoolUnexpected" : [],
       "NSString" : [NSString("1"),NSString("0"),NSString("1.1"),NSString("-1"),NSString("true"),NSString("false")],
       "NSStringUnexpected" : [NSString(""),NSString("abc")],
   ],
    
    "EnumInt" : [
        "String" : ["0","1"],
        "StringUnexpected" : ["", "-1"],
    ]
]


func defaultValueForType<T>(_ anyType:T.Type) -> T? {
    
    let typeName = String(describing: anyType)
    if let aValue = s_dicDefaultValues[typeName] {
        if let data:T = aValue as? T {
            return data
        }
    }
    return nil
}

func empertyValueForType<T>(_ anyType:T.Type) -> T? {
    
    let typeName = String(describing: anyType)
    if let aValue = s_dicEmpertyValues[typeName] {
        if let data:T = aValue as? T {
            return data
        }
    }
    return nil
}

func mismatchValuesFrom<T>(_ anyType:T.Type, to:Any.Type) -> [T]? {
    
    let toTypeName = String(describing: to)
    if let aDic = s_dicMismatchValues[toTypeName] as? [String:[Any]] {
        let fromTypeName = String(describing: anyType)
        if let arr = aDic[fromTypeName] as? [T] {
            return arr
        }
    }
    return nil
}

func mismatchUnexpectedValuesFrom<T>(_ anyType:T.Type, to:Any.Type) -> [T]? {
    
    let toTypeName = String(describing: to)
    if let aDic = s_dicMismatchValues[toTypeName] as? [String:[Any]] {
        let fromTypeName = String(describing: anyType) + "Unexpected"
        if let arr = aDic[fromTypeName] as? [T] {
            return arr
        }
    }
    return nil
}

func mismatchExceptionValuesFrom<T>(_ anyType:T.Type, to:Any.Type) -> [T]? {
    
    let toTypeName = String(describing: to)
    if let aDic = s_dicMismatchValues[toTypeName] as? [String:[Any]] {
        let fromTypeName = String(describing: anyType) + "Exception"
        if let arr = aDic[fromTypeName] as? [T] {
            return arr
        }
    }
    return nil
}

func convertStringToNSNumber(_ str:String) -> NSNumber? {
    // 这里可能是bool
    let lowercase = str.lowercased()
    if lowercase == "true" {
        return NSNumber(booleanLiteral: true)
    } else if lowercase == "false" {
        return NSNumber(booleanLiteral: false)
    }
    let formatter = NumberFormatter()
    formatter.numberStyle = .decimal
    return formatter.number(from: str)
}
