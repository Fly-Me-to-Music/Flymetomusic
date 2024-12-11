//
//  Home.swift
//  Flymetomusic
//
//  Created by Hüseyin Demirtürk on 11.12.2024.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject var viewModel: HomeViewModel

    var body: some View {
        VStack {
            let pickedForYouItems = viewModel.items.filter { $0.type == "pickedForYou" }
            PickedForYou(items: pickedForYouItems)
            let madeForYouItems = viewModel.items.filter { $0.type == "madeForYou" }
            MadeForYou(items: madeForYouItems)
            let forYouItems = viewModel.items.filter { $0.type == "forYou" }
            ForYou(items: forYouItems)

            
        }
    }
}
