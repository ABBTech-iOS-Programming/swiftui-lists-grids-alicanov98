//
//  AuthorDetailView.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 18.08.26.
//

import SwiftUI

struct AuthorDetailView: View {
    
    let author:Author
    
    var body: some View {
        Text(author.name)
            .navigationTitle("Author Detail")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        AuthorDetailView(author: AuthorsViewModel().authors[0])
    }
}
