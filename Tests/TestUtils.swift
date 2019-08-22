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

    "String" : "string",

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
        "String" : ["1","0","-1","","1.1","abc"],
        "StringResults" : [1, 0, -1, nil, nil, nil],
        "Float" : [Float(1),Float(0),Float(-1),Float(1.1)],
        "FloatResults" : [1, 0, -1, nil],
        "Double" : [Double(1),Double(0),Double(-1),Double(1.1)],
        "DoubleResults" : [1, 0, -1, nil],
        "Bool" : [true, false],
        "BoolResults" : [1, 0],
        "NSString" : [NSString("1"),NSString("0"),NSString("-1"),NSString(""),NSString("1.1"),NSString("abc")],
        "NSStringResults" : [1, 0, -1, nil, nil, nil],
        "NSNumber" : [NSNumber(1),NSNumber(0),NSNumber(-1),NSNumber(1.1)],
        "NSNumberResults" : [1, 0, -1, nil],
        "Any":["string".data(using: .utf8) as Any],
        "AnyResults":[nil],
    ],
    "UInt" : [
        "Int" : [0,1,-1],
        "IntResults" : [UInt(0),UInt(1),nil],
        "String" : ["0","1","","1.1","-1","abc"],
        "StringResults" : [UInt(0),UInt(1),nil,nil,nil,nil],
        "Float" : [Float(0),Float(1),Float(1.1),Float(-1)],
        "FloatResults" : [UInt(0),UInt(1),nil,nil],
        "Double" : [Double(0),Double(1),Double(1.1),Double(-1)],
        "DoubleResults" : [UInt(0),UInt(1),nil,nil],
        "Bool" : [true,false],
        "BoolResults" : [UInt(1),UInt(0)],
        "NSString" : [NSString("0"),NSString("1"),NSString(""),NSString("1.1"),NSString("-1"),NSString("abc")],
        "NSStringResults" : [UInt(0),UInt(1),nil,nil,nil,nil],
        "NSNumber" : [NSNumber(0),NSNumber(1),NSNumber(1.1),NSNumber(-1)],
        "NSNumberResults" : [UInt(0),UInt(1),nil,nil],
        "Any":["string".data(using: .utf8) as Any],
        "AnyResults":[nil],
    ],
   

    "Float" : [
        "Int" : [1,0,-1],
        "IntResults" : [Float(1),Float(0),Float(-1)],
        "String" : ["1","0","1.1","-1","","abc"],
        "StringResults" : [Float(1),Float(0),Float(1.1),Float(-1),nil,nil],
        "Double" : [Double(1),Double(0),Double(1.1),Double(-1)],
        "DoubleResults" : [Float(1),Float(0),Float(1.1),Float(-1)],
        "Bool" : [true, false],
        "BoolResults" : [Float(1),Float(0)],
        "NSString" : [NSString("1"),NSString("0"),NSString("1.1"),NSString("-1"),NSString(""),NSString("abc")],
        "NSStringResults" : [Float(1),Float(0),Float(1.1),Float(-1),nil,nil],
        "NSNumber" : [NSNumber(1),NSNumber(0),NSNumber(1.1),NSNumber(-1)],
        "NSNumberResults" : [Float(1),Float(0),Float(1.1),Float(-1)],
        "Any":["string".data(using: .utf8) as Any],
        "AnyResults":[nil],
    ],
    "Double" : [
        "Int" : [1,0,-1],
        "IntResults" : [Double(1),Double(0),Double(-1)],
        "String" : ["1","0","1.1","-1","","abc"],
        "StringResults" : [Double(1),Double(0),Double(1.1),Double(-1),nil,nil],
        "Float" : [Float(1),Float(0),Float(1.5),Float(-1)],
        "FloatResults" : [Double(1),Double(0),Double(1.5),Double(-1)],
        "Bool" : [true, false],
        "BoolResults" : [Double(1),Double(0)],
        "NSString" : [NSString("1"),NSString("0"),NSString("1.1"),NSString("-1"),NSString(""),NSString("abc")],
        "NSStringResults" : [Double(1),Double(0),Double(1.1),Double(-1),nil,nil],
        "NSNumber" : [NSNumber(1),NSNumber(0),NSNumber(1.1),NSNumber(-1)],
        "NSNumberResults" : [Double(1),Double(0),Double(1.1),Double(-1)],
        "Any":["string".data(using: .utf8) as Any],
        "AnyResults":[nil],
    ],

    "Bool" : [
        "Int" : [1,0,-1],
        "IntResults" : [true,false,true],
        "String" : ["1","0","true","false","","abc"],
        "StringResults" : [true,false,true,false,nil,nil],
        "Float" : [Float(1),Float(0),Float(1.1),Float(-1)],
        "FloatResults" : [true,false,true,true],
        "Double" : [Double(1),Double(0),Double(1.1),Double(-1)],
        "DoubleResults" : [true,false,true,true],
        "NSString" : [NSString("1"),NSString("0"),NSString("true"),NSString("false"),NSString(""),NSString("abc")],
        "NSStringResults" : [true,false,true,false,nil,nil],
        "NSNumber" : [NSNumber(1),NSNumber(0),NSNumber(1.1),NSNumber(-1)],
        "NSNumberResults" : [true,false,true,true],
        "Any":["string".data(using: .utf8) as Any],
        "AnyResults":[nil],
    ],

    "String" : [
        "Int" : [1,0,-1],
        "IntResults" : ["1","0","-1"],
        "Float" : [Float(1.1),Float(1),Float(0),Float(-1)],
        "FloatResults" : ["1.1","1","0","-1"],
        // 1.0、0.0、-1.0 转字符串只能得到 1、0、-1
        "Double" : [Double(1.1),Double(1),Double(0),Double(-1)],
        "DoubleResults" : ["1.1","1","0","-1"],
        "Bool" : [true, false],
        "BoolResults" : ["1","0"],
        "NSNumber" : [NSNumber(1),NSNumber(0),NSNumber(1.1),NSNumber(-1)],
        "NSNumberResults" : ["1","0","1.1","-1"],
    ],

    "NSString" : [
       "Int" : [1,0,-1],
       "IntResults" : ["1","0","-1"],
       "Float" : [Float(1.1),Float(1),Float(0),Float(-1)],
       "FloatResults" : ["1.1","1","0","-1"],
       // 1.0、0.0、-1.0 转字符串只能得到 1、0、-1
       "Double" : [Double(1.1),Double(1),Double(0),Double(-1)],
       "DoubleResults" : ["1.1","1","0","-1"],
       "Bool" : [true, false],
       "BoolResults" : ["1","0"],
       "NSNumber" : [NSNumber(1),NSNumber(0),NSNumber(1.1),NSNumber(-1)],
       "NSNumberResults" : ["1","0","1.1","-1"],
   ],

    "NSNumber" : [
       "Int" : [1,0,-1],
       "IntResults" : [NSNumber(1),NSNumber(0),NSNumber(-1)],
       "String" : ["1","0","1.1","-1","true","false","","abc"],
       "StringResults" : [NSNumber(1),NSNumber(0),NSNumber(1.1),NSNumber(-1),NSNumber(booleanLiteral: true),NSNumber(booleanLiteral: false),nil,nil],
       "Float" : [Float(1),Float(0),Float(1.5),Float(-1)],
       "FloatResults" : [NSNumber(1),NSNumber(0),NSNumber(1.5),NSNumber(-1)],
       "Double" : [Double(1),Double(0),Double(1.1),Double(-1)],
       "DoubleResults" : [NSNumber(1),NSNumber(0),NSNumber(1.1),NSNumber(-1)],
       "Bool" : [true, false],
       "BoolResults" : [NSNumber(booleanLiteral: true),NSNumber(booleanLiteral: false)],
       "NSString" : [NSString("1"),NSString("0"),NSString("1.1"),NSString("-1"),NSString("true"),NSString("false"),NSString(""),NSString("abc")],
       "NSStringResults" : [NSNumber(1),NSNumber(0),NSNumber(1.1),NSNumber(-1),NSNumber(booleanLiteral: true),NSNumber(booleanLiteral: false),nil,nil],
   ],
    
    "EnumInt" : [
        "Int" : [0,1,-1],
        "IntResults" : [EnumInt.One,EnumInt.Two,nil],
        "String" : ["0","1","", "-1"],
        "StringResults" : [EnumInt.One,EnumInt.Two,nil,nil],
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

func mismatchResultsFrom<T>(_ anyType:Any.Type, to:T.Type) -> [T?]? {
    
    let toTypeName = String(describing: to)
    if let aDic = s_dicMismatchValues[toTypeName] as? [String:[Any?]] {
        let fromTypeName = String(describing: anyType) + "Results"
        if let arr = aDic[fromTypeName] as? [T?] {
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
