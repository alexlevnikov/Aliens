//
//  NewsListView.swift
//  Aliens
//
//  Created by Alex Levnikov on 7.07.21.
//

import SwiftUI

struct NewsListView: View {
    
    var news: [News] = NewsSource.news
    
    var body: some View {
        NavigationView {
            List(news) { newsItem in
                NewsPreview(with: newsItem)
            }.navigationBarTitle(Text("News"))
        }
       
    }
}

struct NewsListView_Previews: PreviewProvider {
    static var previews: some View {
        NewsListView(news: NewsSource.news)
    }
}
