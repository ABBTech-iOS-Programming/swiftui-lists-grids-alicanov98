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
            rating: 4
        ),
        Vendor(
            name: "Crane & Co",
            imageName: "vendor_crane",
            rating: 4
        ),
        Vendor(
            name: "GoodDay",
            imageName: "vendor_goodday",
            rating: 4
        ),
        Vendor(
            name: "Haymarket",
            imageName: "vendor_haymarket",
            rating: 5
        ),
        Vendor(
            name: "JSTOR",
            imageName: "vendor_jstor",
            rating: 4
        ),
        Vendor(
            name: "Kuromi",
            imageName: "vendor_kuromi",
            rating: 5
        ),
        Vendor(
            name: "Peloton",
            imageName: "vendor_peloton",
            rating: 4
        ),
        Vendor(
            name: "Peppa Pig",
            imageName: "vendor_peppapig",
            rating: 4
        ),
        Vendor(
            name: "Warehouse",
            imageName: "vendor_warehouse",
            rating: 3
        )
    ]
    
    let categories: [String] = [
        "All",
        "Books",
        "Poems",
        "Special for you",
        "Stationery"
    ]
}
