//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by Bluyin  on 24/1/23.
//

import SwiftUI

struct MenuPage: View {
    
    @EnvironmentObject var menuManager: MenuManager

    var body: some View {
        NavigationView{
            List {
                ForEach(menuManager.menu) { category in
                    Text(category.name)
                    
                    ForEach(category.products) { product in
                        NavigationLink {
                            //pagina destino
                            DetailsPage(product: product)
                        } label: {
                            //al tocar el producto
                            Productitem(product: product)
                        }
                    }
                    
                }
            }.navigationTitle("Products")
        }
        
    }
    
    struct MenuPage_Previews: PreviewProvider {
        static var previews: some View {
            MenuPage().environmentObject(MenuManager())
        }
    }
}
