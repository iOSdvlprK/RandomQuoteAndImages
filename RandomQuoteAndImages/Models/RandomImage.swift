//
//  RandomImage.swift
//  RandomQuoteAndImages
//
//  Created by joe on 2/28/24.
//

import Foundation

struct RandomImage: Decodable {
    let image: Data
    let quote: Quote
}

struct Quote: Decodable {
    let content: String
}
