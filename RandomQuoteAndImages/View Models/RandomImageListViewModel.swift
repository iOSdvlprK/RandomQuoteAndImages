//
//  RandomImageListViewModel.swift
//  RandomQuoteAndImages
//
//  Created by joe on 2/28/24.
//

import UIKit

@MainActor
class RandomImageListViewModel: ObservableObject {
    @Published var randomImages: [RandomImageViewModel] = []
    
    func getRandomImages(ids: [Int]) async {
        do {
            let randomImages = try await Webservice().getRandomImages(ids: ids)
            self.randomImages = randomImages.map(RandomImageViewModel.init)
        } catch {
            print(error)
        }
    }
}

struct RandomImageViewModel: Identifiable {
    let id = UUID()
    fileprivate let randomImage: RandomImage
    
    var image: UIImage? {
        UIImage(data: randomImage.image)
    }
    
    var quote: String {
        randomImage.quote.content
    }
}
