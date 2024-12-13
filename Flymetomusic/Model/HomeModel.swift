
import Foundation

func loadJSON<T: Decodable>(filename: String) -> T {
    guard let url = Bundle.main.url(forResource: "HomeData", withExtension: "json") else {
        fatalError("JSON dosyası bulunamadı: \("HomeData").json")
    }
    
    do {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("JSON decode edilemedi: \(error)")
    }
}
