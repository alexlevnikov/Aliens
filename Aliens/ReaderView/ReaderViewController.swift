//
//  ReaderViewController.swift
//  Aliens
//
//  Created by Alex Levnikov on 7.07.21.
//

import SwiftUI
struct ReaderViewController: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UINavigationController {
        let articlesTableController = ArticleReaderController()
        
        
                articlesTableController.isReaderEnabled = false
        
                articlesTableController.url = URL(string: "https://cointelegraph.com/news/bitcoin-analyst-says-supply-shock-underway-as-btc-withdrawal-rate-spikes-to-one-year-high")
        return UINavigationController(rootViewController: articlesTableController)
    }
    
    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
        
    }
    
    typealias UIViewControllerType = UINavigationController
}
