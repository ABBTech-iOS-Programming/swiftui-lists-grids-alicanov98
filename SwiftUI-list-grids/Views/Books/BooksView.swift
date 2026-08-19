//
//  BooksView.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 13.08.26.
//

import SwiftUI

struct BooksView: View {
    
    // MARK: - View Model

    private let viewModel = BooksViewModel()
    
    // MARK: - Properties

    private let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible()),
    ]
    
    // MARK: - Body

    var body: some View {
        ScrollView {
            LazyVGrid(columns:columns) {
                ForEach(viewModel.books){ book in
                    NavigationLink(value: AppRoute.bookDetail(book)){
                        BookCardView(book: book)
                    }
                }
            }
        }
        .navigationTitle("Books")
        .navigationBarTitleDisplayMode(.inline)
            
    }
}

#Preview {
    BooksView()
}
