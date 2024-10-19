//
//  LoginStorageService.swift
//  LoginProtocolOriented
//
//  Created by Sabri Çetin on 19.10.2024.
//

import Foundation

protocol LoginStorageService {
    
    var userAccesTokenKey : String {get}
    func setUserAccessToken ( token : String)
    func getUserAccesToken() -> String?
    
}
