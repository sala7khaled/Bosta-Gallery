//
//  UsersRepo.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

class HomeRepo: Repo {
    
    static let shared = HomeRepo()
    
    // Cache
    var users: [User]? {
        return try? UserDefaults.standard.retrive(type: [User].self, key: .users)
    }
    
    var albums: [Album]? {
        return try? UserDefaults.standard.retrive(type: [Album].self, key: .albums)
    }
    
    
    // Network
    func getUsers(_ completion: @escaping (APIResponse<[User]>) -> ()) {
        provider.request(type: [User].self, service: Api.User.getUsers, completion: completion)
    }
    
    func getAlbums(userId: Int, _ completion: @escaping (APIResponse<[Album]>) -> ()) {
        provider.request(type: [Album].self, service: Api.User.getAlbums(userId: userId), completion: completion)
    }

}
