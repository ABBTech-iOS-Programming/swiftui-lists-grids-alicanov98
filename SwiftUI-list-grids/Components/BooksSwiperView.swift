//
//  BooksSwiperView.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 13.08.26.
//

import SwiftUI

struct BooksSwiperView: View {
    
    private let viewModel = BooksViewModel()
    @State private var selectedIndex = 0
    
    private var specialOfferBooks: [Book] {  viewModel.books.filter {
        $0.isSpecialOffer
    }
   }
    var body: some View {
        VStack(spacing: 12) {
            TabView(selection: $selectedIndex) {
                ForEach(
                    Array(specialOfferBooks.enumerated()),
                    id: \.element.id
                ) { index, book in
                    
                    SpecialOfferView(book: book)
                        .padding(.horizontal, 16)
                        .tag(index)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(height: 145)
            
            pageIndicator
        }
    }
    
    private var pageIndicator: some View {
        HStack(spacing: 8) {
            ForEach(
                viewModel.specialOfferBooks.indices,
                id: \.self
            ) { index in
                Circle()
                    .fill(
                        index == selectedIndex
                        ? Color.deepPurple
                        : Color.deepPurple.opacity(0.18)
                    )
                    .frame(
                        width: index == selectedIndex ? 9 : 6,
                        height: index == selectedIndex ? 9 : 6
                    )
            }
        }
        .frame(height: 10)
    }
}

#Preview {
    BooksSwiperView()
}
