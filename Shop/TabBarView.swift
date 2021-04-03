//
//  TabBarView.swift
//  Shop
//
//  Created by Rhedjie Cruz on 3/30/21.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView{
            HomeView().tabItem {
                VStack{
                    Image(systemName: "house.circle")
                    Text("Home")
                }
            }
            MessagesView().tabItem {
                VStack{
                    Image(systemName: "message.circle")
                    Text("Messages")
                }
            }
            CartView().tabItem {
                VStack{
                    Image(systemName: "cart.circle")
                    Text("Cart")
                }
            }
            AccountView().tabItem {
                VStack{
                    Image(systemName: "person.crop.circle")
                    Text("Account")
                }
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
