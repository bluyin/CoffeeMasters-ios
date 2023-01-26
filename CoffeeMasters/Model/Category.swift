//
//  Category.swift
//  CoffeeMasters
//
//  Created by Bluyin  on 25/1/23.
//

import Foundation

struct Category: Decodable, Identifiable {
    var name: String
    var products: [Product]
    
    //el id es el name
    var id: String {
        return self.name
    }
}
