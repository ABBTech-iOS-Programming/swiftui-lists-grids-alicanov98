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
                HeaderView(title:"Vendors",subTitle:"Our Vendors",style: .page)
                CategoryView(selectedCategory:$selectedCategory,categories:viewModel.categories)
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
    
  
    

        
}

#Preview {
    NavigationStack {
           VendorsView()
       }
}
