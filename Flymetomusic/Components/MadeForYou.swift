//
//  MadeForYou.swift
//  Flymetomusic
//
//  Created by Hüseyin Demirtürk on 11.12.2024.
//

import SwiftUI

struct MadeForYou: View {
    var items: [HomeModel]
    
    var body: some View {
        VStack{
            VStack{
                ForEach(items.flatMap { $0.items ?? [] }, id: \.title) { item in
                    VStack(alignment: .leading){
                        Text(item.title!)
                            .font(.headline)
                        HStack(spacing: 0){
                            VStack{
                                Text(item.text!)
                                    .padding(.horizontal, 2)
                            }
                            Image(item.image!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                        }
                    }.padding(.vertical, 16)
                    .foregroundColor(Color.black)
                        
                }
            }.frame(width: UIScreen.main.bounds.width - 15)
                .background(Color(
                    red: 255 / 255,
                    green: 153 / 255,
                    blue: 153 / 255
                ))
            .cornerRadius(8)
        }.padding(.vertical, 10)
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

