//
//  posts.swift
//  socialMedia11
//
//  Created by marwa awwad mohamed awwad on 12.07.2023.
//

import SwiftUI
import FirebaseFirestoreSwift

// Post model
struct Post: Identifiable, Codable {
    var id: String?
    var text: String
    var imageURL: URL?
    var imageReferenceID: String = ""
    var publishedDate: Date = Date()
    var likedIDs: [String] = []
    var dislikedIDs: [String] = []
    
    // Basic User Info
    var userName: String
    var userUID: String
    var userProfileURL: URL

    enum CodingKeys: String, CodingKey {
        case id
        case text = "PostText"
        case imageURL
        case imageReferenceID
        case publishedDate
        case likedIDs
        case dislikedIDs
        case userName
        case userUID
        case userProfileURL
    }
}
