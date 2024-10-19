//
//  RootViewModel.swift
//  LoginProtocolOriented
//
//  Created by Sabri Çetin on 19.10.2024.
//

import Foundation

class RootViewModel {
    
    private let loginStorageService : LoginStorageService
    
    weak var output : RootViewModelOutput?
    
    init(loginStorageService: LoginStorageService) {
        self.loginStorageService = loginStorageService
        
    }
    func checkLogin () {
        if let accessToken = loginStorageService.getUserAccesToken() , !accessToken.isEmpty {
            // showMainApp()
            output?.showMainApp()
        } else {
             //showLogin()
            output?.showLogin()
        }
    }
}
