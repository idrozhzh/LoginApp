//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Иван Дрожжин on 02.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var logOutButton: UIButton!
    
    var username = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logOutButton.layer.cornerRadius = 5
        
        welcomeLabel.text = "Welcome, \(username)!"
    }
}
