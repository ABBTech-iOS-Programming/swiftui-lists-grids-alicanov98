//
//  CategoryRowView.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 12.08.26.
//

import SwiftUI

struct CategoryRowView: View {
    
    let title: String
    @Binding var selectedCategory: String
    
    var isSelected: Bool {
        selectedCategory == title
    }
    
    var body: some View {
        Button {
            selectedCategory = title
        } label: {
            VStack(spacing:4){
                Text(title)
                    .font(.system(size: 14, weight: isSelected ? .semibold : .regular))
                    .foregroundStyle(isSelected ? Color.primary : Color.gray)
                Rectangle()
                    .fill(isSelected ? Color("deepPurple") : Color.clear)
                    .frame(height:2)
            }
        }
    }
}

#Preview {
    CategoryRowView(
        title: "All",
        selectedCategory: .constant("All")
    )
    .padding()
}
