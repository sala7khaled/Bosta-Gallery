//
//  HomeC+CollectionView.swift
//  FilmKu
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

extension HomeController: UITableViewDelegate, UITableViewDataSource {

    func initTableView() {
        tableView.initialize(cellClass: MovieCell.self, delegate: self, dataSource: self, estimatedRowHeight: 240)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.movies.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(cellClass: MovieCell.self)
        cell.configure(with: presenter.movies[indexPath.row])
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

}
