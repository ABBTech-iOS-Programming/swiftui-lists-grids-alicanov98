//
//  BookCardView.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 12.08.26.
//

import SwiftUI

struct BookCardView: View {
    
    let book: Book
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6){
            Image(book.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 110,height: 145)
                .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 8))
            Text(book.title)
                .font(.system(size: 12,weight: .medium))
                .foregroundStyle(.primary)
                .lineLimit(1)
            Text(
                book.price,
                format: .currency(code: "AZN")
            )
            .environment(\.locale, Locale(identifier: "az_AZ"))
                .font(.system(size: 11,weight: .semibold))
                .foregroundStyle(.deepPurple)
        }
        .frame(width: 110,alignment: .leading)
    }
}

#Preview {
    let viewModel = BooksViewModel()
    
    BookCardView(
        book: viewModel.books[0]
    )
    .padding()
}
