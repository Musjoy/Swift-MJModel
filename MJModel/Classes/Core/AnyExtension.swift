//
//  AnyExtension.swift
//  Alamofire
//
//  Created by 黄磊 on 2019/7/12.
//

import Foundation


/// 用协议方式扩展Any
protocol _AnyExtension {}

extension _AnyExtension {
    
    /// 读取指定内存位置的数据，并转化成当前类型
    static func _read(from rawPointer: UnsafeRawPointer) -> Self? {
        let value = rawPointer.assumingMemoryBound(to: self).pointee
        return value
    }
    
    /// 将数据写入到指定内存
    static func _write(_ value: Any, to rawPointer: UnsafeMutableRawPointer) {
        guard let this = value as? Self else {
            return
        }
        rawPointer.assumingMemoryBound(to: self).pointee = this
    }
    
    /// 获取当前类型的内存占用尺寸
    static func _size() -> Int {
        return MemoryLayout<Self>.size
    }
    
    /// 获取当前类型的内存对齐步长
    static func _alignment() -> Int {
        return MemoryLayout<Self>.alignment
    }
}

/// 获取给定类型的扩展类型
func _theExtension(withType type: Any.Type) -> _AnyExtension.Type {
    struct Extension : _AnyExtension {}
    var aExtension: _AnyExtension.Type = Extension.self
    withUnsafePointer(to: &aExtension) { pointer in
        // 偷梁换柱，修改类型
        UnsafeMutableRawPointer(mutating: pointer).assumingMemoryBound(to: Any.Type.self).pointee = type
    }
    return aExtension
}
