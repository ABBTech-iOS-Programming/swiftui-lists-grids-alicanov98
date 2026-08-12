//
//  BooksViewModel.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 12.08.26.
//

import Foundation

struct BooksViewModel {

    let books: [Book] = [
        Book(
            title: "Anna Karenina",
            author: "Leo Tolstoy",
            price: 14.99,
            imageName: "book_annaKarenina",
            isFavorite: false
        ),
        Book(
            title: "Balaca Şahzadə",
            author: "Antoine de Saint-Exupéry",
            price: 12.99,
            imageName: "book_balacaSehzade",
            isFavorite: false
        ),
        Book(
            title: "İyirmi Bir Gün",
            author: "Ceyms Klir",
            price: 10.99,
            imageName: "book_iyirmiBirGun",
            isFavorite: false
        ),
        Book(
            title: "On Dördüncü Adam",
            author: "Aqata Kristi",
            price: 13.99,
            imageName: "book_onDorduncuAdam",
            isFavorite: false
        ),
        Book(
            title: "Qanadsız Mələk",
            author: "Unknown",
            price: 11.99,
            imageName: "book_qanadsizMelek",
            isFavorite: false
        ),
        Book(
            title: "Qara Libaslı",
            author: "Unknown",
            price: 15.99,
            imageName: "book_qaraLibasli",
            isFavorite: false
        ),
        Book(
            title: "Gecənin Dostu",
            author: "Unknown",
            price: 9.99,
            imageName: "book_gesengDost",
            isFavorite: false
        ),
        Book(
            title: "Şantaş",
            author: "Unknown",
            price: 16.99,
            imageName: "book_santas",
            isFavorite: false
        ),
        Book(
            title: "Səfillər",
            author: "Victor Hugo",
            price: 18.99,
            imageName: "book_sefiller",
            isFavorite: false
        )
    ]
}
