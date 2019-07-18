//
//  ModelProperty.swift
//  Alamofire
//
//  Created by 黄磊 on 2019/7/12.
//

import Foundation

var s_dicPropertyMaps = [String : [String : ModelProperty]]()
var s_dicPropertyLists = [String : [ModelProperty]]()

// MARK: - ModelProperty<模型属性>

/// 字段属性
struct ModelProperty {
    
    /// 属性名称
    let name : String
    /// 属性类型
    let type : Any.Type
    /// 内存地址偏移
    let offset: Int
    /// 内存占用尺寸
    let size: Int
    /// 按步长内存长度
    let stride: Int
    /// 内存对齐步长
    let alignment: Int
    /// 是否可选<该值不可靠>
    var isOptional : Bool = false
    
    init(item:Mirror.Child, offset:Int) {
        self.name = item.label!
        var aType = Swift.type(of: item.value)
        if (aType is NSObject.Type) {
            /// NSObject 读取的类型有偏差，需要修正
            aType = (item.value as! NSObject).classForCoder
        }
        self.type = aType
        let aExtension = theExtension(withType: aType)
        self.size = aExtension.size()
        self.stride = aExtension.stride()
        self.alignment = aExtension.alignment()
        let remainder = offset % self.alignment
        if remainder == 0 {
            self.offset = offset
        } else {
            self.offset = offset + (self.alignment - remainder)
        }

        if (String(reflecting: item.value)) == "nil" {
            // 这个不可靠
            self.isOptional = true
        }
    }
    
}

// MARK: - Extension Mode With Property
/// 扩展属性列表获取
extension Model {
    
    /// 获取完整的类名
    static func _getTypeFullName() -> String {
        return String(reflecting: Self.self)
    }
    
    /// 获取该类的属性列表，并以键值对的方式保存，暂时未使用
    static func _getPropertyMap() -> [String : ModelProperty]?{
        if let dicCache = s_dicPropertyMaps[Self._getTypeFullName()] {
            return dicCache;
        }
        let dicCache = Self._loadProperties(with: [String : ModelProperty].self)
        return dicCache
    }
    
    /// 获取该类的属性列表
    static func _getProperties() -> [ModelProperty] {
        if let arrCache = s_dicPropertyLists[Self._getTypeFullName()] {
            return arrCache;
        }
        let arr = Self._loadProperties(with: [ModelProperty].self)
        return arr
    }
    
    /// 加载属性列表
    static func _loadProperties<T>(with _:T.Type) -> T {
        
        let instance : Self = Self.init();
        
        let mirror = Mirror(reflecting: instance)
        var dic = [String : ModelProperty]()
        var curOffset = 0
        if Self.self is AnyClass {
            // 类前面固定2个字节，一个字节用于保存类的类型，并执行该类的V-Table；一个用于保存引用计数 refCount
            curOffset = 16
            if Self.self is NSObject.Type {
                // NSObject 会少一个字节，暂时还不清楚为什么
                curOffset = 8
            }
        }
        
        let arr = Self._propertiesFromMirror(mirror, curOffset: &curOffset, map: &dic)
        
        // 校验一下尺寸
        var size : Int
        if Self.self is AnyClass {
            size = class_getInstanceSize(Self.self as? AnyClass)
        } else {
            size = MemoryLayout<Self>.size
        }
        if size != curOffset {
            print("This model { \(Self.self) } contains field with 'Any' type! Please use specific type or user 'Any?' type")
        }
        
        let typeFullName = Self._getTypeFullName()
        s_dicPropertyMaps[typeFullName] = dic
        s_dicPropertyLists[typeFullName] = arr
        if T.self is [String : Any].Type {
            return dic as! T
        } else {
            return arr as! T
        }
    }
    
    /// 从镜像中遍历属性列表
    static func _propertiesFromMirror(_ mirror:Mirror, curOffset:inout Int, map:inout [String : ModelProperty]) -> [ModelProperty] {
        var arr = [ModelProperty]()
        if mirror.superclassMirror != nil {
            let arrSuper = Self._propertiesFromMirror(mirror.superclassMirror!, curOffset: &curOffset, map: &map)
            if !arrSuper.isEmpty {
                arr += arrSuper
            }
        }
        for item in mirror.children {
            if (item.label == nil) {
                continue
            }
            let aProperty = ModelProperty.init(item: item, offset: curOffset)
            arr.append(aProperty)
            map[aProperty.name] = aProperty;
            curOffset = aProperty.offset + aProperty.size
        }
        return arr
    }
}
