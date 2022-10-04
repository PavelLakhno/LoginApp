//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Павел Лахно on 01.10.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeGradient()
        welcomeLabel.text = "Welcome, \(userName)"
    }
    
    private func makeGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.systemRed.cgColor, UIColor.systemBlue.cgColor]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
}
