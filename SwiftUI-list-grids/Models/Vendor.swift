//
//  Vendor.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 12.08.26.
//

import Foundation

struct Vendor: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let rating: Int
    let category: String
}
