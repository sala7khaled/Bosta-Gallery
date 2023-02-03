//
//  Response.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

enum APIResponse<T> {

    case onSuccess(T)
    case onFailure(APIError)
}
