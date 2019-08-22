//
//  ContentView.swift
//  MJModel Example
//
//  Created by 黄磊 on 2019/8/21.
//  Copyright © 2019 Musjoy. All rights reserved.
//

import SwiftUI
import MJModel

class BaseClass : Model {
    var name : String?
    var age : Int?

    required init() {}
}

struct ExtendOtherStruct {
    var name : String?
    var age : Int?
}

extension ExtendOtherStruct : Model {}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("MJModel")
        }.onAppear {
            self.modelToJSONString()
            self.jsonStringToModel()
            self.extendOther()
        }
    }
    
    func modelToJSONString() {
        let model = BaseClass()
        model.name = "string"
        model.age = 1

        print(model.toDictionary())
        print(model.toJSONString()!)
    }

    func jsonStringToModel() {
        let jsonString = "{\"name\":\"string\",\"age\":1}"
        let modelResult = BaseClass.initWith(jsonString)!
        print(modelResult.name!)
        print(modelResult.age!)
    }

    func extendOther() {
        var model = ExtendOtherStruct()
        model.name = "string"
        model.age = 1

        let jsonString = model.toJSONString();
        let modelResult = ExtendOtherStruct.initWith(jsonString!)!
        print(jsonString!)
        print(modelResult.name!)
        print(modelResult.age!)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
