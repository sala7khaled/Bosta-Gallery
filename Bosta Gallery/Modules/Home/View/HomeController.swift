//
//  HomeController.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

class HomeController: BaseController {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblMyAlbums: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var presenter: HomePresenterInterface!
    
    override func viewWillAppear(_ animated: Bool) {
        self.title = "profile".l()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
        initTableView()
    }
    
}

extension HomeController: HomeView {
    
    func showViewLoading() {
        showLoading()
    }
    
    func hideViewLoading() {
        hideLoading()
    }
    
    func reloadUI() {
        tableView.reloadData()
        lblName.text = presenter.randomUser.name
        lblAddress.text = "\(presenter.randomUser.address.street), \(presenter.randomUser.address.suite), \(presenter.randomUser.address.city) - \(presenter.randomUser.address.zipcode)"
        lblMyAlbums.text = "my_albums".l()
    }
}
