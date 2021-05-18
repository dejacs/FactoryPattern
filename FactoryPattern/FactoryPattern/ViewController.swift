//
//  ViewController.swift
//  FactoryPattern
//
//  Created by Jade Silveira on 17/05/21.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.pushViewController(AboboraFactory.make(), animated: true)
    }
}

