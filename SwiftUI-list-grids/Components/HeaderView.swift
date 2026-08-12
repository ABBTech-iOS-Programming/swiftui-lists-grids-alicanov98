//
//  HeaderView.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 12.08.26.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subTitle: String
    var body: some View {
        VStack(alignment: .leading,spacing: 5) {
            Text(subTitle)
                .font(.system(size: 16,weight: .medium))
                .foregroundStyle(.deepGray)
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.deepPurple)
        }
    }
}

#Preview {
    HeaderView(title:"Vendors",subTitle:"Our Vendors")
}
