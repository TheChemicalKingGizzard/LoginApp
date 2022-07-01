//
//  ViewController.swift
//  LoginApp
//
//  Created by Даниил Петров on 01.07.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameButton: UIButton!
    @IBOutlet var passwordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameButton.titleLabel?.adjustsFontSizeToFitWidth = true
        passwordButton.titleLabel?.adjustsFontSizeToFitWidth = true
    }


}

