//
//  ReferenceViewController.swift
//  LoginApp
//
//  Created by Павел on 05.10.2022.
//

import UIKit

final class HobbyViewController: UIViewController {

    @IBOutlet weak var referenceLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.makeGradient()
        referenceLabel.text = user.person.bio
        title = "\(user.person.fullName) Bio"
    }

}
