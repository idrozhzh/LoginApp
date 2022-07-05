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
    
    private let user = User(
        avatar: "avatar.jpg",
        person: Person.getPerson()
    )
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.username = user.person.name
    }
    
    @IBAction func loginButtonTapped() {
        guard usernameTF.text == user.username, passwordTF.text == user.password else {
            showAlert(
                title: "Oooops!",
                message: "Password or Username is incorrect. Please try again",
                textfield: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)

    }
    
    @IBAction func reminderButtonTapped(_ sender: UIButton) {
        if sender.tag == 1 {
            showAlert(
                title: "Don't tell anyone!🤫",
                message: "User name is \(user.username)"
            )
        } else if sender.tag == 2 {
            showAlert(
                title: "Don't tell anyone!🤫",
                message: "Your password is \(user.password)"
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
    private func showAlert(title: String, message: String, textfield: UITextField? = nil) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: { _ in
            textfield?.text = ""
        })
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

