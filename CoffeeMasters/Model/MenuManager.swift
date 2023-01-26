//
//  MenuManager.swift
//  CoffeeMasters
//
//  Created by Bluyin  on 25/1/23.
//

import Foundation
import Alamofire

class MenuManager: ObservableObject {
   @Published var menu: [Category] = []
    
    //When app starts it goes to network and download data
    init() {
        refreshItemsFromNetwork()
    }
    
    func refreshItemsFromNetwork()  {
            AF.request("https://firtman.github.io/coffeemasters/api/menu.json")
                .responseDecodable(of: [Category].self) { response in
                    if let menuFromNetwork = response.value {
                        self.menu = menuFromNetwork
                    }
                }
        }
}
