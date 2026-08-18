//
//  AuthorDetailView.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 18.08.26.
//

import SwiftUI

struct AuthorDetailView: View {
    
    let author:Author
    
    private let columns: [GridItem] = [
        GridItem(.flexible(),spacing: 16),
        GridItem(.flexible(),spacing: 16),
    ]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                authorHeader
                aboutSection
                productsScreen
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 20)
        }
        .navigationTitle("Autgors")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    private var authorHeader: some View {
        VStack(spacing:10) {
            Image(author.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 88,height: 88)
                .clipShape(Circle())
            Text(author.category)
                .font(.system(size: 16,weight: .semibold))
                .foregroundStyle(.secondary)
            Text(author.name)
                .font(.system(size: 16,weight: .bold))
            RatingView(rating: 4,showRaiting: true)
        }
        .frame(maxWidth: .infinity)
    }
    

    
    private var aboutSection:some View {
        VStack(alignment: .leading,spacing:8) {
            Text("About")
                .font(.system(size: 20,weight: .bold))
                .foregroundStyle(.black)
            Text(author.description)
                .font(.system(size: 16,weight: .bold))
                .foregroundStyle(.secondary)
                .lineSpacing(3)
        }
    }
    
    private var productsScreen: some View {
        VStack (alignment: .leading, spacing: 10) {
            Text("Products")
                .font(.system(size: 20, weight: .bold))
                .foregroundStyle(.black)
            if author.books.isEmpty {
                ContentUnavailableView(
                    "No Books",
                    systemImage: "books.vertical",
                    description: Text(
                        "This author has no available books."
                    )
                )
            } else {
                LazyVGrid(columns: columns,alignment: .leading,spacing: 18){
                    ForEach(author.books){ book in
                        NavigationLink(value:AppRoute.bookDetail(book)){
                            authorBookCard(book: book)
                                .frame(maxWidth: .infinity)
                            
                        }
                    }
                }
            }
        }
        }
    
    private func authorBookCard(book: Book) -> some View {
        VStack(alignment: .leading, spacing: 6) {
            Image(book.imageName)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity)
                .frame(height: 158)
                .clipped()
                .clipShape(
                    RoundedRectangle(cornerRadius: 8)
                )

            Text(book.title)
                .font(.caption)
                .fontWeight(.medium)
                .foregroundStyle(.primary)
                .lineLimit(1)

            Text(
                book.price,
                format: .currency(code: "AZN")
            )
            .environment(\.locale, Locale(identifier: "az_AZ"))
            .font(.system(size: 14,weight: .semibold))
            .foregroundStyle(.deepPurple)
        }
    }
    }


#Preview {
    NavigationStack {
        AuthorDetailView(author: AuthorsViewModel().authors[0])
    }
}
