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
                    .navigationDestination(for: AppRoute.self) { route in
                        switch route {
                        case .bookDetail(let book):
                            BookDetailView(book: book)
                       
                    case .authorDetail(let author):
                        AuthorDetailView(author: author)
                        
                        case .books:
                            BooksView()

                        case .vendors:
                            VendorsView()

                        case .authors:
                            AuthorsView()
                       
                        }
                    }
            }
        }
    }
}
