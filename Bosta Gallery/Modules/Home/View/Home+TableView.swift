//
//  Home+CollectionView.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

extension HomeController: UITableViewDelegate, UITableViewDataSource {

    func initTableView() {
        tableView.initialize(cellClass: TitleCell.self, delegate: self, dataSource: self, estimatedRowHeight: 44)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.albums.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(cellClass: TitleCell.self)
        cell.configure(with: presenter.albums[indexPath.row].title)
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.presentAlbum(with: presenter.albums[indexPath.row])
    }

}
