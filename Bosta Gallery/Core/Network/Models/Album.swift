//
//  Item.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import Foundation

class Album: Codable {

    let userId: Int
    let id: Int
    let title: String

}

extension Album {

    enum CodingKeys: String, CodingKey {

        case userId
        case id
        case title

    }
}
