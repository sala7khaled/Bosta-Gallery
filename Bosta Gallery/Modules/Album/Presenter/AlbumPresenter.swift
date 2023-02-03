//
//  AlbumPresenter.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 03/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

class AlbumPresenter: AlbumPresenterInterface {
    
    weak var view: AlbumView?
    var router: AlbumRouterInterface!
    var interactor: AlbumInteractorInterface!
    
    var album: Album!
    var images: [Image]! = []
    var backupImages: [Image]! = []
    
    func viewDidLoad() {
        view?.showViewLoading()
        interactor.getImages(albumId: album.id)
    }
    
    func showError(with message: String?) {
        router.presentError(with: message)
    }
    
    
}

extension AlbumPresenter: AlbumInteractorOutput {
    
    func didGetImages(response: [Image]) {
        self.images = response
        self.backupImages = images
        view?.hideViewLoading()
        view?.reloadUI()
    }
    
    func didFailedGetImages(error: APIError) {
        view?.hideViewLoading()
        router.presentError(with: error.message)
    }
    
    
}
