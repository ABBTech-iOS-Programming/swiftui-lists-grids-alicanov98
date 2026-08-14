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
    
    private var layout: AnyLayout {
        switch style {
        case .horizontal:
            AnyLayout(HStackLayout(spacing:12))
        case .vertical:
            AnyLayout(VStackLayout(spacing:12))
        }
    }
    
    private var imageSize: CGFloat {
        style == .horizontal ? 70 : 100
    }
    
    private var informationAlignment: HorizontalAlignment {
        style == .horizontal ? .leading : .center
    }
    
    var body: some View {
        layout {
            authorImage
            authorInformation
        }
        if style == .horizontal {
            Spacer()
        }
    }
    
    
    private var authorImage: some View {
        Image(author.imageName)
            .resizable()
            .scaledToFill()
            .frame(width: imageSize,height: imageSize)
            .clipShape(Circle())
    }
    
    private var authorInformation: some View {
        VStack(alignment: informationAlignment, spacing: 6) {
            Text(author.name)
                .font(.headline)
                .foregroundStyle(.primary)
            
            Text(author.description)
                .font(.caption)
                .foregroundStyle(.secondary)
                .lineLimit(2)
        }
        .multilineTextAlignment(style == .horizontal ? .leading : .center)
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
