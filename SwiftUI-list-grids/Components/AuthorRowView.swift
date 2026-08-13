//
//  AuthorRowView.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 12.08.26.
//

import SwiftUI

struct AuthorRowView: View {
    
    let author: Author
    let style: Style
    
    enum Style {
        case horizontal
        case vertical
    }
    
    var body: some View {
        switch style {
        case .horizontal:
            horizontalView
            
        case .vertical:
            verticalView
        }
    }
    
    private var horizontalView: some View {
        HStack(spacing: 12) {
            authorImage
                .frame(width: 56, height: 56)
            authorInformation
            
            Spacer()
        }
    }
    
    private var verticalView: some View {
        VStack(spacing: 12) {
            authorImage
                .frame(width: 100, height: 100)
            
            authorInformation
                .multilineTextAlignment(.center)
        }
    }
    
    private var authorImage: some View {
        Image(author.imageName)
            .resizable()
            .scaledToFill()
            .clipShape(Circle())
    }
    
    private var authorInformation: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(author.name)
                .font(.headline)
                .foregroundStyle(.primary)
            
            Text(author.description)
                .font(.caption)
                .foregroundStyle(.secondary)
                .lineLimit(2)
        }
    }
}

#Preview {
    if let author = AuthorsViewModel().authors.first {
        VStack(spacing: 30) {
            AuthorRowView(
                author: author,
                style: .horizontal
            )
            
            AuthorRowView(
                author: author,
                style: .vertical
            )
        }
        .padding()
    } else {
        Text("Author tapılmadı")
    }
}
