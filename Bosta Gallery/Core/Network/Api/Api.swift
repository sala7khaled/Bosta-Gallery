//
//  Api.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import Foundation

/**
 APIConfigurations
 
 - parameter development: For the application during the development phase.
 - parameter stage: For the application during the testing phase.
 - parameter production: For the application during the launching on App store.
 */

let API = Api(config: .development)

enum APIConfiguration {

    case development
    case stage
    case production
}

final class Api {
    
    let config: APIConfiguration
    
    var baseUrl: String {
        switch config {
        case .development:
            return "https://jsonplaceholder.typicode.com/"
        case .stage:
            return "https://jsonplaceholder.typicode.com/"
        case .production:
            return "https://jsonplaceholder.typicode.com/"
        }
    }
    
    init(config: APIConfiguration) {
        self.config = config
    }
     
    // MARK: - HOME
    let SERVICE_USER = "users"
    let SERVICE_ALBUM = "albums"
    
    
    // MARK: - GALLERY
    let SERVICE_PHOTO = "photos"
    
}
