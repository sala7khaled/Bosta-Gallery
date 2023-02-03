//
//  AlbumController+CollectionView.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 03/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

extension AlbumController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func initCollectionView() {
        collectionView.initialize(cellClass: PhotoCell.self, delegate: self, dataSource: self)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter.images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeue(cellClass: PhotoCell.self, indexPath: indexPath)
        cell.configure(with: presenter.images[indexPath.row])
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let size = CGSize( width: collectionView.frame.width / 3,
                          height: collectionView.frame.height / 6)

        return size
    }
    
}
