//
//  ViewController.swift
//  LoginApp
//
//  Created by Павел Лахно on 01.10.2022.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    private let userName = "User"
    private let password = "Password"
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if userNameTextField.text == userName && passwordTextField.text == password {
            guard let welcomeVC = segue.destination as? WelcomeViewController else {
                return
            }
            welcomeVC.welcomeText = "Welcome, \(userNameTextField.text ?? "")!"
        } else {
            showAlert(withTitle: "Invalid Login or Password!",
                      andMessage: "Please, enter correct login and password")
            passwordTextField.text = ""
        }
    }

    @IBAction func pressedButton(_ sender: UIButton) {
        if sender.tag == 0 {
            showAlert(withTitle: "Ooops!",
                      andMessage: "Your name is User 😇")
        } else if sender.tag == 1 {
            showAlert(withTitle: "Ooops!",
                      andMessage: "Your password is Password 🙃")
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        if segue.source is WelcomeViewController {
            userNameTextField.text = ""
            passwordTextField.text = ""
        }
    }
}

// MARK: - UIAlertController

extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAlert)
        present(alert, animated: true)
    }
}

