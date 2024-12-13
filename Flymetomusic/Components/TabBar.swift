//
//  Home.swift
//  Flymetomusic
//
//  Created by Sedat Budak on 11.12.2024.
//

import SwiftUI
 
struct TabBar: View {
    @EnvironmentObject var viewModel: HomeViewModel
    @State private var selectedTab: Int = 0

    var body: some View {
        VStack{
            HStack {
                TabBarItem(icon: "house.fill", label: "Home", isSelected: selectedTab == 0) {
                    selectedTab = 0
                }
                Spacer()
                TabBarItem(icon: "magnifyingglass", label: "Search", isSelected: selectedTab == 1) {
                    selectedTab = 1
                }
                Spacer()
                TabBarItem(icon: "gearshape.fill", label: "Settings", isSelected: selectedTab == 2) {
                    selectedTab = 2
                }
            }
            .padding()
            .background(Color.blue.opacity(0.1)) // Arka plan rengi
        }
       
    }
}
struct TabBarItem: View {
    let icon: String
    let label: String
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            VStack {
                Image(systemName: icon)
                    .font(.system(size: 24))
                    .foregroundColor(isSelected ? .blue : .gray)
                Text(label)
                    .font(.caption)
                    .foregroundColor(isSelected ? .blue : .gray)
            }
        }
    }
}
struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

