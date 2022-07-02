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
    
    @IBOutlet weak var forgotUserButton: UIButton!
    @IBOutlet weak var forgotPassButton: UIButton!
    
    let username = "Debash"
    let password = "qwerty"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        
        view.endEditing(true)
    }
    
    @IBAction func loginButtonTapped() {
    }
    
    @IBAction func reminderButtonTapped(_ sender: UIButton) {
        if sender == forgotUserButton {
            showAlert(message: "User name is \(username)")
        } else if sender == forgotPassButton {
            showAlert(message: "Your password is \(password)")
        }
    }
    
    
    
}

// MARK: Extension
extension LoginViewController {
    private func showAlert(message: String) {
        let alert = UIAlertController(
            title: "Don't tell anyone!🤫",
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

