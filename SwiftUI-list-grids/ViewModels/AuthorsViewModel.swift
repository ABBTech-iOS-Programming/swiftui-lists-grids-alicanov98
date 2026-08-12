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
            imageName: "author_abrahamVerghese"
        ),
        Author(
            name: "Adam Dalva",
            description: "Senior fiction editor",
            imageName: "author_adamDalva"
        ),
        Author(
            name: "Ann Napolitano",
            description: "Author of Hello Beautiful",
            imageName: "author_annNapolitano"
        ),
        Author(
            name: "Hernan Diaz",
            description: "Author and novelist",
            imageName: "author_hernanDiaz"
        ),
        Author(
            name: "John Freeman",
            description: "American writer and editor",
            imageName: "author_johnFreeman"
        ),
        Author(
            name: "Tess Gunty",
            description: "Novelist and writer",
            imageName: "author_tessGunty"
        )
    ]
    
    let categories: [String] = [
            "All",
            "Poets",
            "Playwrights",
            "Novelists",
            "Journalists"
        ]
    
}
