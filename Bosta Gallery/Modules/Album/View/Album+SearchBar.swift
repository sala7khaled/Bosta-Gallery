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
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if searchText == "" {
            presenter.images = presenter.backupImages
        } else {
            presenter.images = []
            for image in presenter.backupImages {
                if image.title.lowercased().contains(searchText.lowercased()) {
                    presenter.images.append(image)
                }
            }
        }
        reloadUI()
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        if searchBar.text == "" {
            searchBar.resignFirstResponder()
            presenter.images = presenter.backupImages
            reloadUI()
        }
    }
}
