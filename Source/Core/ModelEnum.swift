//
//  ModelEnum.swift
//  MJModel
//
//  Created by 黄磊 on 2019/7/15.
//

import Foundation

public protocol ModelEnum : ConvertToBaseType, AnyConvertibleTo {
    
}

public extension RawRepresentable where Self: ModelEnum {
    
    func convertToBaseType() -> Any? {
        return self.rawValue
    }
    
    static func convert(from object: Any) -> Self? {
        if object is RawValue {
            return Self(rawValue: object as! RawValue)
        }
        let typedValue = _anyConvertToType(object, aType: RawValue.self) as? RawValue
        if typedValue != nil {
            return Self(rawValue: typedValue!)
        }
        return nil
    }
}
