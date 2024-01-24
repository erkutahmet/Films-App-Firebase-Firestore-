//
//  Films.swift
//  Films App (Draft Plan) MVVM
//
//  Created by Ahmet Erkut on 26.10.2023.
//

import Foundation

class Films {
    var id: String?
    var name: String?
    var image: String?
    var price: Int?
    
    init() {
        
    }
    
    init(id: String, name: String, image: String, price: Int) {
        self.id = id
        self.name = name
        self.image = image
        self.price = price
    }
}
