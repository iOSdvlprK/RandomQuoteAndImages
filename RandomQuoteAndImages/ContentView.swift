//
//  ContentView.swift
//  RandomQuoteAndImages
//
//  Created by joe on 2/27/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var randomImageListVM = RandomImageListViewModel()
    
    var body: some View {
        NavigationStack {
            List(randomImageListVM.randomImages) { randomImage in
                HStack {
                    randomImage.image.map {
                        Image(uiImage: $0)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    Text(randomImage.quote)
                }
            }
            .task {
                await randomImageListVM.getRandomImages(ids: Array(100...120))
            }
            .navigationTitle("random imgs&quotes")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "arrow.clockwise.circle")
                    })
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
