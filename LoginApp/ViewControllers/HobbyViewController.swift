//
//  ReferenceViewController.swift
//  LoginApp
//
//  Created by Павел on 05.10.2022.
//

import UIKit

class HobbyViewController: UIViewController {

    @IBOutlet weak var referenceLabel: UILabel!
    
    var reference = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.makeGradient()
        referenceLabel.text = reference
    }

}
