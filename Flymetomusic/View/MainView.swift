//
//  Home.swift
//  Flymetomusic
//
//  Created by Sedat Budak on 11.12.2024.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var navManager: NavigationManager

    var body: some View {
        VStack(spacing: 0) {
            // Sabit Header
            Header()
            
            // Navigasyon Yığını
            NavigationStack(path: $navManager.path) {
                          ContentView()
                              .navigationDestination(for: String.self) { value in
                                  navManager.routeMap(to: value)
                              }
                      }
            TabBar()
        }
        
    }
}
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

