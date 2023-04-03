//
//  NewsModel.swift
//  HW34
//
//  Created by Jarae on 3/4/23.
//

//import Foundation
//
//// MARK: - NewsData
//struct NewsData: Codable {
//    let articles: [Article]
//}
//
//// MARK: - Article
//struct Article: Codable {
//    let author: String?
//    let title, description: String
//    let url: String
//    let urlToImage: String?
//    let content: String
//}

import Foundation

// MARK: - DataModel
struct DataModel: Codable {
    let products: [Product]?
    let total, skip, limit: Int?
}

// MARK: - Product
struct Product: Codable {
    let id: Int?
    let title, description: String?
    let thumbnail: String?
    
    init(id: Int?, title: String?, description: String? = nil, thumbnail: String? = nil) {
        self.id = id
        self.title = title
        self.description = description
        self.thumbnail = thumbnail
    }
}
