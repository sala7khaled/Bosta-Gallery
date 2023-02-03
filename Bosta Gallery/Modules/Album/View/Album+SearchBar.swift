//
//  Album+SearchBar.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 03/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

extension AlbumController: UISearchBarDelegate, UISearchControllerDelegate {
    
    func initSearchBar() {
        let search = UISearchController(searchResultsController: nil)
        search.delegate = self
        search.searchBar.delegate = self
        search.searchBar.searchTextField.attributedPlaceholder = NSAttributedString(string: "search_in_images".l())
        self.navigationItem.searchController = search
        
        DispatchQueue.main.async {
            self.navigationItem.hidesSearchBarWhenScrolling = false
        }
    }
    
    func searchBarCancelButtonClicked(_searchBar: UISearchBar) {
        self.searchText = ""
        reloadUI()
    }

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {

        DispatchQueue.main.async {
            if searchText == "" {
                self.presenter.images = self.presenter.backupImages
            } else {
                self.presenter.images = []
                for image in self.presenter.backupImages {
                    if image.title.lowercased().contains(searchText.lowercased()) {
                        self.presenter.images.append(image)
                    }
                }
            }

            self.collectionView.reloadData()
        }

    }
}
