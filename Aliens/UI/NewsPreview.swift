//
//  NewsPreview.swift
//  Aliens
//
//  Created by Alex Levnikov on 7.07.21.
//

import Foundation
import SwiftUI
import BetterSafariView

struct NewsPreview: View{
    var news:News
    @ObservedObject var webViewModel:WebViewModel = WebViewModel()
    
    init(with news: News) {
        self.news = news
        webViewModel.url = news.url
    }
    
    var body: some View {
        NavigationLink(
            destination: WebView(webViewModel: webViewModel),
            label: {
                HStack {
                    ZStack {
                        Color.red.ignoresSafeArea()
                        AsyncImage(
                            url: news.imageURL,
                            placeholder: { ProgressView().progressViewStyle(CircularProgressViewStyle()) },
                            image: {
                                Image(uiImage: $0).resizable()
                            }
                        )
                    }.cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    Text(self.news.title)
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                        .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
            }
        )
    }
}

struct NewsListPreview_Previews: PreviewProvider {
    static var previews: some View {
        NewsPreview(with: NewsSource.news.first!).frame(width: .infinity, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}
