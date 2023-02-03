//
//  HomeContract.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

protocol HomeView: AnyObject {
    var presenter: HomePresenterInterface! { get set }
    
    func showViewLoading()
    func hideViewLoading()
    
    func reloadUI()
}
    
protocol HomePresenterInterface: AnyObject {
    var view: HomeView? { get set }
    var router: HomeRouterInterface! { get set }
    var interactor: HomeInteractorInterface! { get set }
    
    var randomUser: User! { get set }
    var users: [User]! { get set }
    var albums: [Album]! { get set }
    
    func viewDidLoad()
    func showError(with message: String?)
    
    func presentAlbum(with album: Album)
}
    
protocol HomeInteractorInterface: AnyObject {
    var output: HomeInteractorOutput? { get set }
    
    func getUsers()
    func getAlbums(userId: Int)
}
    
protocol HomeInteractorOutput: AnyObject {
        
    func didGetUsers(response: [User])
    func didFailedGetUsers(error: APIError)
    
    func didGetAlbums(response: [Album])
    func didFailedGetAlbums(error: APIError)
}
    
protocol HomeRouterInterface: AnyObject {
    var viewController: UIViewController? { get set }
    
    func presentAlbum(with album: Album)
    func presentError(with message: String?)
    
    static func assembleModule() -> UIViewController
}
