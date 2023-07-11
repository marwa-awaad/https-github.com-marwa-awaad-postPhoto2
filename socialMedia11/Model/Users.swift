//
//  User.swift
//  socialMedia11
//
//  Created by marwa awwad mohamed awwad on 11.07.2023.
//

import SwiftUI
import SwiftUI
import FirebaseFirestoreSwift

struct User: Identifiable, Codable {
    var id: String? = "user "
    var userName: String
    var email: String
    var password: String
    var profilePicURL: URL?
    
    enum CodingKeys: String, CodingKey {
        case id
        case userName
        case email
        case password
        case profilePicURL
    }
}
