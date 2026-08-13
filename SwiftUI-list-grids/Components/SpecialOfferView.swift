//
//  SpecialOfferView.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 13.08.26.
//

import SwiftUI

struct SpecialOfferView: View {
    
    let book: Book
    
    var body: some View {
        HStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 6) {
                Text("Special Offer")
                    .font(.system(size: 18, weight: .bold))
                if let discount = book.discount {
                    Text("Discount \(discount)%")
                        .font(.system(size: 12))
                        .foregroundStyle(.primary)
                }
                Button {
                    print("Order now")
                } label: {
                    Text("Order Now")
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundStyle(.white)
                        .padding(.horizontal, 22)
                        .frame(height: 36)
                        .background(Color.deepPurple)
                        .clipShape(Capsule())
                }
                .padding(.top, 10)
            }
            .padding(.leading, 24)
            
            Spacer()
            
            Image(book.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 95, height: 145)
                .clipped()
        }
        .frame(maxWidth: .infinity)
        .frame(height: 145)
        .background(Color.deepPurple.opacity(0.06))
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    SpecialOfferView(book: Book(
        title: "Anna Karenina",
        author: "Leo Tolstoy",
        price: 14.99,
        imageName: "book_annaKarenina",
        isFavorite: false,
        discount: 25,
        isSpecialOffer: true
    ))
      
}

