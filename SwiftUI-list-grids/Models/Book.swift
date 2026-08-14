//
//  Book.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 12.08.26.
//

import Foundation

struct Book: Identifiable {
      let id: UUID = UUID()
      let title: String
      let author: String
      let price: Double
      let imageName: String
      var isFavorite: Bool
      let discount: Int?
      let isSpecialOffer: Bool
}
