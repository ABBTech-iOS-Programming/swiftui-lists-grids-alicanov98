//
//  QuantitySelectorView.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 18.08.26.
//

import SwiftUI

struct QuantitySelectorView: View {
    
    // MARK: - Properties
    
    @Binding var quantity: Int
    
    // MARK: - Body
    
    var body: some View {
        HStack(spacing:12) {
            decreaseButton
            Text("\(quantity)")
            increaseButton
        }
    }
    
    // MARK: - UI Components
    
    private var decreaseButton: some View {
        Button {
            guard quantity >= 0 else {
                return
            }
            quantity -= 1
        } label: {
            Image(systemName: "minus")
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
                .frame(width: 28, height: 28)
                .background(Color.gray.opacity(0.1))
                .clipShape(Circle())
        }
        .disabled(quantity == 0)
    }
    
    private var increaseButton: some View {
        Button {
            quantity += 1
        } label: {
            Image(systemName: "plus")
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .frame(width: 28, height: 28)
                .background(Color.deepPurple)
                .clipShape(Circle())
        }
    }
}

#Preview {
    @Previewable @State var quantity = 1
    QuantitySelectorView(quantity: $quantity)
            .padding()
}
