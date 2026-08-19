//
//  AppRoute.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 18.08.26.
//

import Foundation

enum AppRoute: Hashable {
    case books
    case vendors
    case authors
    case bookDetail(Book)
    case authorDetail(Author)
}
