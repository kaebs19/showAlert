//
//  ViewController.swift
//  showAlert
//
//  Created by mjeed on 01/08/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func show(_ sender: UIButton) {
        showAlerTowAction(title: "Demo title", message: "This is demo message  ") {
            // access
        }
    }
    
}

