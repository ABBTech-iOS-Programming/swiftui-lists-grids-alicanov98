//
//  RatingView.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 12.08.26.
//

import SwiftUI

struct RatingView: View {
    let rating: Int
    
    var body: some View {
        HStack {
            ForEach(1...5, id: \.self) { star in
                Image(systemName: "star.fill")
                    .font(.system(size: 14))
                    .frame(width: 14, height: 14)
                    .foregroundStyle(star <= rating ? Color.yellow : Color.black)
            }
        }
    }
}

#Preview {
    RatingView(rating: 4)
}
