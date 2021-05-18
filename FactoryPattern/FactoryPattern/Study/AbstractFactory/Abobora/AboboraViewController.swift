//
//  AboboraViewController.swift
//  FactoryPattern
//
//  Created by Jade Silveira on 18/05/21.
//

import Foundation
import UIKit

protocol AboboraDisplaying: AnyObject {
    func displaySomething()
}

class AboboraViewController: UIViewController {
    private let interactor: AboboraInteracting
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor.fetchSomething()
    }
    
    init(interactor: AboboraInteracting) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) { nil }
    
    func tapButton() {
        interactor.openSomething()
    }
}

extension AboboraViewController: AboboraDisplaying {
    func displaySomething() {
        
    }
}
