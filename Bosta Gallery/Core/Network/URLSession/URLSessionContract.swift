//
//  URLSessionContract.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

protocol URLSessionProviderProtocol {
    
    func request<T>(type: T.Type?, service: ServiceProtocol, completion: @escaping (APIResponse<T>) -> ()) where T: Decodable
    func handleResponse<T: Decodable>(data: Data?, response: HTTPURLResponse?, error: Error?, completion: (APIResponse<T>) -> ())
    func info(_ task: URLSessionDataTask, _ body: Any?, _ data: Data?, _ response: URLResponse?, _ error: Error?)
    func loadImage(from url: String?, completion: @escaping (UIImage?) -> ())
}
