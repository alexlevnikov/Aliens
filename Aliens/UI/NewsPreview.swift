//
//  NewsPreview.swift
//  Aliens
//
//  Created by Alex Levnikov on 7.07.21.
//

import Foundation
import SwiftUI

struct NewsPreview: View{
    var news:News
    @State var isSelected = false
    
    init(with news: News) {
        self.news = news
    }
    
    var body: some View {
        HStack {
            AsyncImage(
                url: news.imageURL,
                placeholder: { ProgressView().progressViewStyle(CircularProgressViewStyle()) },
                image: {
                    Image(uiImage: $0).resizable()
                }
            )
            .cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
            .frame(width: 80, height: 60, alignment: .center)
            .aspectRatio(contentMode: .fill)
            Text(self.news.title)
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.leading)
                .padding(.leading, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
        .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        .fullScreenCover(isPresented: $isSelected, content: {
            SafariView(url:self.news.url)
        })
        .onTapGesture {
            isSelected = true
        }
    }
}
