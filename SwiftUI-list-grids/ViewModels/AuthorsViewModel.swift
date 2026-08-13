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
            description: "Professor and writer",
            imageName: "author_abrahamVerghese",
            category: "Writer"
            
        ),
        Author(
            name: "Adam Dalva",
            description: "Senior fiction editor",
            imageName: "author_adamDalva",
            category: "Poets"
        ),
        Author(
            name: "Ann Napolitano",
            description: "Author of Hello Beautiful",
            imageName: "author_annNapolitano",
            category: "Journalists"
        ),
        Author(
            name: "Hernan Diaz",
            description: "Author and novelist",
            imageName: "author_hernanDiaz",
            category: "Novelists"
        ),
        Author(
            name: "John Freeman",
            description: "American writer and editor",
            imageName: "author_johnFreeman",
            category: "Playwrights"
        ),
        Author(
            name: "Tess Gunty",
            description: "Novelist and writer",
            imageName: "author_tessGunty",
            category: "Writer"
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
