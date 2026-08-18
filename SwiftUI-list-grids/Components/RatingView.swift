//
//  RatingView.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 12.08.26.
//

import SwiftUI

struct RatingView: View {
    private let rating: Int
    private let showRaiting: Bool
    
    init(rating: Int, showRaiting: Bool = false) {
        self.rating = rating
        self.showRaiting = showRaiting
    }
    
    var body: some View {
        HStack {
            ForEach(1...5, id: \.self) { star in
                Image(systemName: "star.fill")
                    .font(.system(size: 14))
                    .frame(width: 14, height: 14)
                    .foregroundStyle(star <= rating ? Color.yellow : Color.black)
            }
            if showRaiting {
                Text("(\(rating).0)")
                    .font(.system(size: 16))
            }
        }
    }
}

#Preview {
    RatingView(rating: 4,showRaiting: true)
}
