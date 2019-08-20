//
//  AnyConvertibleTo.swift
//  MJModel
//
//  Created by 黄磊 on 2019/7/12.
//

import Foundation

/// 通用将Any转为指定类型
func _anyConvertToType(_ data : Any, aType : Any.Type) -> Any? {
    if type(of: data) == aType {
        return data
    }
    var newValue : Any? = nil
    if (aType is Model.Type) {
        newValue = (aType as! Model.Type).convert(from : data)
    } else if (aType is _AnyConvertibleTo.Type) {
        newValue = (aType as! _AnyConvertibleTo.Type)._convert(from : data)
    } else if (aType is AnyConvertibleTo.Type) {
        newValue = (aType as! AnyConvertibleTo.Type).convert(from : data)
    } else {
        print("The type \(aType) is not suppored for now! You can inherit from Model or inherit from AnyConvertibleTo protocal and implement convert(from) function")
    }
    return newValue
}


// MARK: - AnyConvertibleTo<数据转化为指定类型协议>
// MARK: 数据转化为指定类型协议
/// 数据转化为指定类型协议
public protocol AnyConvertibleTo {
    /// 从任意类型转化成自身类型
    static func convert(from object: Any) -> Self?
}
/// 数据转化为指定类型协议，内部使用
protocol _AnyConvertibleTo {
    static func _convert(from object: Any) -> Self?
}


// MARK: - 基础类型
// MARK: - 可选类型
extension Optional : _AnyConvertibleTo {
    static func _convert(from object: Any) -> Optional? {
        if let value = object as? Wrapped {
            return Optional(value)
        }
        let value = _anyConvertToType(object, aType: Wrapped.self) as? Wrapped
        if value != nil {
            return Optional(value!)
        }
        return nil
    }
}

// MARK: - 字符串类型
protocol _AnyConvertibleToString : _AnyConvertibleTo {}
extension _AnyConvertibleToString {
    static func _convert(from object: Any) -> Self? {
        if object is NSNumber {
            return (object as! NSNumber).stringValue as? Self
        }
        let newObject = object as? Self
        return newObject
    }
}
extension String : _AnyConvertibleToString {}
extension NSString : _AnyConvertibleToString {}

// MARK: - 数值
extension NSNumber : _AnyConvertibleTo {
    static func _convert(from object: Any) -> Self? {
        if let str = object as? NSString {
            let lowercase = str.lowercased
            if lowercase == "true" {
                return NSNumber(booleanLiteral: true) as? Self
            } else if lowercase == "false" {
                return NSNumber(booleanLiteral: false) as? Self
            }
            // normal number
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            return formatter.number(from: str as String) as? Self
        }
        // 这里直接 as? Self 会导致swift编译错误
        let newObject = object as? NSNumber
        return newObject as? Self
    }
}

// MARK: Int
protocol _AnyConvertibleToInt : FixedWidthInteger, _AnyConvertibleTo {}
extension _AnyConvertibleToInt {
    static func _convert(from object: Any) -> Self? {
        if let str = object as? String {
            return Self(str, radix:10)
        } else if let num = object as? NSNumber {
            return Self(num.stringValue)
        }
        let newObject = object as? Self
        return newObject
    }
}
extension Int : _AnyConvertibleToInt {}
extension UInt: _AnyConvertibleToInt {}
extension Int8: _AnyConvertibleToInt {}
extension Int16: _AnyConvertibleToInt {}
extension Int32: _AnyConvertibleToInt {}
extension Int64: _AnyConvertibleToInt {}
extension UInt8: _AnyConvertibleToInt {}
extension UInt16: _AnyConvertibleToInt {}
extension UInt32: _AnyConvertibleToInt {}
extension UInt64: _AnyConvertibleToInt {}

// MARK: Float
extension Float : _AnyConvertibleTo {
    static func _convert(from object: Any) -> Float? {
        if let str = object as? String {
            return Self(str)
        } else if let num = object as? NSNumber {
            return num.floatValue
        }
        return nil
    }
}
// MARK: Double
extension Double : _AnyConvertibleTo {
    static func _convert(from object: Any) -> Double? {
        if let str = object as? String {
            return Self(str)
        } else if let num = object as? NSNumber {
            return num.doubleValue
        }
        return nil
    }
}


// MARK: Bool
extension Bool : _AnyConvertibleTo {
    static func _convert(from object: Any) -> Bool? {
        if let str = object as? String {
            if str == "1" || str == "true" {
                return true
            } else if str == "0" || str == "false" {
                return false
            }
            return nil
        } else if let num = object as? NSNumber {
            return num.boolValue
        }
        return nil
    }
}


// MARK: - 数组
extension Array : _AnyConvertibleTo {
    static func _convert(from object: Any) -> Self? {
        guard let arr = object as? [Any] else {
            return nil
        }
        var result: [Element] = [Element]()
        arr.forEach { (each) in
            if let element = each as? Element {
                result.append(element)
            } else {
                let element = _anyConvertToType(each, aType: Element.self) as? Element
                if element != nil {
                    result.append(element!)
                }
            }
        }
        return result
    }
}

extension NSArray : _AnyConvertibleTo {
    static func _convert(from object: Any) -> Self? {
        guard let arr = object as? [Any] else {
            return nil
        }
        let result = NSMutableArray()
        arr.forEach { (each) in
            result.add(each)
        }
        return result as NSArray as? Self
    }
}


// MARK: - 字典
extension Dictionary : _AnyConvertibleTo {
    static func _convert(from object: Any) -> Self? {
        guard let dic = object as? [String : Any] else {
            return nil
        }
        var result: [Key : Value] = [Key : Value]()
        dic.forEach { (each) in
            guard let key = each.key as? Key else {
                return
            }
            if let element = each.value as? Value {
                result[key] = element
            } else {
                let element = _anyConvertToType(each.value, aType: Value.self) as? Value
                if element != nil {
                    result[key] = element
                }
            }
        }
        return result
    }
}

extension NSDictionary : _AnyConvertibleTo {
    static func _convert(from object: Any) -> Self? {
        guard let dic = object as? [String : Any] else {
            return nil
        }
        let result = NSMutableDictionary()
        dic.forEach { (each) in
            result.setValue(each.value, forKey: each.key)
        }
        return result as NSDictionary as? Self
    }
}
