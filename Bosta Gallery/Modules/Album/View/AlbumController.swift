//
//  AlbumController.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

class AlbumController: BaseController {
    
    
    @IBOutlet weak var collectionView: IntrinsicCollectionView!
    
    var presenter: AlbumPresenterInterface!
    
    override func viewWillAppear(_ animated: Bool) {
        self.title = presenter.album.title
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
//        initCollectionView()
    }
    
}

extension AlbumController: AlbumView {
    
    func initCollectionView2() {
        initCollectionView()

    }
    
    func showViewLoading() {
        showLoading()
    }
    
    func hideViewLoading() {
        hideLoading()
        initCollectionView()
    }
    
    func reloadUI() {
        initCollectionView()
        collectionView.reloadData()
    }
}
