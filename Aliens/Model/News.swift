//
//  News.swift
//  Aliens
//
//  Created by Alex Levnikov on 7.07.21.
//

import UIKit

struct News: Identifiable {
    var id = UUID()
    var title: String
    var url: URL
    var imageURL: URL
    
    enum Keys: String {
        case title
        case url
        case imageURL
    }
    
    init?(with json: [String : Any]) {
        guard let title = json[Keys.title.rawValue] as? String,
              let urlPath = json[Keys.url.rawValue] as? String,
              let url = URL(string: urlPath),
              let imageURLPath = json[Keys.imageURL.rawValue] as? String,
              let imageURL = URL(string: imageURLPath) else
        {
            return nil
        }
        self.title = title
        self.url = url
        self.imageURL = imageURL
    }
    
    init(title: String, urlPath: String, imagePath: String) {
        self.title = title
        url = URL(string: urlPath)!
        imageURL = URL(string: imagePath)!
    }
}
