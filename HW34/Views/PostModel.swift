//
//  PostModel.swift
//  HW34
//
//  Created by Jarae on 3/4/23.
//

import Foundation

struct PostDatum: Codable {
    let userID, id: Int?
    let title, description: String?
    
    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, description
    }
    
}
typealias PostData = [PostDatum]
    
