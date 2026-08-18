//
//  BooksApp.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 12.08.26.
//

import SwiftUI

@main
struct BooksApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
            HomeView()
                    .navigationDestination(for: Book.self) { book in
                        BookDetailView(book:book)
                    }
                    .navigationDestination(for: Author.self) { author in
                        AuthorDetailView(author:author)
                    }
          }
        }
    }
}
