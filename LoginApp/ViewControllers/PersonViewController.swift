//
//  PersonViewController.swift
//  LoginApp
//
//  Created by Иван Дрожжин on 06.07.2022.
//

import UIKit

class PersonViewController: UIViewController {

    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        avatarImageView.image = UIImage(named: user.person.photo)
        nameLabel.text = user.person.fullName
        ageLabel.text = String(user.person.age)
        title = user.person.fullName
        
        }
    
    
    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personDetailsVC = segue.destination as? PersonDetailsViewController else { return }
        personDetailsVC.user = user
    }
    

}
