//
//  ItemDetail.swift
//  iDine
//
//  Created by Nicholas Forte on 07/05/23.
//

import SwiftUI

struct ItemDetail: View {
    
    let item: MenuItem
    @EnvironmentObject var order: Order
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
                    
            }
            
            Text(item.description)
                .padding()
            
            
            Button("Order here") {
                order.add(item: item)
            }.buttonStyle(.bordered)
            
            Spacer()

        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ItemDetail(item: MenuItem.example)
                .environmentObject(Order())
        }
    }
}
