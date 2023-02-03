//
//  AlbumInteractor.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 03/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

class AlbumInteractor: AlbumInteractorInterface {
    
    weak var output: AlbumInteractorOutput?
    
    func getImages(albumId: Int) {
        if ReachabilityManager.isOnline() {
            
            GalleryRepo.shared.getImages(albumId: albumId) { [ weak self ] response in
                guard let self = self else { return }
                DispatchQueue.main.async {
                    switch (response) {
                    case let .onSuccess(response):
                        try? UserDefaults.standard.store(object: response, key: .images)
                        self.output?.didGetImages(response: response)
                    case let .onFailure(error):
                        self.output?.didFailedGetImages(error: error)
                    }
                }
                
            }
            
        } // retrive data from cashing if device is offline
        else if GalleryRepo.shared.images != nil {
            output?.didGetImages(response: GalleryRepo.shared.images!)
        } else {
            output?.didFailedGetImages(error: APIError(type: .network, message: "no_internet_connection".l()))
        }
    }
    
}
