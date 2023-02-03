//
//  AlbumContract.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

protocol AlbumView: AnyObject {
    var presenter: AlbumPresenterInterface! { get set }
    
    func showViewLoading()
    func hideViewLoading()
    
    func reloadUI()
}
    
protocol AlbumPresenterInterface: AnyObject {
    var view: AlbumView? { get set }
    var router: AlbumRouterInterface! { get set }
    var interactor: AlbumInteractorInterface! { get set }
    
    var album: Album! { get set }
    var images: [Image]! { get set }
    
    func viewDidLoad()
    func showError(with message: String?)
}
    
protocol AlbumInteractorInterface: AnyObject {
    var output: AlbumInteractorOutput? { get set }
    
    func getImages(albumId: Int)
}
    
protocol AlbumInteractorOutput: AnyObject {
        
    func didGetImages(response: [Image])
    func didFailedGetImages(error: APIError)
}
    
protocol AlbumRouterInterface: AnyObject {
    var viewController: UIViewController? { get set }
    
    func presentError(with message: String?)
    
    static func assembleModule(album: Album) -> UIViewController
}
