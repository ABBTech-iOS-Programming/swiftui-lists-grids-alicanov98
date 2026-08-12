//
//  CategoryView.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 12.08.26.
//

import SwiftUI

struct CategoryView: View {
    @Binding var selectedCategory:String
    
    let categories: [String]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 24) {
                ForEach(categories, id: \.self) { category in
                    CategoryRowView(
                        title: category,
                        selectedCategory: $selectedCategory
                    )
                    
                }
            }
        }
    }
}

//#Preview {
//    CategoryView(selectedCategory: "All", categories: ["All"])
//}
