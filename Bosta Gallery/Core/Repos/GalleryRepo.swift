//
//  UsersRepo.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

class GalleryRepo: Repo {
    
    static let shared = GalleryRepo()
    
    // Cache
    var images: [Image]? {
        return try? UserDefaults.standard.retrive(type: [Image].self, key: .images)
    }
    
    
    // Network
    func getImages(albumId: Int, _ completion: @escaping (APIResponse<[Image]>) -> ()) {
        provider.request(type: [Image].self, service: Api.User.getImages(albumId: albumId), completion: completion)
    }

}
