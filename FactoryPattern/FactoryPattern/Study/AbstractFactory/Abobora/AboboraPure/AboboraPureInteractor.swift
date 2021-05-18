//
//  AboboraPureInteractor.swift
//  FactoryPattern
//
//  Created by Jade Silveira on 18/05/21.
//

import Foundation

class AboboraPureInteractor: AboboraInteracting {
    private let presenter: AboboraPresenting
    
    init(presenter: AboboraPresenting) {
        self.presenter = presenter
    }
    
    func fetchSomething() {
        // nada
    }
    
    func openSomething() {
        // nada
    }
}
