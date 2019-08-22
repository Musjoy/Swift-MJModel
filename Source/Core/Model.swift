//
//  ModuleJson.swift
//  MJModule
//
//  Created by 黄磊 on 2018/3/22.
//  Json解析模块

import Foundation


// MARK: - Model
/// Base Model
public protocol Model {
    /// 默认初始化方法
    init()
}

// MARK: - Model With Json
/// Add json surpport
extension Model  {
    
    
    /// Model To Dic
    public func toDictionary() -> [String : Any] {
        // 之所以要嫁接一层，是为了避免该方法头部加 mutating
        return Self.convertToDic(from: self)
    }
    
    /// Model To JsonString
    public func toJSONString() -> String? {
        
        // 先转字典
        let dic = self.toDictionary()
        
        return dic.toJSONString()
    }
    
    /// JsonString To Model
    public static func initWith(_ string : String) -> Self? {
        
        // 先转字典
        guard let dic = string.toJSONObject() as? [String : Any] else {
            return nil
        }
        let instance = Self.convert(from: dic)
        return instance
    }
    
    /// Dic To Model
    public static func initWith(_ dic : [String : Any]) -> Self? {
        let instance = Self.convert(from: dic)
        return instance
    }
    public static func initWith(_ dic : NSDictionary) -> Self? {
        let instance = Self.convert(from: dic)
        return instance
    }
    
    
    // MARK: - Private
    ///  Model To Dic
    static func convertToDic(from model:Model) -> [String: Any] {
        
        var dic = Dictionary<String, Any>()
        
        var aModel = model
        
        // 遍历属性列表
        let arrProperties = type(of: model)._getProperties()
        
        // 获取头部地址
        let headPointer = aModel.headPointer()
        
        // 逐个属性取值
        for aProperty in arrProperties {
            let aValue = aModel.read(aProperty, on: headPointer)
            if aValue == nil {
                continue
            }
            // 这里需要扩展
            let newValue = _convertAnyToBaseType(aValue!)
            if newValue == nil {
                continue
            }
            dic[aProperty.name] = newValue
        }
        return dic
    }
    
    /// Any To Model
    static func convert(from object: Any) -> Self? {
        if object is [String : Any] {
            return Self.convert(from: object as! [String : Any])
        }
        return nil
    }
    
    
    /// Dic To Model
    static func convert(from object: [String: Any]) -> Self? {
        
        var instance : Self = Self.init()
        
        // 获取属性列表
        let arrProperties = Self._getProperties()
        
        // 获取头部地址
        let headPointer = instance.headPointer()
        
        for aProperty in arrProperties {
            // 逐个属性赋值
            let aKey = aProperty.name
            let aValue = object[aKey];
            if (aValue == nil) {
                continue
            }
            
            // 属性转化
            let newValue = _anyConvertToType(aValue!, aType: aProperty.type)
            if newValue == nil {
                continue
            }
            
            // 属性写入
            instance.write(aProperty, with: newValue!, on: headPointer)
        }
        
        return instance
    }

}

// MARK: - Get Head Pointer<获取头部地址>
/// 扩展Model读取头部地址
extension Model {
    mutating func headPointer() -> UnsafeMutablePointer<Int8> {
        if Self.self is AnyClass {
            // 类，找到指定的堆地址
            let opaquePointer = Unmanaged.passUnretained(self as AnyObject).toOpaque()
            let mutableTypedPointer = opaquePointer.bindMemory(to: Int8.self, capacity: MemoryLayout<Self>.stride)
            return UnsafeMutablePointer<Int8>(mutableTypedPointer)
        }
        // 结构体
        return withUnsafeMutablePointer(to: &self) {
            return UnsafeMutableRawPointer($0).bindMemory(to: Int8.self, capacity: MemoryLayout<Self>.stride)
        }
    }
}

// MARK: - Read & Write<读写扩展>
/// 扩展Model读写功能
extension Model {
    /// 读取对应属性
    func read(_ property:ModelProperty, on head:UnsafeMutablePointer<Int8>) -> Any? {
        return _theExtension(withType: property.type)._read(from: (head.advanced(by: property.offset)))
    }
    /// 写入对应属性
    func write(_ property:ModelProperty, with object: Any, on head:UnsafeMutablePointer<Int8>) {
        _theExtension(withType: property.type)._write(object, to: head.advanced(by: property.offset))
    }
}

// MARK: - Extension Array<扩展数组>

public extension Array where Element : Model {
    
    /// [Model] To JsonObject
    private func _toJSONObject() -> [Any] {
        return _convertAnyToBaseType(self) as! [Any]
    }
    
    /// [Model] To JsonString
    func toJSONString() -> String? {
        
        // 先转数组
        let arr = self._toJSONObject()
        
        let jsonStr = JsonSerializer.jsonSting(from: arr);
        return jsonStr
    }
    
    /// JsonString To [Model]
    static func initWith(_ string : String) -> Self? {
        
        // 先转数组
        let arr = string.toJSONObject()
        
        if arr is [Any] {
            return self.initWith(arr as! [Any])
        }
        return nil
    }
    
    /// [Any] To [Model]
    static func initWith(_ array : [Any]) -> Self? {
        return self.initWith(array as NSArray)
    }
    
    /// NSArray To [Model]
    static func initWith(_ array : NSArray) -> Self? {
        var newArr = [Element]()
        for item in array {
            let value = _anyConvertToType(item, aType: Element.self) as? Element
            if (value != nil) {
                newArr.append(value!)
            }
        }
        return newArr
    }
}

// MARK: - Extension Dictionary<扩展数组>

public extension Dictionary where Value : Model {
    
    /// [Model] To JsonObject
    private func _toJSONObject() -> [String:Any] {
        return _convertAnyToBaseType(self) as! [String:Any]
    }
    
    /// [Model] To JsonString
    func toJSONString() -> String? {
        
        // 先转字典
        let dic = self._toJSONObject()
        
        let jsonStr = JsonSerializer.jsonSting(from: dic);
        return jsonStr
    }
    
    /// JsonString To [String:Model]
    static func initWith(_ string : String) -> Self? {
        
        // 先转字典
        let dic = string.toJSONObject()
        
        if dic is [String:Any] {
            return self.initWith(dic as! [String:Any])
        }
        return nil
    }
    
    /// [String:Any] To [String:Model]
    static func initWith(_ dic : [String:Any]) -> Self? {
        
        return self.initWith(dic as NSDictionary)
    }
    
    /// NSDictionary To [String:Model]
    static func initWith(_ dic : NSDictionary) -> Self? {
        var newDic = [Key:Value]()
        for item in dic {
            guard let key = item.key as? Key else {
                return nil
            }
            let value = _anyConvertToType(item.value, aType: Value.self) as? Value
            if (value != nil) {
                newDic[key] = value
            }
        }
        return newDic
    }
}
