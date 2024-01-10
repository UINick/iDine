//
//  CheckoutView.swift
//  iDine
//
//  Created by Nicholas Forte on 09/05/23.
//

import SwiftUI

struct CheckoutView: View {
    
    @EnvironmentObject var order: Order
    let paymentTypes = ["Cash", "Credit card", "iDine Points"]
    @State private var paymentType = "Cash"
    
    var body: some View {
        VStack {
            Section {
                Picker("How do you want to pay?", selection: $paymentType) {
                    ForEach(paymentTypes, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
            .environmentObject(Order())
    }
}
