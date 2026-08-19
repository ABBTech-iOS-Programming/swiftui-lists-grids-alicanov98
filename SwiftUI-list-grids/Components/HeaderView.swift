//
//  HeaderView.swift
//  SwiftUI-list-grids
//
//  Created by Malik Alijanov on 12.08.26.
//

import SwiftUI

struct HeaderView: View {
    
    enum Style {
        case page,section
    }
    
    let title: String
    let subTitle: String?
    let style:Style
    let destination: AppRoute?
    
    init(title: String, subTitle: String? = nil, style: Style, destination: AppRoute? = nil) {
        self.title = title
        self.subTitle = subTitle
        self.style = style
        self.destination = destination
    }
    
    var body: some View {
        switch style {
        case .page:
            pageHeader
        case .section:
            sectionHeader
        }
    }
    
    private var pageHeader: some View {
           VStack(alignment: .leading, spacing: 5) {
               if let subTitle {
                   Text(subTitle)
                       .font(.system(size: 16, weight: .medium))
                       .foregroundStyle(.deepGray)
               }
               
               Text(title)
                   .font(.title2)
                   .fontWeight(.bold)
                   .foregroundStyle(.deepPurple)
           }
           .frame(maxWidth: .infinity, alignment: .leading)
       }
    
    private var sectionHeader: some View {
        HStack {
            Text(title)
                .font(.system(size: 16, weight: .medium))
                .foregroundStyle(.primary)
            Spacer()
            
            if let destination {
                NavigationLink(value: destination) {
                    Text("See all")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundStyle(.deepPurple)
                }
            }
            
        }
    }
}

#Preview {
    NavigationStack {
        HeaderView(
            title: "Best Vendors",
            style: .page,  destination: .books)
        .padding()
    }
}

