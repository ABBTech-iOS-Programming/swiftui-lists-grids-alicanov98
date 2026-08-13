//
//  BooksView.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 13.08.26.
//

import SwiftUI

struct BooksView: View {
    
    private let viewModel = BooksViewModel()
    
    private let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns:columns) {
                ForEach(viewModel.books){ book in
                    BookCardView(book: book)
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
