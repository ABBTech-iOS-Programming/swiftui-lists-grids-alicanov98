//
//  AuthorRowView.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 12.08.26.
//

import SwiftUI

struct AuthorRowView: View {
    
    let author: Author
    
    var body: some View {
        HStack(spacing:12){
            Image(author.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 56,height: 56)
                .clipShape(Circle())
            VStack (alignment: .leading, spacing: 6){
                Text(author.name)
                    .font(.headline)
                    .foregroundStyle(.primary)
                Text(author.description)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .lineLimit(2)
            }
            Spacer()
        }
    }
}

#Preview {
    if let author = AuthorsViewModel().authors.first {
        AuthorRowView(author: author)
    } else {
        Text("Author tapılmadı")
    }
}
