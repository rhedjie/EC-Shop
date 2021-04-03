//
//  Home.swift
//  Shop
//
//  Created by Rhedjie Cruz on 3/30/21.
//

import SwiftUI

struct HomeView: View {
    @State var searchBar: String = ""
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    TextField("Search", text: $searchBar).padding(.all,5).background(Color.gray.opacity(0.3)).cornerRadius(10.0)
                    Button(action: {}, label: {
                        Image(systemName: "magnifyingglass.circle.fill").resizable().frame(width:30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    })
                }.padding(.bottom)
                VStack(alignment:.leading){
                    Text("Category")
                    ScrollView(.horizontal) {
                        HStack{
                            ForEach(1..<8){item in
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    VStack{
                                        ZStack{
                                            Image("shoe\(item)").resizable().frame(width: 150, height: 150)
                                            LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.3), Color.black.opacity(0.5)]), startPoint:.top, endPoint: .bottom).frame(width: 150, height: 150)
                                            Text("shoe\(item)").foregroundColor(.white).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                        }
                                    }.cornerRadius(10.0)
                                })
                            }
                        }
                    }
                }
                
                VStack{
                    ForEach(1..<8){item in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image("shoe\(item)").resizable().cornerRadius(10).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/ ).frame(height:400)
                        })
                    }
                }
            }.padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
