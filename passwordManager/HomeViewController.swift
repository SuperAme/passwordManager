//
//  HomeViewController.swift
//  passwordManager
//
//  Created by IDS Comercial on 10/06/21.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Welcome"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Dismiss", style: .plain, target: self, action: nil)
        
    }
}
