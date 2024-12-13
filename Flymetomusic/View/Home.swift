//
//  Home.swift
//  Flymetomusic
//
//  Created by Sedat Budak on 11.12.2024.
//

import SwiftUI
 
struct Home: View {
    @EnvironmentObject var viewModel: HomeViewModel

    var body: some View {
        VStack{
            ScrollView {
                VStack {
                    
                    // Dynamically render PickedForYou, MadeForYou, and ForYou components
                    ForEach(viewModel.items, id: \.id) { section in
                        switch section.type {
                        case "pickedForYou":
                            if let items = section.items {
                                PickedForYou(section: section)
                            }
                        case "madeForYou":
                            if let items = section.items {
                                MadeForYou(items: items)
                            }
                        case "forYou":
                            if let items = section.items {
                                ForYou(items: items)
                            }
                        default:
                            Text("Unknown Section")
                        }
                    }
                }
            }
         
        }
       
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

