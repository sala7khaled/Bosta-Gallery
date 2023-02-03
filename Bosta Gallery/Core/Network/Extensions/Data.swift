//
//  Data.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import Foundation

extension Data {
    
    mutating func append(_ string: String) {
        if let data = string.data(using: .utf8) { append(data) }
    }
}
