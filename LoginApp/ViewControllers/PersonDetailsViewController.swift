//
//  PersonDetailsViewController.swift
//  LoginApp
//
//  Created by Иван Дрожжин on 06.07.2022.
//

import UIKit

class PersonDetailsViewController: UIViewController {

    @IBOutlet weak var avatarImageView: UIImageView! {
        didSet {
            avatarImageView.layer.cornerRadius = avatarImageView.frame.height / 2
        }
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var professionLabel: UILabel!
    @IBOutlet weak var educationLabel: UILabel!
    @IBOutlet weak var interestsLabel: UILabel!
    
    var user: User!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .darkContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "\(user.person.fullName) BIO"
        avatarImageView.image = UIImage(named: user.person.photo)
        nameLabel.text = "Имя: \(user.person.fullName)"
        ageLabel.text = "Возраст: \(String(user.person.age))"
        professionLabel.text = "Профессия: \(user.person.profession)"
        educationLabel.text = "Образование: \(user.person.education)"
        interestsLabel.text = "Интересы: \(user.person.interests)"
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
