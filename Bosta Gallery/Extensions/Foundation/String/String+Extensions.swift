//
//  String+Extensions.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import Foundation

extension String {
    
    func l() -> String {
        return Bundle.main.localizedString(forKey: self, value: "", table: nil)
    }
    
}
