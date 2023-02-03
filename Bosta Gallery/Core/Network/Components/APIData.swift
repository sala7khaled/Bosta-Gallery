//
//  APIData.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import Foundation

/// The generic response for current API

struct APIData<T: Decodable>: Decodable {
    
    var status: String?
    var message: String?
    var data: T?
    var pagination: Pagination?
}
