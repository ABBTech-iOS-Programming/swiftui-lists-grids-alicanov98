//
//  VendorsViewModel.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 12.08.26.
//

import Foundation


struct VendorsViewModel {
    
    let vendors: [Vendor] = [
        Vendor(
            name: "Wattpad Books",
            imageName: "vendor_attpadbooks",
            rating: 4,
            category: "Books"
        ),
        Vendor(
            name: "Crane & Co",
            imageName: "vendor_crane",
            rating: 4,
            category: "Stationery"
        ),
        Vendor(
            name: "GoodDay",
            imageName: "vendor_goodday",
            rating: 4,
            category: "Special for you"
        ),
        Vendor(
            name: "Haymarket",
            imageName: "vendor_haymarket",
            rating: 5,
            category: "Books"
        ),
        Vendor(
            name: "JSTOR",
            imageName: "vendor_jstor",
            rating: 4,
            category: "Poems"
        ),
        Vendor(
            name: "Kuromi",
            imageName: "vendor_kuromi",
            rating: 5,
            category: "Stationery"
        ),
        Vendor(
            name: "Peloton",
            imageName: "vendor_peloton",
            rating: 4,
            category: "Special for you"
        ),
        Vendor(
            name: "Peppa Pig",
            imageName: "vendor_peppapig",
            rating: 4,
            category: "Books"
        ),
        Vendor(
            name: "Warehouse",
            imageName: "vendor_warehouse",
            rating: 3,
            category: "Poems"
        )
    ]
    
    var categories: [String] {
        [ "All" ] + Array(Set(vendors.map(\.category))).sorted()
    }
}
