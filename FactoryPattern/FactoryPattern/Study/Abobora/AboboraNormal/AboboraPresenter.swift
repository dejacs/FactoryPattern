//
//  AboboraPresenter.swift
//  FactoryPattern
//
//  Created by Jade Silveira on 18/05/21.
//

import Foundation

protocol AboboraPresenting {
    var viewController: AboboraDisplaying? { get set }
    func didNextStep(action: AboboraAction)
    func presentSomething()
}

class AboboraPresenter: AboboraPresenting {
    weak var viewController: AboboraDisplaying?
    private var coordinator: AboboraCoordinating?
    
    init() { }
    
    init(coordinator: AboboraCoordinating) {
        self.coordinator = coordinator
    }
    
    func didNextStep(action: AboboraAction) {
        coordinator?.perform(action: action)
    }
    
    func presentSomething() {
        viewController?.displaySomething()
    }
}
