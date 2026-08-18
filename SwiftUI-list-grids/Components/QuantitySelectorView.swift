//
//  QuantitySelectorView.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 18.08.26.
//

import SwiftUI

struct QuantitySelectorView: View {
    
    @Binding var quantity: Int
    
    var body: some View {
        HStack(spacing:12) {
            Button {
                if quantity > 0 {
                    quantity -= 1
                }
            }label: {
                Image(systemName: "minus")
            }
            Text("\(quantity)")
            Button {
                quantity += 1
            } label: {
                Image(systemName: "plus")
            }
        }
    }
}

//#Preview {
//    QuantitySelectorView()
//}
