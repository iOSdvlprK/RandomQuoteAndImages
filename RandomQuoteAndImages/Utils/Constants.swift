//
//  Constants.swift
//  RandomQuoteAndImages
//
//  Created by joe on 2/28/24.
//

import Foundation

struct Constants {
    struct Urls {
        static func getRandomImageUrl() -> URL? {
            return URL(string: "https://picsum.photos/200/300?uuid=\(UUID().uuidString)")
        }
        
        static func getRandomImageUrl(id: Int) -> URL? {
            return URL(string: "https://picsum.photos/id/\(id)/200/300")
        }
        
        static let randomQuoteUrl: URL? = URL(string: "https://api.quotable.io/quotes/random")
    }
}
