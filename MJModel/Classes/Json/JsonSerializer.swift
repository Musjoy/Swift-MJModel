//
//  ModuleJson.swift
//  MJModule
//
//  Created by 黄磊 on 2018/3/22.
//  Json解析模块

import Foundation

/// JSON 解析器，提供基础类型的JSON转换
public class JsonSerializer {
    
    /// JSON String -> Object(dic or arr)<Json字符串转对象>
    public static func jsonObject(from string: String) -> Any? {
        
        guard let data = string.data(using: .utf8) else { return nil }

        return self.jsonObject(from: data)
    }
    
    /// JSON Data -> Object(dic or arr)<Json数据转对象>
    public static func jsonObject(from data: Data) -> Any? {
        
        do {
            let dict = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
            if dict is String {
                // 这里有可能是普通字符串，系统默认也会转成功，已知的 "\"\"", 类似这种包含的字符串
                return nil
            }
            return dict
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
    
    /// Any -> Object(dic or arr)<任意类型转对象>
    public static func jsonSting(from object: Any) -> String? {
        
        do {
            if JSONSerialization.isValidJSONObject(object) {
                let data = try JSONSerialization.data(withJSONObject: object)
                let dataStr = String(data: data, encoding: String.Encoding.utf8)
                return dataStr
            }
            return nil
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
}

// MARK: - 系统类扩展
/// Json对象转字符串
public protocol JsonObjectToString {}
extension JsonObjectToString {
    public func toJSONString() -> String? {
        let jsonStr = JsonSerializer.jsonSting(from: self);
        return jsonStr
    }
}
extension Dictionary : JsonObjectToString {}
extension Array : JsonObjectToString {}
extension NSDictionary : JsonObjectToString {}
extension NSArray : JsonObjectToString {}

/// Json字符串转对象
public protocol JsonStringToObject {}
extension JsonStringToObject {
    public func toJSONObject() -> Any? {
        let jsonObject = JsonSerializer.jsonObject(from: self as! String)
        return jsonObject
    }
}
extension String : JsonStringToObject {}
extension NSString : JsonStringToObject {}
