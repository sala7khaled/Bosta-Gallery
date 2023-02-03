//
//  Company.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 03/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import Foundation

class Company: Codable {

    let name: String
    let catchPhrase: String
    let bs: String

}

extension Company {

    enum CodingKeys: String, CodingKey {

        case name
        case catchPhrase
        case bs
    }
}
