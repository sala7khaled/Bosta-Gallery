//
//  Photo.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import Foundation

class Image: Codable {

    let albumId: Int
    let id: Int
    let title: String
    let url: String
    let thumbnailUrl: String


}

extension Image {

    enum CodingKeys: String, CodingKey {

        case albumId
        case id
        case title
        case url
        case thumbnailUrl

    }
}
