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
    
    @State private var isBookDetailPresented = false
    @State private var selectedBook: Book?
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading){
                BooksSwiperView()
                booksSection
                vendorsSection
                authorsSection
            }
            .padding(.vertical,20)
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .sheet(item: $selectedBook) { book in
                BookDetailView(book: book)
                    .presentationDetents([.large])
                    .presentationDragIndicator(.visible)
                    .presentationCornerRadius(24)
            }
            
        }
    }
        
        private var booksSection: some View{
            VStack{
                HeaderView(title: "Top of Week", style: .section ,  destination: .books)
                ScrollView (.horizontal,showsIndicators: false) {
                    LazyHStack {
                        ForEach(booksViewModel.books) { book in
                            Button {
                                selectedBook = book
                            }label: {
                                BookCardView(book: book)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
            }
            .padding()
        }
        
        private var vendorsSection: some View{
            VStack{
                HeaderView(title: "Best Vendors", style: .section , destination:.vendors)
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
                HeaderView(title: "Authors", style: .section,destination: .authors)
                ScrollView (.horizontal,showsIndicators: false) {
                    LazyHStack (spacing:12){
                        ForEach(authorsViewModel.authors) { author in
                            NavigationLink (value: AppRoute.authorDetail(author)) {
                                AuthorRowView(author: author,style: .vertical)
                                    .frame(maxWidth: 100)
                            }
                            .buttonStyle(.plain)
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
