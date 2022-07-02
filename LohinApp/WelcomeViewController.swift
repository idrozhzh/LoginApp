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
    
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logOutButton.layer.cornerRadius = 5
        //Не смог выполнить так же как в уроке без использования guard, username передается опциональным, на уроке не было такой проблемы с передачей данных в поля и так же значения не извлекались, не понял этот момент, если объяснишь в комментариях или при разборе домашки на уроке, буду признателен!
        guard let username = username else { return }
        welcomeLabel.text = "Welcome, \(username)!"
    }
}
