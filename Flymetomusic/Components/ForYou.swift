//
//  ForYou.swift
//  Flymetomusic
//
//  Created by Hüseyin Demirtürk on 11.12.2024.
//

import SwiftUI

struct ForYou: View {
    var items: [HomeModel.Item]

    var body: some View {
        VStack{
            ForEach(items, id: \.id) { item in
                VStack{
                    Text(item.type!)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
