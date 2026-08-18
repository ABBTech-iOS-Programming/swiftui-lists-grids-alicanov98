//
//  BookDetailView.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 18.08.26.
//

import SwiftUI

struct BookDetailView: View {
    
    let book: Book
    
    var body: some View {
        Text(book.title)
            .navigationTitle("Book Detail")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
           BookDetailView(
               book: BooksViewModel().books[0]
           )
       }
}
