//
//  BookDetailView.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 18.08.26.
//

import SwiftUI

struct BookDetailView: View {
    
    let book: Book
    @Environment(\.dismiss) private var dismiss
    
    @State private var quantity = 1
    @State private var isFavorite: Bool
    
    init(book: Book) {
        self.book = book
        _isFavorite = State(initialValue: book.isFavorite)
    }
    
    private var totalPrice: Double {
        book.price * Double(quantity)
    }
    
    var body: some View {
        VStack(alignment:.leading,spacing: 16){
            bookImage
            bookInformation
            descriptionSection
            reviewSection
            quantityAndPriceSection
            bottomButtons
        }
        .navigationTitle("Book Detail")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    private var bookImage:some View {
        Image(book.imageName)
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity)
            .frame(height: 313)
            .clipShape(
            RoundedRectangle(cornerRadius: 12)
            )
            .padding(.bottom, 16)
    }
    
    private var bookInformation: some View {
        HStack (alignment:.center){
            VStack(alignment:.leading){
            Text(book.title)
            .font(.system(size: 20,weight: .bold))
            Image(book.vendorImage)
            .scaledToFit()
            }
            Spacer()
            Button {
            isFavorite.toggle()
            } label: {
                if isFavorite {
                    Image("isFavorite")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                } else {
                    Image(systemName: "heart")
                    .font(.system(size: 25))
                    .foregroundStyle(.deepPurple)
                }
            }
        }
    }
    
    private var descriptionSection: some View {
        Text(
            book.description
        )
        .font(.caption)
        .foregroundStyle(.secondary)
        .lineSpacing(3)
    }
    
    private var reviewSection: some View {
        VStack(alignment:.leading,spacing: 8) {
            Text("Review")
                .font(.subheadline)
                .fontWeight(.semibold)
            HStack(spacing:5){
                ForEach(0..<4,id: \.self){ _ in
                    Image(systemName: "star.fill")
                        .font(.caption)
                        .foregroundStyle(.yellow)
                }
                Image(systemName: "star.fill")
                    .font(.caption)
                    .foregroundStyle(.black)
                Text("(4.0)")
                    .font(.caption2)
            }
        }
        .padding(.bottom, 18)
    }
    
    private var quantityAndPriceSection: some View {
        HStack(spacing:12){
            QuantitySelectorView(quantity: $quantity)
            Text(totalPrice,format: .currency(code: "AZN"))
                .environment(\.locale, Locale(identifier: "az_AZ"))
                    .font(.system(size: 16,weight: .semibold))
                    .foregroundStyle(.deepPurple)
        }
        }
    
    private var bottomButtons: some View {
        HStack(spacing: 10){
            Button {
                dismiss()
            } label: {
                Text("Continue shopping")
                    .font(.system(size: 16,weight: .bold))
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 48)
                    .background(Color.deepPurple)
                    .clipShape(Capsule())
            }
            Button{
                print("\(book.title)\(quantity):\(totalPrice)")
            }label: {
                Text("View cart")
                    .font(.system(size: 16,weight: .bold))
                    .foregroundStyle(.deepPurple)
                    .frame(maxWidth: .infinity)
                    .frame(height: 48)
                    .background(Color.deepPurple.opacity(0.08))
                    .clipShape(Capsule())
            }
        }
        .padding(.vertical,10)
    }
}

#Preview {
    NavigationStack {
           BookDetailView(
               book: BooksViewModel().books[2]
           )
       }
}
