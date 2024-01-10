//
//  iDineApp.swift
//  iDine
//
//  Created by Nicholas Forte on 07/05/23.
//

import SwiftUI

@main
struct iDineApp: App {
    
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
