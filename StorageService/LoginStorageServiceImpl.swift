//
//  LoginStorageServiceImpl.swift
//  LoginProtocolOriented
//
//  Created by Sabri Çetin on 19.10.2024.
//

import Foundation

class LoginStorageServiceImpl : LoginStorageService {
    
    private let storage = UserDefaults.standard
    
    var userAccesTokenKey: String  {
        return "ACCESS_TOKEN"
    }
    
    func setUserAccessToken(token: String) {
        storage.set(token, forKey: userAccesTokenKey )
    }
    
    func getUserAccesToken() -> String? {
        return storage.string(forKey: userAccesTokenKey)
    }
    
    
}
