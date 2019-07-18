//
//  CovertToBaseType.swift
//  MJModel
//
//  Created by 黄磊 on 2019/7/12.
//

import Foundation

/// 通用将Any转为基础类型方法
func _convertAnyToBaseType(_ data : Any) -> Any? {
    if data is Model {
        return (data as! Model).toDictionary()
    } else if data is _BaseType {
        return data
    } else if data is _ConvertToBaseType {
        return (data as! _ConvertToBaseType)._convertToBaseType()
    } else if data is ConvertToBaseType {
        return (data as! ConvertToBaseType).convertToBaseType()
    } else {
        print("The type \(String(describing: type(of: data))) is not suppored for now! You can inherit from Model or inherit from ConvertToBaseType protocal and implement convertToBaseType function")
        return nil
    }
}

// MARK: - ConvertToBaseType<数据转化为基础类型协议>
// MARK: 数据转化为基础类型协议
/// 数据转化为基础类型协议
public protocol ConvertToBaseType {
    /// 转化成基础类型，可以是包含基础类型的字段或数组
    func convertToBaseType() -> Any?
}
/// 数据转化为基础类型协议，内部使用
protocol _ConvertToBaseType {
    func _convertToBaseType() -> Any?
}

// MARK: Optional
extension Optional : _ConvertToBaseType {
    func _convertToBaseType() -> Any? {
        if self == nil {
            return Optional<Wrapped>.none
        }
        return _convertAnyToBaseType(self!)
    }
}

// MARK: - 数组
extension Array : _ConvertToBaseType {
    func _convertToBaseType() -> Any? {
        if Element.self is _BaseType.Type {
            return self
        }
        var newArr = [Any]();
        for item in self {
            if item is _BaseType {
                newArr.append(item)
            } else {
                let newItem = _convertAnyToBaseType(item)
                if newItem != nil {
                    newArr.append(newItem!)
                }
            }
        }
        return newArr
    }
}

extension NSArray : _ConvertToBaseType {
    func _convertToBaseType() -> Any? {
        var newArr = [Any]();
        for item in self {
            if item is _BaseType {
                newArr.append(item)
            } else {
                let newItem1 = _convertAnyToBaseType(item)
                if newItem1 != nil {
                    newArr.append(newItem1!)
                }
            }
        }
        return newArr
    }
}


// MARK: - 字典
extension Dictionary : _ConvertToBaseType {
    func _convertToBaseType() -> Any? {
        if Value.self is _BaseType.Type {
            return self
        }
        var newDic = [String : Any]();
        for item in self {
            guard let key = item.key as? String else {
                continue
            }
            if item.value is _BaseType {
                newDic[key] = item.value
            } else {
                let newValue = _convertAnyToBaseType(item.value)
                if newValue != nil {
                    newDic[key] = newValue
                }
            }
        }
        return newDic
    }
}

extension NSDictionary : _ConvertToBaseType {
    func _convertToBaseType() -> Any? {
        var newDic = [String : Any]();
        for item in self {
            guard let key = item.key as? String else {
                continue
            }
            if item.value is _BaseType {
                newDic[key] = item.value
            } else {
                let newValue = _convertAnyToBaseType(item.value)
                if newValue != nil {
                    newDic[key] = newValue
                }
            }
        }
        return newDic
    }
}


// MARK: - 基础类型
protocol _BaseType {}

// MARK: -字符串
extension String : _BaseType {}
extension NSString : _BaseType {}
// MARK: -数值类型
extension NSNumber : _BaseType {}
extension Int : _BaseType {}
extension UInt: _BaseType {}
extension Int8: _BaseType {}
extension Int16: _BaseType {}
extension Int32: _BaseType {}
extension Int64: _BaseType {}
extension UInt8: _BaseType {}
extension UInt16: _BaseType {}
extension UInt32: _BaseType {}
extension UInt64: _BaseType {}

extension Float: _BaseType {}
extension Double: _BaseType {}

extension Bool : _BaseType {}
