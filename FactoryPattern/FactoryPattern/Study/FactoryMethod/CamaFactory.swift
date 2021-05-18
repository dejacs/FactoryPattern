//
//  CamaFactory.swift
//  FactoryPattern
//
//  Created by Jade Silveira on 18/05/21.
//

import Foundation

struct Cama {
    let size: (altura: Double, largura: Double, comprimento: Double)
}

class CamaFactory {
    func makeCama() -> Cama {
        Cama(size: (altura: 0.5, largura: 1.5, comprimento: 2))
    }
}

class CamaDeCasalFactory: CamaFactory {
    override func makeCama() -> Cama {
        Cama(size: (altura: 0.5, largura: 2, comprimento: 2))
    }
}
