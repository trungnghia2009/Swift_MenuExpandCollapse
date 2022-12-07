//
//  ViewController.swift
//  Menu_Expand_Collapse
//
//  Created by trungnghia on 07/12/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapMenuBar(_ sender: Any) {
        show(MenuViewController(), sender: nil)
    }
    
    @IBAction func didTapInfo(_ sender: Any) {
        createAlert()
    }
    
    private func createAlert() {
        let alert = UIAlertController(title: "Info", message: "Expand & Collapse menu!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        showDetailViewController(alert, sender: nil)
    }
}

