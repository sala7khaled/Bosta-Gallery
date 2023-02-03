//
//  URLComponents+Extension.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import Foundation

extension URLComponents {
    
    init(service: ServiceProtocol) {
        let urlString = API.baseUrl.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        let baseUrl = URL(string: urlString)
        let url = baseUrl!.appendingPathComponent(service.path)
        
        /// Build the URL
        
        self.init(url: url, resolvingAgainstBaseURL: false)!
        
        /// Set the spasific guery params which assigned by routes
        
        guard let parameters = service.parameters else { return }
        queryItems = parameters.map { key, value in
            return URLQueryItem(name: key, value: String(describing: value))
        }
    }
}
