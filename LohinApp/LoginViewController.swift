//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Иван Дрожжин on 02.07.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    private let username = "Debash"
    private let password = "qwerty"
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.username = usernameTF.text ?? "User"
    }
    
    @IBAction func loginButtonTapped() {
        if usernameTF.text != username {
            showAlert(
                title: "Oooops!",
                message: "User with similar username/password combination not found. Please try again"
            )
            return
        } else if passwordTF.text != password {
            showAlert(
                title: "Oooops!",
                message: "User with similar username/password combination not found. Please try again"
            )
            return
        }
    }
    
    @IBAction func reminderButtonTapped(_ sender: UIButton) {
        if sender.tag == 1 {
            showAlert(
                title: "Don't tell anyone!🤫",
                message: "User name is \(username)"
            )
        } else if sender.tag == 2 {
            showAlert(
                title: "Don't tell anyone!🤫",
                message: "Your password is \(password)"
            )
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
}

// MARK: Extension
extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: { _ in
            self.passwordTF.text = ""
        })
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

