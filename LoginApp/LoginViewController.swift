//
//  ViewController.swift
//  LoginApp
//
//  Created by Даниил Петров on 01.07.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet var userName: UITextField!
    @IBOutlet var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        
        if userName.text == "User" && password.text == "12345" {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            guard let secondVC = storyboard.instantiateViewController(
                identifier: "WelcomeVC") as? WelcomeViewController else {
                return
            }// Извечный вопрос, как переносить такие строки и стоит ли вообще?
            //  Что в данном случае важнее: правило 80 символов или читаемость?
            
            secondVC.name = userName.text
            show(secondVC, sender: nil)
            userName.text = ""
        } else {
            showAlert(with: "Login or password are incorrect",
                      and: "Try again")
        }
        
        password.text = ""
    }
    
    @IBAction func remindLogin(_ sender: Any) {
        showAlert(with: "Mate...🤨",
                  and: "Your login is User")
        userName.text = ""
    }
    @IBAction func remindPassword(_ sender: Any) {
        showAlert(with: "Seriously? 🙄",
                  and: "Your password is 12345")
    }
    
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        guard let _ = unwindSegue.source as? WelcomeViewController else {
            return
        }
    }
}

// MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.password.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

