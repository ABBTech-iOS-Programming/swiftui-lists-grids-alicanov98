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
            isFavorite: false,
            discount: nil,
            isSpecialOffer: false,
            vendorImage: "vendor_crane",
            description: "Anna Karenina sevgi, ailə və cəmiyyət arasındakı mürəkkəb münasibətlərdən bəhs edən dünya ədəbiyyatının klassik əsərlərindən biridir."
        ),
        Book(
            title: "Balaca Şahzadə",
            author: "Antoine de Saint-Exupéry",
            price: 12.99,
            imageName: "book_balacaSehzade",
            isFavorite: false,
            discount: 20,
            isSpecialOffer: true,
            vendorImage: "vendor_crane",
            description: "Balaca Şahzadə dostluq, sevgi və insanın həyatda həqiqətən vacib olan dəyərləri kəşf etməsi haqqında düşündürücü hekayədir."
        ),
        Book(
            title: "İyirmi Bir Gün",
            author: "Ceyms Klir",
            price: 10.99,
            imageName: "book_iyirmiBirGun",
            isFavorite: false,
            discount: 25,
            isSpecialOffer: true,
            vendorImage: "vendor_goodday",
            description: "Bu kitab kiçik, lakin davamlı addımlar vasitəsilə faydalı vərdişlərin yaradılması və şəxsi inkişafın gücləndirilməsi yollarını izah edir."
        ),
        Book(
            title: "On Dördüncü Adam",
            author: "Aqata Kristi",
            price: 13.99,
            imageName: "book_onDorduncuAdam",
            isFavorite: false,
            discount: nil,
            isSpecialOffer: false,
            vendorImage: "vendor_haymarket",
            description: "Sirli hadisələr, gözlənilməz ipucları və ağıllı araşdırma üzərində qurulan maraqlı detektiv hekayəsidir."
        ),
        Book(
            title: "Qanadsız Mələk",
            author: "Unknown",
            price: 11.99,
            imageName: "book_qanadsizMelek",
            isFavorite: false,
            discount: nil,
            isSpecialOffer: false,
            vendorImage: "vendor_jstor",
            description: "Sevgi, ümid və həyatın çətin sınaqları qarşısında insanın daxili gücündən bəhs edən təsirli bir əsərdir."
        ),
        Book(
            title: "Qara Libaslı",
            author: "Unknown",
            price: 15.99,
            imageName: "book_qaraLibasli",
            isFavorite: false,
            discount: 15,
            isSpecialOffer: true,
            vendorImage: "vendor_goodday",
            description: "Keçmişin sirləri və gözlənilməz hadisələrlə qarşılaşan qəhrəmanın həyatını təsvir edən müəmmalı bir hekayədir."
        ),
        Book(
            title: "Şantaş",
            author: "Unknown",
            price: 16.99,
            imageName: "book_santas",
            isFavorite: false,
            discount: nil,
            isSpecialOffer: false,
            vendorImage: "vendor_peloton",
            description: "Gizli məlumatlar, təhlükəli seçimlər və psixoloji təzyiq ətrafında inkişaf edən gərgin hadisələrdən bəhs edir."
        ),
        Book(
            title: "Səfillər",
            author: "Victor Hugo",
            price: 18.99,
            imageName: "book_sefiller",
            isFavorite: false,
            discount: nil,
            isSpecialOffer: false,
            vendorImage: "vendor_goodday",
            description: "Səfillər ədalət, mərhəmət, yoxsulluq və insanın dəyişmək gücü haqqında yazılmış dünya ədəbiyyatının möhtəşəm klassik əsəridir."
        )
    ]

    var specialOfferBooks: [Book] {
        books.filter { book in
            book.isSpecialOffer
        }
    }
}
