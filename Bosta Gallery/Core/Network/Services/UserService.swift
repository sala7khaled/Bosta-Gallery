//
//  UsersService.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import Foundation

extension Api {
    
    enum  User: ServiceProtocol {
        
        case getUsers
        case getAlbums(userId: Int)
        case getImages(albumId: Int)
        
        var path: String {
            switch self {
            case .getUsers:
                return API.SERVICE_USER
            case .getAlbums:
                return API.SERVICE_ALBUM
            case .getImages:
                return API.SERVICE_PHOTO
            }
        }
        
        var method: HTTPMethod {
            switch self {
            case .getUsers:
                return .GET
            case .getAlbums:
                return .GET
            case .getImages:
                return .GET
            }
        }
        
        var parameters: [String : Any]? {
            switch self {
            case .getUsers:
                return nil
            case let .getAlbums(userId):
                return ["userId": userId]
            case let .getImages(albumId):
                return ["albumId": albumId]
            }
        }
        
        var headers: Headers? {
            switch self {
            case .getUsers:
                return nil
            case .getAlbums:
                return nil
            case .getImages:
                return nil
            }
        }
        
        var body: Any? {
            switch self {
            case .getUsers:
                return nil
            case .getAlbums:
                return nil
            case .getImages:
                return nil
            }
        }    }
    
    
}
