//
//  InfoViewController.swift
//  LoginApp
//
//  Created by Павел on 05.10.2022.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView! {
        didSet {
            photoImageView.layer.cornerRadius = photoImageView.frame.width/2
        }
    }
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var professionLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.makeGradient()
        initUser(user.person)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let hobbyVC = segue.destination as? HobbyViewController else { return }
        hobbyVC.user = user
    }
    
    private func initUser(_ person: Person) {
        firstNameLabel.text = person.firstName
        lastNameLabel.text = person.lastName
        ageLabel.text = "\(person.age)"
        cityLabel.text = person.city
        professionLabel.text = person.profession
    }
}
