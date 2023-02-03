//
//  HomeInteractor.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

class HomeInteractor: HomeInteractorInterface {
    
    weak var output: HomeInteractorOutput?
    
    func getUsers() {
        if ReachabilityManager.isOnline() {
            
            HomeRepo.shared.getUsers() { [ weak self ] response in
                guard let self = self else { return }
                DispatchQueue.main.async {
                    switch (response) {
                    case let .onSuccess(response):
                        try? UserDefaults.standard.store(object: response, key: .users)
                        self.output?.didGetUsers(response: response)
                    case let .onFailure(error):
                        self.output?.didFailedGetUsers(error: error)
                    }
                }
            }
            
            // Retrive from Cashing
        }
        else if HomeRepo.shared.users != nil {
            output?.didGetUsers(response: HomeRepo.shared.users!)
        } else {
            output?.didFailedGetUsers(error: APIError(type: .network, message: "No internet connection!".l()))
        }
    }
    
    func getAlbums(userId: Int) {
        if ReachabilityManager.isOnline() {
            
            HomeRepo.shared.getAlbums(userId: userId) { [ weak self ] response in
                guard let self = self else { return }
                DispatchQueue.main.async {
                    switch (response) {
                    case let .onSuccess(response):
                        try? UserDefaults.standard.store(object: response, key: .albums)
                        self.output?.didGetAlbums(response: response)
                    case let .onFailure(error):
                        self.output?.didFailedGetAlbums(error: error)
                    }
                }
            }
            
            // Retrive from Cashing
        }
        else if HomeRepo.shared.albums != nil {
            output?.didGetAlbums(response: HomeRepo.shared.albums!)
        } else {
            output?.didFailedGetAlbums(error: APIError(type: .network, message: "No internet connection!".l()))
        }
    }
    
}
