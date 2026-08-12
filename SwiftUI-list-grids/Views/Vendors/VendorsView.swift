//
//  VendorsView.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 12.08.26.
//

import SwiftUI

struct VendorsView: View {
    
    @State private var selectedCategory = "All"
    private let viewModel = VendorsViewModel()
    
    private let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading,spacing: 20) {
                headerSection
                categorySection
                LazyVGrid(
                    columns: columns,
                          alignment:.leading,
                          spacing: 16
                ) {
                    ForEach(viewModel.vendors) {vendor in
                    VendorCardView(vendor: vendor)
                    }
                }
            }
            .padding(.horizontal,16)
            .padding(.vertical, 20)
        }
        .navigationTitle("Vendors")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    private var headerSection: some View {
        VStack(alignment: .leading,spacing: 5) {
            Text("Our Vendors")
                .font(.system(size: 16,weight: .medium))
                .foregroundStyle(.deepGray)
            Text("Vendors")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.deepPurple)
        }
    }
    
    private var categorySection: some View {
        ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 24) {
                    ForEach(viewModel.categories, id: \.self) { category in
                        CategoryTabView(
                            title: category,
                            selectedCategory: $selectedCategory
                        )
                    }
                }
            }
    }
        
}

#Preview {
    NavigationStack {
           VendorsView()
       }
}
