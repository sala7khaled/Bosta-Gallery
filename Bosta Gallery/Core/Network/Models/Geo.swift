//
//  Geo.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 03/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import Foundation

class Geo: Codable {

    let lat: String
    let lng: String

}

extension Geo {

    enum CodingKeys: String, CodingKey {

        case lat
        case lng
    }
}
