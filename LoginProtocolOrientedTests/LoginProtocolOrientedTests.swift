//
//  LoginProtocolOrientedTests.swift
//  LoginProtocolOrientedTests
//
//  Created by Sabri Çetin on 16.10.2024.
//

import XCTest
@testable import LoginProtocolOriented

final class LoginProtocolOrientedTests: XCTestCase {
    
    private var viewModel : RootViewModel!
    private var loginStorageService : MockLoginStorageService!
    private var output : MockRootViewModelOutput!
    
    override func setUpWithError() throws {
        loginStorageService = MockLoginStorageService()
        viewModel = RootViewModel(loginStorageService: loginStorageService)
        output = MockRootViewModelOutput()
        
        viewModel.output = output
    }

    override func tearDownWithError() throws {
        viewModel = nil
        loginStorageService  = nil
        
    }

    func testShowLogin_whenLoginStroageRetrunsEmptyUserAccessToken() throws {
        loginStorageService.storage = [:]
        viewModel.checkLogin()
        
        XCTAssertEqual(output.checkArray.first, .login)
        
      
    }

    func testShowMainApp_whenLoginStroageRetrunsUserAccessToken() throws {
        
        loginStorageService.storage["ACCESS_TOKEN"] = "129349LKJRLJ3948983"
        viewModel.checkLogin()
        
        XCTAssertEqual(output.checkArray.first, .mainApp)
        
      
    }
}


class MockLoginStorageService : LoginStorageService {
    var userAccesTokenKey: String  {
        return "ACCESS_TOKEN"
        
    }
    
    var storage : [String : String] = [:]
    func setUserAccessToken(token: String) {
        storage[userAccesTokenKey] = token
    }
    
    func getUserAccesToken() -> String? {
        return storage [userAccesTokenKey]
    }
    
    
}

class MockRootViewModelOutput : RootViewModelOutput {
    enum Check {
        case login
        case mainApp
    }
    
    var checkArray : [Check] = []
    
    func showLogin() {
        checkArray.append(.login)
    }
    
    func showMainApp() {
        checkArray.append(.mainApp)
    }
    
    
}
