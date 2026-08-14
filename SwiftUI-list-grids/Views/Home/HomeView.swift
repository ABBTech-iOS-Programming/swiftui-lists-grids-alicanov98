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
            VStack (alignment: .leading){
                BooksSwiperView()
                booksSection
                vendorsSection
                authorsSection
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
    
    private var vendorsSection: some View{
        VStack{
            HeaderView(title: "Best Vendors", style: .section , destination: AnyView(VendorsView()))
            ScrollView (.horizontal,showsIndicators: false) {
            LazyHStack (spacing:12){
                    ForEach(vendorViewModel.vendors) { vendor in
                        VendorCardView(vendor: vendor, isHiddenCardBottom: true)
                            .frame(maxWidth: 100)
                    }
                }
            }
        }
        .padding()
    }
    
    private var authorsSection: some View{
        VStack{
            HeaderView(title: "Authors", style: .section , destination: AnyView(AuthorsView()))
            ScrollView (.horizontal,showsIndicators: false) {
            LazyHStack (spacing:12){
                    ForEach(authorsViewModel.authors) { author in
                        AuthorRowView(author: author,style: .vertical)
                            .frame(maxWidth: 100)
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
