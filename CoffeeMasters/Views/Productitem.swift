//
//  Productitem.swift
//  CoffeeMasters
//
//  Created by Bluyin  on 24/1/23.
//

import SwiftUI

struct Productitem: View {
    
    var product: Product
    
    var body: some View {
        VStack{
            AsyncImage(url: product.imageURL)
                .frame(width: 300, height: 150)
                .background(Color("AccentColor"))
            HStack {
                VStack(alignment: .leading) {
                    Text(product.name)
                        .font(.title3)
                        .bold()
                    Text("$ \(product.price)")
                        .font(.caption)
                    
                }.padding(8)
                Spacer()
            }
        }
        .background(Color("SurfaceBackground"))
        .cornerRadius(10)
        .padding(.trailing)
    }
}


struct Productitem_Previews: PreviewProvider {
    static var previews: some View {
        Productitem(product: Product(id: 1, name: "Dummy product", description: "", price: 1.25, image: ""))
    }
}
