//
//  HomeRouter.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

class HomeRouter: HomeRouterInterface {
    
    weak var viewController: UIViewController?
    
    func presentAlbum(with album: Album) {
        RootRouter.pushVC(AlbumRouter.assembleModule(album: album), in: viewController!)
    }
    
    func presentError(with message: String?) {
        viewController?.showError(message: message)
    }
    
    static func assembleModule() -> UIViewController {
        let view: HomeController = HomeController.loadFromNib()
        
        let presenter = HomePresenter()
        let interactor = HomeInteractor()
        let router = HomeRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.output = presenter
        router.viewController = view
        
        return view
    }
}
