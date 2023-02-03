//
//  Movie.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import Foundation

class User: Codable {

    let id: Int
    let name: String
    let username: String
    let email: String
    let address: Address
    let phone: String
    let website: String
    let company: Company
}

extension User {

    enum CodingKeys: String, CodingKey {

        case id
        case name
        case username
        case email
        case address
        case phone
        case website
        case company
    }
}
