//
//  UIView+Extensions.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

extension UIView {
    
    func setRadius(_ radius: CGFloat? = nil) {
        
        if let radius = radius {
            layer.cornerRadius = radius
            clipsToBounds = true
        } else {
            oval()
        }
    }
    
    func setBorder (width: CGFloat, color: UIColor) {
        layer.borderWidth = width
        layer.borderColor = color.cgColor
    }
    
    func oval() {
        layer.cornerRadius = frame.height / 2
        clipsToBounds = true
    }
    
}
