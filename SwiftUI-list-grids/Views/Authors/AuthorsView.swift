//
//  AuthorsView.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 12.08.26.
//

import SwiftUI

struct AuthorsView: View {
    let viewModel = AuthorsViewModel()
    @State var selectedCategory = "All"
    var body: some View {
       
        VStack(alignment: .leading,spacing: 24) {
            HeaderView(title: "Check the authors", subTitle: "Authors",style: .page)
             CategoryView(selectedCategory: $selectedCategory, categories:viewModel.categories )
            ScrollView {
            LazyVStack(alignment: .leading, spacing: 20) {
                ForEach(viewModel.authors) { author in
                    AuthorRowView(author: author)
                }
            }
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 20)
        .navigationTitle("Authors")
        .navigationBarTitleDisplayMode(.inline)
    
    }
      
}

#Preview {
    NavigationStack {
        AuthorsView()
    }
}
