//
//  HomeViewModel.swift
//  Flymetomusic
//
//  Created by Hüseyin Demirtürk on 11.12.2024.
//

import SwiftUI
import Combine

struct HomeModel: Codable, Identifiable {
    var id: Int?
    var type: String?
    var items: [Item]?
    var buttons: [Buttons]?
    
    struct Buttons: Codable {
        var id: Int?
        var type: String?
        var title: String?
    }
    
    struct Item: Codable {
        var id: Int?
        var type: String?
        var text: String?
        var title: String?
        var image: String?
        var musicName: String?
        var artistName: String?
        var appUrl: String?
        var backgroundColor: String?
    }
}


class HomeViewModel: ObservableObject {
    @Published var items: [HomeModel] = []
    
    init() {
        self.items = loadJSON(filename: "HomeData") ?? [] // Güvenli bir şekilde veri yükle
    }
    
    // JSON yükleme fonksiyonu
    func loadJSON<T: Decodable>(filename: String) -> T? {
        // JSON dosyasını bul
        guard let url = Bundle.main.url(forResource: "HomeData", withExtension: "json") else {
            print("JSON file not found")
            return nil
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let decodedData = try decoder.decode(T.self, from: data)
            return decodedData
        } catch {
            print("Failed to decode JSON: \(error)")
            return nil
        }
    }
}
