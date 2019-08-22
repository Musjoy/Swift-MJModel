//
//  InheritTest.swift
//  MJModel_Tests
//
//  Created by 黄磊 on 2019/8/5.
//  Copyright © 2019 CocoaPods. All rights reserved.
//  继承相关测试

import Foundation
import XCTest
import MJModel

class BaseClass : Model {
    var name : String?
    var age : Int?
    
    required init() {}
}

class InheritClass : BaseClass {
    var name1 : String?
    var age1 : Int?
}

struct BaseStruct : Model {
    var name : String?
    var age : Int?
}

class ModelContainerClass: Model {
    var total : Int?
    var classModels : [InheritClass]?
    var structModels : [BaseStruct]?
    var classModelDics : [String:InheritClass]?
    var structModelDics : [String:BaseStruct]?
    var nsArr : NSArray?
    var nsDic : NSDictionary?
    
    required init() {}
}

struct ModelContainerStruct: Model {
    var total : Int?
    var classModels : [InheritClass]?
    var structModels : [BaseStruct]?
    var classModelDics : [String:InheritClass]?
    var structModelDics : [String:BaseStruct]?
    var nsArr : NSArray?
    var nsDic : NSDictionary?
}

class MixClass: Model {
    var name : String?
    var age : Int?
    var partClass : InheritClass?
    var partStruct : BaseStruct?
    
    required init() {}
}

struct MixStruct: Model {
    var name : String?
    var age : Int?
    var partClass : InheritClass?
    var partStruct : BaseStruct?
}

class OtherClass {
    var name : String?
    var age : Int?
}

class InheritOtherClass: OtherClass, Model {
    
    var name1 : String?
    var age1 : Int?
    
    required override init() {}
}

class ExtendOtherClass : OtherClass {
    var name1 : String?
    var age1 : Int?
    required override init() {}
}

extension ExtendOtherClass : Model {}

struct OtherStruct {
    var name : String?
    var age : Int?
}

struct ExtendOtherStruct {
    var name : String?
    var age : Int?
}

extension ExtendOtherStruct : Model {}

class InheritOCClass: NSObject, Model {
    
    var name : String?
    var age : Int?
    
    required override init() {}
}

class OtherOCClass : NSObject {
    var name : String?
    var age : Int?
}

class InheritOtherOCClass: OtherOCClass, Model {
    
    var name1 : String?
    var age1 : Int?
    
    required override init() {}
}

class ExtendOtherOCClass : OtherOCClass {
    var name1 : String?
    var age1 : Int?
    required override init() {}
}

extension ExtendOtherOCClass : Model {}


class _2_InheritTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    // test base type one by one
        
    /// Test inherit class to json string and convert back
    func testClassInheritToJson () {

        let model = InheritClass()
        let aName : String = defaultValueForType(String.self)!
        let aName1 : String = empertyValueForType(String.self)!
        let aAge : Int = defaultValueForType(Int.self)!
        let aAge1 : Int = empertyValueForType(Int.self)!
        model.name = aName
        model.name1 = aName1
        model.age = aAge
        model.age1 = aAge1
        
        let jsonString = model.toJSONString();
        let modelResult = InheritClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.name, aName)
        XCTAssertEqual(modelResult?.name1, aName1)
        XCTAssertEqual(modelResult?.age, aAge)
        XCTAssertEqual(modelResult?.age1, aAge1)
        
    }
    
    /// Test Model Container class to json string and convert back
    func testClassModelContainerToJson () {
        
        let classModel = InheritClass()
        let aName : String = defaultValueForType(String.self)!
        let aName1 : String = empertyValueForType(String.self)!
        let aAge : Int = defaultValueForType(Int.self)!
        let aAge1 : Int = empertyValueForType(Int.self)!
        classModel.name = aName
        classModel.name1 = aName1
        classModel.age = aAge
        classModel.age1 = aAge1

        var structModel = BaseStruct()
        structModel.name = aName
        structModel.age = aAge
        let model = ModelContainerClass()
        model.total = aAge
        model.classModels = [classModel]
        model.structModels = [structModel]
        model.classModelDics = ["key1":classModel]
        model.structModelDics = ["key2":structModel]
        var mixModel = MixStruct()
        mixModel.name = aName
        mixModel.age = aAge
        mixModel.partClass = classModel
        mixModel.partStruct = structModel
        model.nsArr = [classModel, structModel, mixModel,BaseStruct(),OtherStruct()]
        model.nsDic = ["key1":classModel, "key2":structModel, "key3":mixModel]
        
        let jsonString = model.toJSONString();
        let modelResult = ModelContainerClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.total, aAge)
        XCTAssertEqual(modelResult?.classModels?.count, 1)
        XCTAssertEqual(modelResult?.classModels?.first?.name, aName)
        XCTAssertEqual(modelResult?.classModels?.first?.name1, aName1)
        XCTAssertEqual(modelResult?.classModels?.first?.age, aAge)
        XCTAssertEqual(modelResult?.classModels?.first?.age1, aAge1)
        XCTAssertEqual(modelResult?.structModels?.count, 1)
        XCTAssertEqual(modelResult?.structModels?.first?.name, aName)
        XCTAssertEqual(modelResult?.structModels?.first?.age, aAge)
        XCTAssertNotNil(modelResult?.classModelDics)
        XCTAssertEqual(modelResult?.classModelDics?["key1"]?.name, aName)
        XCTAssertEqual(modelResult?.classModelDics?["key1"]?.name1, aName1)
        XCTAssertEqual(modelResult?.classModelDics?["key1"]?.age, aAge)
        XCTAssertEqual(modelResult?.classModelDics?["key1"]?.age1, aAge1)
        XCTAssertNotNil(modelResult?.structModelDics)
        XCTAssertEqual(modelResult?.structModelDics?["key2"]?.name, aName)
        XCTAssertEqual(modelResult?.structModelDics?["key2"]?.age, aAge)
        XCTAssertEqual(modelResult?.nsArr?.count, 4)
        XCTAssertEqual((modelResult?.nsArr?[0] as? NSDictionary)?["name"] as? String, aName)
        XCTAssertEqual((modelResult?.nsArr?[0] as? NSDictionary)?["name1"] as? String, aName1)
        XCTAssertEqual((modelResult?.nsArr?[0] as? NSDictionary)?["age"] as? Int, aAge)
        XCTAssertEqual((modelResult?.nsArr?[0] as? NSDictionary)?["age1"] as? Int, aAge1)
        XCTAssertEqual((modelResult?.nsArr?[1] as? NSDictionary)?["name"] as? String, aName)
        XCTAssertEqual((modelResult?.nsArr?[1] as? NSDictionary)?["age"] as? Int, aAge)
        XCTAssertEqual((modelResult?.nsArr?[2] as? NSDictionary)?["name"] as? String, aName)
        XCTAssertEqual((modelResult?.nsArr?[2] as? NSDictionary)?["age"] as? Int, aAge)
        XCTAssertEqual(((modelResult?.nsArr?[2] as? NSDictionary)?["partClass"] as? NSDictionary)?["name"] as? String, aName)
        XCTAssertEqual(((modelResult?.nsArr?[2] as? NSDictionary)?["partClass"] as? NSDictionary)?["name1"] as? String, aName1)
        XCTAssertEqual(((modelResult?.nsArr?[2] as? NSDictionary)?["partClass"] as? NSDictionary)?["age"] as? Int, aAge)
        XCTAssertEqual(((modelResult?.nsArr?[2] as? NSDictionary)?["partClass"] as? NSDictionary)?["age1"] as? Int, aAge1)
        XCTAssertEqual(((modelResult?.nsArr?[2] as? NSDictionary)?["partStruct"] as? NSDictionary)?["name"] as? String, aName)
        XCTAssertEqual(((modelResult?.nsArr?[2] as? NSDictionary)?["partStruct"] as? NSDictionary)?["age"] as? Int, aAge)
        XCTAssertEqual((modelResult?.nsArr?[2] as? NSDictionary)?["age"] as? Int, aAge)
        XCTAssertEqual(modelResult?.nsDic?.allKeys.count, 3)
        XCTAssertEqual((modelResult?.nsDic?["key1"] as? NSDictionary)?["name"] as? String, aName)
        XCTAssertEqual((modelResult?.nsDic?["key1"] as? NSDictionary)?["name1"] as? String, aName1)
        XCTAssertEqual((modelResult?.nsDic?["key1"] as? NSDictionary)?["age"] as? Int, aAge)
        XCTAssertEqual((modelResult?.nsDic?["key1"] as? NSDictionary)?["age1"] as? Int, aAge1)
        XCTAssertEqual((modelResult?.nsDic?["key2"] as? NSDictionary)?["name"] as? String, aName)
        XCTAssertEqual((modelResult?.nsDic?["key2"] as? NSDictionary)?["age"] as? Int, aAge)
        
    }
    
    /// Test Model Container struct to json string and convert back
    func testStructModelContainerToJson () {
        
        let classModel = InheritClass()
        let aName : String = defaultValueForType(String.self)!
        let aName1 : String = empertyValueForType(String.self)!
        let aAge : Int = defaultValueForType(Int.self)!
        let aAge1 : Int = empertyValueForType(Int.self)!
        classModel.name = aName
        classModel.name1 = aName1
        classModel.age = aAge
        classModel.age1 = aAge1
        var structModel = BaseStruct()
        structModel.name = aName
        structModel.age = aAge
        let model = ModelContainerClass()
        model.total = aAge
        model.classModels = [classModel]
        model.structModels = [structModel]
        model.classModelDics = ["key1":classModel]
        model.structModelDics = ["key2":structModel]
        
        let jsonString = model.toJSONString();
        let modelResult = ModelContainerClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.total, aAge)
        XCTAssertEqual(modelResult?.classModels?.count, 1)
        XCTAssertEqual(modelResult?.classModels?.first?.name, aName)
        XCTAssertEqual(modelResult?.classModels?.first?.name1, aName1)
        XCTAssertEqual(modelResult?.classModels?.first?.age, aAge)
        XCTAssertEqual(modelResult?.classModels?.first?.age1, aAge1)
        XCTAssertEqual(modelResult?.structModels?.count, 1)
        XCTAssertEqual(modelResult?.structModels?.first?.name, aName)
        XCTAssertEqual(modelResult?.structModels?.first?.age, aAge)
        XCTAssertNotNil(modelResult?.classModelDics)
        XCTAssertEqual(modelResult?.classModelDics?["key1"]?.name, aName)
        XCTAssertEqual(modelResult?.classModelDics?["key1"]?.name1, aName1)
        XCTAssertEqual(modelResult?.classModelDics?["key1"]?.age, aAge)
        XCTAssertEqual(modelResult?.classModelDics?["key1"]?.age1, aAge1)
        XCTAssertNotNil(modelResult?.structModelDics)
        XCTAssertEqual(modelResult?.structModelDics?["key2"]?.name, aName)
        XCTAssertEqual(modelResult?.structModelDics?["key2"]?.age, aAge)
    }
    
    /// Test Mix Model class to json string and convert back
    func testClassMixModelToJson () {
        
        let classModel = InheritClass()
        let aName : String = defaultValueForType(String.self)!
        let aName1 : String = empertyValueForType(String.self)!
        let aAge : Int = defaultValueForType(Int.self)!
        let aAge1 : Int = empertyValueForType(Int.self)!
        classModel.name = aName
        classModel.name1 = aName1
        classModel.age = aAge
        classModel.age1 = aAge1
        var structModel = BaseStruct()
        structModel.name = aName
        structModel.age = aAge
        let model = MixClass()
        model.name = aName
        model.age = aAge
        model.partClass = classModel
        model.partStruct = structModel
        
        let jsonString = model.toJSONString();
        let modelResult = MixClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.name, aName)
        XCTAssertEqual(modelResult?.age, aAge)
        XCTAssertNotNil(modelResult?.partClass)
        XCTAssertEqual(modelResult?.partClass?.name, aName)
        XCTAssertEqual(modelResult?.partClass?.name1, aName1)
        XCTAssertEqual(modelResult?.partClass?.age, aAge)
        XCTAssertEqual(modelResult?.partClass?.age1, aAge1)
        XCTAssertNotNil(modelResult?.partStruct)
        XCTAssertEqual(modelResult?.partStruct?.name, aName)
        XCTAssertEqual(modelResult?.partStruct?.age, aAge)
        
    }
    
    /// Test Mix Model struct to json string and convert back
    func testStructMixModelToJson () {
        
        let classModel = InheritClass()
        let aName : String = defaultValueForType(String.self)!
        let aName1 : String = empertyValueForType(String.self)!
        let aAge : Int = defaultValueForType(Int.self)!
        let aAge1 : Int = empertyValueForType(Int.self)!
        classModel.name = aName
        classModel.name1 = aName1
        classModel.age = aAge
        classModel.age1 = aAge1
        var structModel = BaseStruct()
        structModel.name = aName
        structModel.age = aAge
        let model = MixClass()
        model.name = aName
        model.age = aAge
        model.partClass = classModel
        model.partStruct = structModel
        
        let jsonString = model.toJSONString();
        let modelResult = MixStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.name, aName)
        XCTAssertEqual(modelResult?.age, aAge)
        XCTAssertNotNil(modelResult?.partClass)
        XCTAssertEqual(modelResult?.partClass?.name, aName)
        XCTAssertEqual(modelResult?.partClass?.name1, aName1)
        XCTAssertEqual(modelResult?.partClass?.age, aAge)
        XCTAssertEqual(modelResult?.partClass?.age1, aAge1)
        XCTAssertNotNil(modelResult?.partStruct)
        XCTAssertEqual(modelResult?.partStruct?.name, aName)
        XCTAssertEqual(modelResult?.partStruct?.age, aAge)
        
    }
    
    /// Test Inherit Other class to json string and convert back
    func testClassInheritOtherToJson () {
        
        let model = InheritOtherClass()
        let aName : String = defaultValueForType(String.self)!
        let aName1 : String = empertyValueForType(String.self)!
        let aAge : Int = defaultValueForType(Int.self)!
        let aAge1 : Int = empertyValueForType(Int.self)!
        model.name = aName
        model.name1 = aName1
        model.age = aAge
        model.age1 = aAge1
        
        let jsonString = model.toJSONString();
        let modelResult = InheritOtherClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.name, aName)
        XCTAssertEqual(modelResult?.age, aAge)
        XCTAssertEqual(modelResult?.name1, aName1)
        XCTAssertEqual(modelResult?.age1, aAge1)
        
    }
    
    /// Test Extend Other class to json string and convert back
    func testClassExtendOtherToJson () {
        
        let model = ExtendOtherClass()
        let aName : String = defaultValueForType(String.self)!
        let aName1 : String = empertyValueForType(String.self)!
        let aAge : Int = defaultValueForType(Int.self)!
        let aAge1 : Int = empertyValueForType(Int.self)!
        model.name = aName
        model.name1 = aName1
        model.age = aAge
        model.age1 = aAge1
        
        let jsonString = model.toJSONString();
        let modelResult = ExtendOtherClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.name, aName)
        XCTAssertEqual(modelResult?.age, aAge)
        XCTAssertEqual(modelResult?.name1, aName1)
        XCTAssertEqual(modelResult?.age1, aAge1)
        
    }
    
    /// Test Extend Other struct to json string and convert back
    func testStuctExtendOtherToJson () {
        
        var model = ExtendOtherStruct()
        let aName : String = defaultValueForType(String.self)!
        let aAge : Int = defaultValueForType(Int.self)!
        model.name = aName
        model.age = aAge
        
        let jsonString = model.toJSONString();
        let modelResult = ExtendOtherStruct.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.name, aName)
        XCTAssertEqual(modelResult?.age, aAge)
        
    }
    
    /// Test Inherit OC class to json string and convert back
    func testClassInheritOCToJson () {
        
        let model = InheritOCClass()
        let aName : String = defaultValueForType(String.self)!
        let aAge : Int = defaultValueForType(Int.self)!
        model.name = aName
        model.age = aAge
        
        let jsonString = model.toJSONString();
        let modelResult = InheritOCClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.name, aName)
        XCTAssertEqual(modelResult?.age, aAge)
    }
    
    /// Test Inherit Other OC class to json string and convert back
    func testClassInheritOtherOCToJson () {
        
        let model = InheritOtherOCClass()
        let aName : String = defaultValueForType(String.self)!
        let aName1 : String = empertyValueForType(String.self)!
        let aAge : Int = defaultValueForType(Int.self)!
        let aAge1 : Int = empertyValueForType(Int.self)!
        model.name = aName
        model.name1 = aName1
        model.age = aAge
        model.age1 = aAge1
        
        let jsonString = model.toJSONString();
        let modelResult = InheritOtherOCClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.name, aName)
        XCTAssertEqual(modelResult?.age, aAge)
        XCTAssertEqual(modelResult?.name1, aName1)
        XCTAssertEqual(modelResult?.age1, aAge1)
        
    }
    
    /// Test Extend Other OC class to json string and convert back
    func testClassExtendOtherOCToJson () {
        
        let model = ExtendOtherOCClass()
        let aName : String = defaultValueForType(String.self)!
        let aName1 : String = empertyValueForType(String.self)!
        let aAge : Int = defaultValueForType(Int.self)!
        let aAge1 : Int = empertyValueForType(Int.self)!
        model.name = aName
        model.name1 = aName1
        model.age = aAge
        model.age1 = aAge1
        
        let jsonString = model.toJSONString();
        let modelResult = ExtendOtherOCClass.initWith(jsonString!)
        
        XCTAssertNotNil(jsonString)
        XCTAssertNotNil(modelResult)
        XCTAssertEqual(modelResult?.name, aName)
        XCTAssertEqual(modelResult?.age, aAge)
        XCTAssertEqual(modelResult?.name1, aName1)
        XCTAssertEqual(modelResult?.age1, aAge1)
        
    }
    
    
}

