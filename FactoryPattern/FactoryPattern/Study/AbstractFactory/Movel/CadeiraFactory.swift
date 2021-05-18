//
//  CadeiraFactory.swift
//  FactoryPattern
//
//  Created by Jade Silveira on 18/05/21.
//

import Foundation

class CadeiraFactory: MovelFactoring {
    static func makeMovelInterno() -> Movel {
        let especificacoesTecnica: EspecificacoesTecnica = EspecificacoesTecnicaInterno()
        return Cadeira(especificacoesTecnica: especificacoesTecnica)
    }
    
    static func makeMovelExterno() -> Movel {
        let especificacoesTecnica: EspecificacoesTecnica = EspecificacoesTecnicaExterno()
        return Cadeira(especificacoesTecnica: especificacoesTecnica)
    }
}
