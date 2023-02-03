//
//  AlbumController.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 03/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

class AlbumController: BaseController {

    @IBOutlet weak var collectionView: IntrinsicCollectionView!
    
    var presenter: AlbumPresenterInterface!
    var searchText: String = ""
    
    override func viewWillAppear(_ animated: Bool) {
        self.title = presenter.album.title
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
        initCollectionView()
        initSearchBar()
        
    }

}

extension AlbumController: AlbumView {
    
    func showViewLoading() {
        showLoading()
    }
    
    func hideViewLoading() {
        hideLoading()
    }
    
    func reloadUI() {
        collectionView.reloadData()
    }
    
}
