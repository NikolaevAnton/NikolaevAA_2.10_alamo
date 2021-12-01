//
//  Model.swift
//  NikolaevAA_2.10
//
//  Created by Anton Nikolaev on 25.11.2021.
//

import Foundation

struct Model: Decodable {
    let name: String?
    let age: Int?
    let count: Int?
    
    var description: String {
        """
        Name: \(name ?? "")
        Age: \(age ?? 0)
        Count: \(count ?? 0)
        """
    }
    
    init() {
        name = ""
        age = 0
        count = 0
    }
    
    init(name: String?, age: Int?, count: Int?) {
        self.name = name
        self.age = age
        self.count = count
    }
    
    static func getModel(from value: Any) -> Model {
        guard let modelJSON = value as? [String: Any] else {return Model()}
        let model = Model(
            name: modelJSON["name"] as? String,
            age: modelJSON["age"] as? Int,
            count: modelJSON["count"] as? Int)
        return model
    }
}
