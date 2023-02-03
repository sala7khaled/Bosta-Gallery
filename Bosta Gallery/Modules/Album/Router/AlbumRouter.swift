//
//  AlbumRouter.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

class AlbumRouter: AlbumRouterInterface {
    
    weak var viewController: UIViewController?
    
    func presentError(with message: String?) {
        viewController?.showError(message: message)
    }
        
    static func assembleModule(album: Album) -> UIViewController {
        let view: AlbumController = AlbumController.loadFromNib()
            
        let presenter = AlbumPresenter()
        let interactor = AlbumInteractor()
        let router = AlbumRouter()
        
        presenter.album = album
            
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.output = presenter
        router.viewController = view
        
        return view
    }
}
