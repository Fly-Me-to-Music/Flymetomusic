//
//  FlymetomusicApp.swift
//  Flymetomusic
//
//  Created by Hüseyin Demirtürk on 10.12.2024.
//

import SwiftUI

@main
struct FlymetomusicApp: App {
    @StateObject private var navManager = NavigationManager()

        var body: some Scene {
            WindowGroup {
                MainView()
                    .environmentObject(navManager) // NavigationManager'ı tüm uygulamada paylaş
            }
        }
}



struct FlymetomusicAppView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
