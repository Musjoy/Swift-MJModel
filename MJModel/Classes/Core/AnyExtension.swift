//
//  AnyExtension.swift
//  Alamofire
//
//  Created by 黄磊 on 2019/7/12.
//

import Foundation


/// 用协议方式扩展Any
protocol AnyExtension {}

extension AnyExtension {
    
    /// 读取指定内存位置的数据，并转化成当前类型
    static func read(from rawPointer: UnsafeRawPointer) -> Self? {
        let value = rawPointer.assumingMemoryBound(to: self).pointee
        return value
    }
    
    /// 将数据写入到指定内存
    static func write(_ value: Any, to rawPointer: UnsafeMutableRawPointer) {
        guard let this = value as? Self else {
            return
        }
        rawPointer.assumingMemoryBound(to: self).pointee = this
    }
    
    /// 获取当前类型的内存占用尺寸
    static func size() -> Int {
        return MemoryLayout<Self>.size
    }
    
    /// 获取当前类型的按步长内存长度
    static func stride() -> Int {
        return MemoryLayout<Self>.stride
    }
    
    /// 获取当前类型的内存对齐步长
    static func alignment() -> Int {
        return MemoryLayout<Self>.alignment
    }
}

/// 获取给定类型的扩展类型
func theExtension(withType type: Any.Type) -> AnyExtension.Type {
    struct Extension : AnyExtension {}
    var aExtension: AnyExtension.Type = Extension.self
    withUnsafePointer(to: &aExtension) { pointer in
        // 偷梁换柱，修改类型
        UnsafeMutableRawPointer(mutating: pointer).assumingMemoryBound(to: Any.Type.self).pointee = type
    }
    return aExtension
}
