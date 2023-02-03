//
//  APIError.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

enum APIErrorType {

    case server
    case noData
    case parsing
    case string
    case network
    case known
}

struct APIError {
    
    var type: APIErrorType
    var code: Int? = 0
    var message: String?
}
