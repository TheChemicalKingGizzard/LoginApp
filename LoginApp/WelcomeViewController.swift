//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Даниил Петров on 01.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(name!)"
    }
}
