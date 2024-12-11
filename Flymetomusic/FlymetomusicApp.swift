//
//  FlymetomusicApp.swift
//  Flymetomusic
//
//  Created by Hüseyin Demirtürk on 10.12.2024.
//

import SwiftUI

@main
struct FlymetomusicApp: App {
    @StateObject private var viewModel = HomeViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
