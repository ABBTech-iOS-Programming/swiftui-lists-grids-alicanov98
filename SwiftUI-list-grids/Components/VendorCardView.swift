//
// VendorCardView.swift
// SwiftUI-list-grids
//
// Created by Malik Alijanov on 12.08.26.
//

import SwiftUI

struct VendorCardView: View {
    
    
    let vendor: Vendor
    
    let isHiddenCardBottom: Bool
      init(
          vendor: Vendor,
          isHiddenCardBottom: Bool = false
      ) {
          self.vendor = vendor
          self.isHiddenCardBottom = isHiddenCardBottom
      }

var body: some View {
    VStack(alignment: .leading,spacing: 8) {
        Image(vendor.imageName)
            .resizable()
            .scaledToFit()
            .padding(12)
            .frame(maxWidth: .infinity)
            .frame(height: 100)
            .background(Color.gray.opacity(0.06))
            .clipShape(RoundedRectangle(cornerRadius: 8))
        if !isHiddenCardBottom {
            Text(vendor.name)
                .font(.system(size: 16,weight: .medium))
                .foregroundStyle(.primary)
                .lineLimit(1)
            RatingView(rating: vendor.rating , showRaiting: false)
        }
    }
    .frame(maxWidth: .infinity, alignment: .leading)
}
}

#Preview {
let viewModel = VendorsViewModel()
    VendorCardView(vendor: viewModel.vendors[0])
        .frame(width: 100)
        .padding()
}
