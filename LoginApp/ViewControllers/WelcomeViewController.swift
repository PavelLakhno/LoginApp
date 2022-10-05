//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Павел Лахно on 01.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user.person.firstName) \(user.person.lastName)"
        view.makeGradient()
    }
}

extension UIView {
    func makeGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [UIColor.systemRed.cgColor, UIColor.systemBlue.cgColor]
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
