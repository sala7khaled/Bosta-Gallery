//
//  AlbumPresenter.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

class AlbumPresenter: AlbumPresenterInterface {

    weak var view: AlbumView?
    var router: AlbumRouterInterface!
    var interactor: AlbumInteractorInterface!
    

    var album: Album!
    var images: [Image]!
    
    func viewDidLoad() {
        view?.showViewLoading()
        interactor.getImages(albumId: self.album.id)
    }

    func showError(with message: String?) {
        router.presentError(with: message)
    }
}

    
extension AlbumPresenter: AlbumInteractorOutput {
    func didGetImages(response: [Image]) {
        self.images = response
        view?.hideViewLoading()
        view?.reloadUI()
    }
    
    func didFailedGetImages(error: APIError) {
        view?.hideViewLoading()
        router.presentError(with: error.message)
    }

    
}
