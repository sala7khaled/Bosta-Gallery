//
//  HomePresenter.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

class HomePresenter: HomePresenterInterface {
    

    weak var view: HomeView?
    var router: HomeRouterInterface!
    var interactor: HomeInteractorInterface!
    
    var randomUser: User!
    var users: [User]! = []
    var albums: [Album]! = []
    
    func viewDidLoad() {
        view?.showViewLoading()
        interactor.getUsers()
    }

    func showError(with message: String?) {
        router.presentError(with: message)
    }
    
    func presentAlbum(with album: Album) {
        router.presentAlbum(with: album)
    }
}

    
extension HomePresenter: HomeInteractorOutput {
    func didGetUsers(response: [User]) {
        self.users = response
        self.randomUser = response.randomElement()
        
        interactor.getAlbums(userId: randomUser.id)
    }
    
    func didFailedGetUsers(error: APIError) {
        view?.hideViewLoading()
        router.presentError(with: error.message)
    }
    
    func didGetAlbums(response: [Album]) {
        self.albums = response
        view?.hideViewLoading()
        view?.reloadUI()
    }
    
    func didFailedGetAlbums(error: APIError) {
        view?.hideViewLoading()
        router.presentError(with: error.message)
    }
    
}
