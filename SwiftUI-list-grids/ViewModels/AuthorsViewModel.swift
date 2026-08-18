//
//  AuthorsViewModel.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 12.08.26.
//

import Foundation

struct AuthorsViewModel {
    
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
    
    let categories: [String] = [
               "All",
               "Poets",
               "Writer",
               "Playwrights",
               "Novelists",
               "Journalists"
        ]
    
}
