//
//  CartManager.swift
//  CoffeeMasters
//
//  Created by Bluyin  on 25/1/23.
//

import Foundation

class CartManager: ObservableObject {
    @Published var cart: [(Product, Int)] = []
}
