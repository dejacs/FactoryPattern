//
//  AboboraCoordinator.swift
//  FactoryPattern
//
//  Created by Jade Silveira on 18/05/21.
//

import Foundation
import UIKit

enum AboboraAction {
    case open
}

protocol AboboraCoordinating {
    var viewController: UIViewController? { get set }
    func perform(action: AboboraAction)
}

class AboboraCoordinator: AboboraCoordinating {
    weak var viewController: UIViewController?
    
    func perform(action: AboboraAction) {
        viewController?.navigationController?.pushViewController(ViewController(), animated: true)
    }
}
