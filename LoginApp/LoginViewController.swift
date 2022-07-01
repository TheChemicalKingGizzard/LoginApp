//
//  ViewController.swift
//  LoginApp
//
//  Created by Даниил Петров on 01.07.2022.
//

import UIKit

class LoginViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        guard let _ = unwindSegue.source as? WelcomeViewController else { return }
    }
}

