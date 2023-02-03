//
//  Address.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 03/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import Foundation

class Address: Codable {

    let street: String
    let suite: String
    let city: String
    let zipcode: String
    let geo: Geo

}

extension Address {

    enum CodingKeys: String, CodingKey {

        case street
        case suite
        case city
        case zipcode
        case geo
    }
}
