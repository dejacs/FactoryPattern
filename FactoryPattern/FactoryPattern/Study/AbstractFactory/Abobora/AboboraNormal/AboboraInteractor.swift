//
//  AboboraInteractor.swift
//  FactoryPattern
//
//  Created by Jade Silveira on 18/05/21.
//

import Foundation

protocol AboboraInteracting {
    func fetchSomething()
    func openSomething()
}

class AboboraInteractor: AboboraInteracting {
    private let presenter: AboboraPresenting
    
    init(presenter: AboboraPresenting) {
        self.presenter = presenter
    }
    
    func fetchSomething() {
        presenter.presentSomething()
    }
    
    func openSomething() {
        presenter.didNextStep(action: .open)
    }
}
