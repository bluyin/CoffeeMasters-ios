//
//  OrderItem.swift
//  CoffeeMasters
//
//  Created by Bluyin  on 25/1/23.
//

import SwiftUI

struct OrderItem: View {
    
    var item: (Product, Int)
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        HStack {
            Text("\(item.1)x")
            Text(item.0.name)
            Spacer()
            Text("$\(Double(item.1)*item.0.price, specifier: "%.2f")")
            Image(systemName: "trash")
                .font(.title)
                .foregroundColor(Color("Secundary"))
                .padding()
                //cuando toque la papelera
                .onTapGesture {
                    cartManager.remove(product: item.0)
                }
        }
    }
}

struct OrderItem_Previews: PreviewProvider {
    static var previews: some View {
        OrderItem(item: (Product(id: 1, name: "Dummy", description: "", price: 1.24, image: ""),2))
    }
}
