//
//  Home.swift
//  Shop
//
//  Created by Rhedjie Cruz on 3/30/21.
//

import SwiftUI

struct AccountView: View {
    @State var membership = "Bronze"
    @State var followers = Int.random(in: 100...500)
    @State var following = Int.random(in: 100...500)
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    HStack{
                        Spacer()
                        Button(action: {
                        }, label: {
                            NavigationLink(destination: SettingsView()) { Image(systemName: "gearshape") }.navigationBarHidden(true)
                            
                        })
                    }.padding(.horizontal)
                    HStack{
                        Image(systemName: "person.circle").resizable().frame(width: 100, height: 100).foregroundColor(.blue)
                        VStack(alignment:.leading){
                            HStack{
                                Text("John Doe").font(.title)
                                Button(action: {}, label: {
                                    Image(systemName: "pencil").accentColor(.blue)
                                })
                            }
                            
                            Button(action: {}, label: {
                                Text("\(membership) Member").padding(.horizontal,10).background(Color.blue).cornerRadius(10.0).font(.caption)
                            }).accentColor(.white)
                            Spacer()
                            HStack(alignment:.center){
                                VStack{
                                    Text("Followers:")
                                        .font(.footnote)
                                    Text("\(followers)").font(.footnote)
                                }
                                
                                Text("|").font(.headline).opacity(0.5)
                                VStack{
                                    Text("Following:")
                                        .font(.footnote)
                                    Text("\(following)").font(.footnote)
                                }
                                
                                Spacer()
                            }
                        }
                        
                    }
                }
            }.padding()
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
