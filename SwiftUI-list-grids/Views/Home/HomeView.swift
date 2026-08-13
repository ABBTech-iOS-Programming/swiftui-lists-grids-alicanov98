//
//  HomeView.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 12.08.26.
//

import SwiftUI

struct HomeView: View {
    private let booksViewModel = BooksViewModel()
    private let vendorViewModel = VendorsViewModel()
    private let authorsViewModel = AuthorsViewModel()

    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading,spacing: 24){
                booksSection
            }
            .padding(.vertical,20)
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    private var booksSection: some View{
        VStack{
            HeaderView(title: "Top of Week", style: .section , destination: AnyView(BooksView()))
            ScrollView (.horizontal,showsIndicators: false) {
            LazyHStack {
                    ForEach(booksViewModel.books) { book in
                        BookCardView(book: book)
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    HomeView()
}
