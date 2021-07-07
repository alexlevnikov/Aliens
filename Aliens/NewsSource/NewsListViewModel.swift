//
//  NewsSource.swift
//  Aliens
//
//  Created by Alex Levnikov on 7.07.21.
//

import UIKit

final class NewsSource {
    static var news: [News] {
        return [News(title: "Bitcoin analyst says ‘supply shock’ underway as BTC withdrawal rate spikes to one-year high",
                     urlPath: "https://cointelegraph.com/news/bitcoin-analyst-says-supply-shock-underway-as-btc-withdrawal-rate-spikes-to-one-year-high", imagePath: "https://images.cointelegraph.com/images/717_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDcvYmQ4YjJhM2ItMDI4YS00Y2MxLTg2MmUtZmYxNDE1NmI2YzU3LmpwZw==.jpg"),
                News(title: "Bitcoin analyst says ‘supply shock’ underway as BTC withdrawal rate spikes to one-year high",
                             urlPath: "https://cointelegraph.com/news/bitcoin-analyst-says-supply-shock-underway-as-btc-withdrawal-rate-spikes-to-one-year-high", imagePath: "https://images.cointelegraph.com/images/717_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDcvYmQ4YjJhM2ItMDI4YS00Y2MxLTg2MmUtZmYxNDE1NmI2YzU3LmpwZw==.jpg"),
                News(title: "Bitcoin analyst says ‘supply shock’ underway as BTC withdrawal rate spikes to one-year high",
                             urlPath: "https://cointelegraph.com/news/bitcoin-analyst-says-supply-shock-underway-as-btc-withdrawal-rate-spikes-to-one-year-high", imagePath: "https://images.cointelegraph.com/images/717_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDcvYmQ4YjJhM2ItMDI4YS00Y2MxLTg2MmUtZmYxNDE1NmI2YzU3LmpwZw==.jpg"),
                News(title: "Bitcoin analyst says ‘supply shock’ underway as BTC withdrawal rate spikes to one-year high",
                             urlPath: "https://cointelegraph.com/news/bitcoin-analyst-says-supply-shock-underway-as-btc-withdrawal-rate-spikes-to-one-year-high", imagePath: "https://images.cointelegraph.com/images/717_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDcvYmQ4YjJhM2ItMDI4YS00Y2MxLTg2MmUtZmYxNDE1NmI2YzU3LmpwZw==.jpg"),
                News(title: "Bitcoin analyst says ‘supply shock’ underway as BTC withdrawal rate spikes to one-year high",
                             urlPath: "https://cointelegraph.com/news/bitcoin-analyst-says-supply-shock-underway-as-btc-withdrawal-rate-spikes-to-one-year-high", imagePath: "https://images.cointelegraph.com/images/717_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDcvYmQ4YjJhM2ItMDI4YS00Y2MxLTg2MmUtZmYxNDE1NmI2YzU3LmpwZw==.jpg")]
    }
    
//    @Published var fetchedNews: [News] = []
//
//    init() {
//        guard let newsData = json["news"] as? [[String:Any]] else {
//            return
//        }
//        for newsJSON in newsData {
//            fetch(newsJSON: newsJSON) { [weak self] news in
//                guard let news = news else {
//                    return
//                }
//                self?.fetchedNews.append(news)
//            }
//        }
//    }
//
//    func fetch(newsJSON: [String:Any], with completion: @escaping (News?)->()) {
//        guard var news = News(with: newsJSON) else {
//            completion(nil)
//            return
//        }
//        URLSession.shared.dataTask(with: news.imageURL) { data,_,_ in
//            guard let data = data,
//                  let image = UIImage(data: data) else {
//                completion(nil)
//                return
//            }
//            news.image = image
//            completion(news)
//        }.resume()
//    }
//
//    private var json: [String:Any] {
//        return ["news":[
//            ["title" : "Bitcoin analyst says ‘supply shock’ underway as BTC withdrawal rate spikes to one-year high",
//             "url" : "https://cointelegraph.com/news/bitcoin-analyst-says-supply-shock-underway-as-btc-withdrawal-rate-spikes-to-one-year-high",
//             "imageURL" : "https://images.cointelegraph.com/images/717_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDcvYmQ4YjJhM2ItMDI4YS00Y2MxLTg2MmUtZmYxNDE1NmI2YzU3LmpwZw==.jpg"],
//            ["title" : "Bitcoin analyst says ‘supply shock’ underway as BTC withdrawal rate spikes to one-year high",
//             "url" : "https://cointelegraph.com/news/bitcoin-analyst-says-supply-shock-underway-as-btc-withdrawal-rate-spikes-to-one-year-high",
//             "imageURL" : "https://images.cointelegraph.com/images/717_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDcvYmQ4YjJhM2ItMDI4YS00Y2MxLTg2MmUtZmYxNDE1NmI2YzU3LmpwZw==.jpg"],
//            ["title" : "Bitcoin analyst says ‘supply shock’ underway as BTC withdrawal rate spikes to one-year high",
//             "url" : "https://cointelegraph.com/news/bitcoin-analyst-says-supply-shock-underway-as-btc-withdrawal-rate-spikes-to-one-year-high",
//             "imageURL" : "https://images.cointelegraph.com/images/717_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDcvYmQ4YjJhM2ItMDI4YS00Y2MxLTg2MmUtZmYxNDE1NmI2YzU3LmpwZw==.jpg"],
//            ["title" : "Bitcoin analyst says ‘supply shock’ underway as BTC withdrawal rate spikes to one-year high",
//             "url" : "https://cointelegraph.com/news/bitcoin-analyst-says-supply-shock-underway-as-btc-withdrawal-rate-spikes-to-one-year-high",
//             "imageURL" : "https://images.cointelegraph.com/images/717_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDcvYmQ4YjJhM2ItMDI4YS00Y2MxLTg2MmUtZmYxNDE1NmI2YzU3LmpwZw==.jpg"],
//            ["title" : "Bitcoin analyst says ‘supply shock’ underway as BTC withdrawal rate spikes to one-year high",
//             "url" : "https://cointelegraph.com/news/bitcoin-analyst-says-supply-shock-underway-as-btc-withdrawal-rate-spikes-to-one-year-high",
//             "imageURL" : "https://images.cointelegraph.com/images/717_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDcvYmQ4YjJhM2ItMDI4YS00Y2MxLTg2MmUtZmYxNDE1NmI2YzU3LmpwZw==.jpg"]
//        ]]
//    }
}


