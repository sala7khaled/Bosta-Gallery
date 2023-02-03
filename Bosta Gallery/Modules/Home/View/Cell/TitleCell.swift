//
//  TitleCell.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 03/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

class TitleCell: UITableViewCell {
    
    @IBOutlet weak var lblTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(with Title: String) {
        lblTitle.text = Title
    }
}
