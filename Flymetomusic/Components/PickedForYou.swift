//
//  PickedForYou.swift
//  Flymetomusic
//
//  Created by Hüseyin Demirtürk on 11.12.2024.
//

import SwiftUI

struct PickedForYou: View {
    var items: [HomeModel]
    
    func colorFromHex(hex: String) -> Color {
        var hexColor = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        if hexColor.hasPrefix("#") {
            hexColor.removeFirst()
        }
        
        if hexColor.count == 6 {
            let scanner = Scanner(string: hexColor)
            var rgb: UInt64 = 0
            scanner.scanHexInt64(&rgb)
            
            let red = Double((rgb & 0xFF0000) >> 16) / 255.0
            let green = Double((rgb & 0x00FF00) >> 8) / 255.0
            let blue = Double(rgb & 0x0000FF) / 255.0
            
            return Color(red: red, green: green, blue: blue)
        }
        
        return Color.black
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Picked For You")
            HStack {
                ForEach(items.flatMap { $0.items ?? [] }, id: \.title) { item in
                    let bgColor = colorFromHex(hex: item.backgroundColor ?? "#FFFFFF")
                    VStack(alignment: .leading) {
                        if item.type == "newReleases" {
                            Button(action: {
                                // Yeni sayfaya yönlendirme işlemi
                                // NavigationLink kullanarak başka sayfaya yönlendirebilirsiniz.
                                print("Navigating to New Releases")
                            }) {
                                VStack(spacing: 0) {
                                    ZStack {
                                        Image("music2")
                                            .resizable()
                                            .aspectRatio(16/9, contentMode: .fit)
                                        Image("music1")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 30)
                                    }
                                    Text(item.title ?? "NoType")
                                        .font(.system(size: 14))
                                        .padding(.bottom, 4)
                                        .foregroundColor(Color.black)
                                }
                                .frame(width: (UIScreen.main.bounds.width - 30) / 3)
                                .aspectRatio(16/9, contentMode: .fit)
                                .padding(.top, 6)
                                .background(bgColor)
                                .cornerRadius(10)
                            }
                        } else if item.type == "chart" {
                            Button(action: {
                                // Chart sayfasına yönlendirme
                                print("Navigating to Chart")
                            }) {
                                VStack(spacing: 0) {
                                    ZStack {
                                        Image("music2")
                                            .resizable()
                                            .aspectRatio(16/9, contentMode: .fit)
                                        Image("music1")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 30)
                                    }
                                    Text(item.title ?? "NoType")
                                        .font(.system(size: 14))
                                        .padding(.bottom, 4)
                                        .foregroundColor(Color.black)
                                }
                                .frame(width: (UIScreen.main.bounds.width - 30) / 3)
                                .aspectRatio(16/9, contentMode: .fit)
                                .padding(.top, 6)
                                .background(bgColor)
                                .cornerRadius(10)
                            }
                        } else if item.type == "mood" {
                            Button(action: {
                                // Mood sayfasına yönlendirme
                                print("Navigating to Mood")
                            }) {
                                VStack(spacing: 0) {
                                    ZStack {
                                        Image("music2")
                                            .resizable()
                                            .aspectRatio(16/9, contentMode: .fit)
                                        Image("music1")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 30)
                                    }
                                    Text(item.title ?? "NoType")
                                        .font(.system(size: 14))
                                        .padding(.bottom, 4)
                                        .foregroundColor(Color.black)
                                }
                                .frame(width: (UIScreen.main.bounds.width - 30) / 3)
                                .aspectRatio(16/9, contentMode: .fit)
                                .padding(.top, 6)
                                .background(bgColor)
                                .cornerRadius(10)
                            }
                        }
                    }
                    .padding(.vertical, 4)
                }
            }
        }
        .frame(maxWidth: .infinity)
    }
}
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
