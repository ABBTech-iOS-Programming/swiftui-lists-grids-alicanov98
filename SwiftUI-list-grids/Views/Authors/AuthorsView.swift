//
//  AuthorsView.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 12.08.26.
//

import SwiftUI

struct AuthorsView: View {
    
    let viewModel = AuthorsViewModel()
    
    @State private var selectedCategory = "All"
    @State private var searchText = ""
    @State private var isSearchPresented = false
    
    @FocusState private var isSearchFieldFocused: Bool
    
    private var filteredAuthors: [Author] {
        let categoryFilteredAuthors: [Author]
        
        if selectedCategory == "All" {
            categoryFilteredAuthors = viewModel.authors
        }else {
            categoryFilteredAuthors = viewModel.authors.filter{author in
                author.category == selectedCategory
            }
        }
        
        guard !searchText.isEmpty else {
            return categoryFilteredAuthors
        }
        
        return categoryFilteredAuthors.filter { author in
            author.name.localizedStandardContains(searchText) ||
            author.description.localizedStandardContains(searchText)
        }
        
    }
    
    var body: some View {
       
        VStack(alignment: .leading,spacing: 20) {
            HeaderView(title: "Authors", subTitle: "Check the authors",style: .page)
             CategoryView(selectedCategory: $selectedCategory, categories:viewModel.categories )
            ScrollView {
            LazyVStack(alignment: .leading, spacing: 20) {
                ForEach(filteredAuthors) { author in
                    AuthorRowView(author: author,style: .horizontal)
                }
            }
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 20)
        .navigationTitle("Authors")
        .navigationBarTitleDisplayMode(.inline)
        .searchable(text: $searchText, isPresented: $isSearchPresented, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search authors")
        .textInputAutocapitalization(.never)
        .autocorrectionDisabled()
        .overlay {
            if filteredAuthors.isEmpty {
                ContentUnavailableView.search(text: searchText)
            }
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                 isSearchPresented = true
                } label: {
                    Image(systemName: "magnifyingglass")
                }
            }
        }
    
    }
      
}

#Preview {
    NavigationStack {
        AuthorsView()
    }
}
