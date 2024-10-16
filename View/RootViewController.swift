//
//  ViewController.swift
//  LoginProtocolOriented
//
//  Created by Sabri Çetin on 16.10.2024.
//

import UIKit

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .purple
    }
        
    func checkLogin () {
        if let accessToken = UserDefaults.standard.string(forKey: "ACCESS_TOKEN") , !accessToken.isEmpty {
            
        } else {
            
            
        }
        
    }
        
    func showMainApp() {
        let mainViewController = MainVİewController()
        navigationController?.present(mainViewController , animated: true)
    }
    func showLogin() {
        let loginViewController = LoginViewController()
        navigationController?.present(loginViewController , animated: true)
    }

}

