//
//  ModuleJson.swift
//  MJModule
//
//  Created by 黄磊 on 2018/3/22.
//  Json解析模块

import Foundation

/// JSON 解析器，提供基础类型的JSON转换
public class JsonSerializer {
    
    /// Json字符串转对象，JSON String -> Object(dic or arr)
    public static func jsonObject(from string: String) -> Any? {
        
        guard let data = string.data(using: .utf8) else {return nil}

        return self.jsonObject(from: data)
    }
    
    public static func jsonObject(from data: Data) -> Any? {
        
        do {
            let dict = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
            if dict is String {
                // 这里有可能是普通字符串，系统默认也会转成功
                throw NSError.init(domain: "MJModule.Json", code: -100, userInfo: [NSLocalizedDescriptionKey:"String is not object"])
            }
            return dict
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
    
    /// Json字符串转对象，JSON String -> Object(dic or arr)
    public static func jsonSting(from object: Any) -> String? {
        
        do {
            let data = try JSONSerialization.data(withJSONObject: object)
            let dataStr = String(data: data, encoding: String.Encoding.utf8)
            return dataStr
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
/// 扩展系统自带字符串
public protocol JsonStringToObject {}
extension JsonStringToObject {
    func toJSONObject() -> Any? {
        let jsonObject = JsonSerializer.jsonObject(from: self as! String)
        return jsonObject
    }
}
extension String : JsonStringToObject {}
extension NSString : JsonStringToObject {}
