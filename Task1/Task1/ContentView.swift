//
//  ContentView.swift
//  Task1
//
//  Created by Ram Balaji Koppula on 03/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            HomeView()
                .tabItem {
                    Label("Wishlist", systemImage: "heart")
                }
            HomeView()
                .tabItem {
                    Label("Notifications", systemImage: "bell")
                }
            HomeView()
                .tabItem {
                    Label("Account", systemImage: "person")
                }
            CartView()
                .tabItem {
                    Label("Cart", systemImage: "cart")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .accentColor(Color.red)
    }
}
