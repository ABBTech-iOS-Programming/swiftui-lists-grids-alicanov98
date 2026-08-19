//
//  AuthorsView.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 12.08.26.
//

import SwiftUI

struct AuthorsView: View {
    
    // MARK: - View Models

    private let viewModel = AuthorsViewModel()
    
    // MARK: - Properties

    @State private var selectedCategory = "All"
    @State private var searchText = ""
    @State private var isSearchPresented = false
    
    
    private var filteredAuthors: [Author] {
        viewModel.filteredAuthors(selectedCategory: selectedCategory, searchText: searchText)
    }
    
    
    // MARK: - Body

    var body: some View {
       
        VStack(alignment: .leading,spacing: 20) {
            HeaderView(title: "Authors", subTitle: "Check the authors",style: .page)
             CategoryView(selectedCategory: $selectedCategory, categories:viewModel.categories )
            ScrollView {
            LazyVStack(alignment: .leading,spacing: 6) {
                ForEach(filteredAuthors) { author in
                    NavigationLink(value:AppRoute.authorDetail(author)) {
                        AuthorRowView(author: author,style: .horizontal,showDescription: true)
                    }
                    .buttonStyle(.plain)
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

private extension AuthorsView {
    
}

#Preview {
    NavigationStack {
        AuthorsView()
    }
}
