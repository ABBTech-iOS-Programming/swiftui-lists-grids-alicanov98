//
//  AuthorsViewModel.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 12.08.26.
//

import Foundation

struct AuthorsViewModel {
    
    // MARK: - Properties
    
    let authors: [Author] = [
        Author(
            name: "Abraham Verghese",
            description: "Physician, professor, and bestselling author",
            imageName: "author_abrahamVerghese",
            category: "Writer",
            books: Array(BooksViewModel().books.prefix(4))
        ),
        Author(
            name: "Adam Dalva",
            description: "Writer and senior fiction editor",
            imageName: "author_adamDalva",
            category: "Poets",
            books: []
        ),
        Author(
            name: "Ann Napolitano",
            description: "Bestselling author of Hello Beautiful",
            imageName: "author_annNapolitano",
            category: "Journalists",
            books: Array(BooksViewModel().books.prefix(1))
        ),
        Author(
            name: "Hernan Diaz",
            description: "Award-winning author and novelist",
            imageName: "author_hernanDiaz",
            category: "Novelists",
            books: []
        ),
        Author(
            name: "John Freeman",
            description: "Writer, editor, and literary critic",
            imageName: "author_johnFreeman",
            category: "Playwrights",
            books: Array(BooksViewModel().books.prefix(6))
        ),
        Author(
            name: "Tess Gunty",
            description: "Award-winning American novelist",
            imageName: "author_tessGunty",
            category: "Writer",
            books: Array(BooksViewModel().books.prefix(3))
        )
    ]
    
    var categories: [String] {
        [ "All"]
        + Array(Set(authors.map(\.category))).sorted()
    }
    
    // MARK: - Filtering
    
    func filteredAuthors(
        selectedCategory: String,
        searchText: String
    ) -> [Author] {
        let categoryFilteredAuthors = filterByCategory(selectedCategory)
        
        return filterBySearchText(
        categoryFilteredAuthors,
        searchText: searchText
        )
    }
    
}

     // MARK: - Private Filtering Methods

      private extension AuthorsViewModel {
    
       func filterByCategory(
            _ selectedCategory: String
          ) -> [Author] {
        guard selectedCategory != "All" else {
            return authors
        }
        return authors.filter { author in
            author.category == selectedCategory
        }
        
    }
    
    func filterBySearchText(
        _ authors: [Author],
        searchText: String
    ) -> [Author] {
        let trimmedSearchText = searchText.trimmingCharacters(in: .whitespacesAndNewlines)
        
        guard !trimmedSearchText.isEmpty else {
            return authors
        }
        
        return authors.filter { author in
            author.name.localizedStandardContains(trimmedSearchText) ||
            author.description.localizedStandardContains(trimmedSearchText)
        }
    }
}
