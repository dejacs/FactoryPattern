//
//  MesaFactory.swift
//  FactoryPattern
//
//  Created by Jade Silveira on 18/05/21.
//

import Foundation

class MesaFactory: MovelFactoring {
    static func makeMovelInterno() -> Movel {
        let especificacoesTecnica: EspecificacoesTecnica = EspecificacoesTecnicaInterno()
        return Mesa(especificacoesTecnica: especificacoesTecnica)
    }
    
    static func makeMovelExterno() -> Movel {
        let especificacoesTecnica: EspecificacoesTecnica = EspecificacoesTecnicaExterno()
        return Mesa(especificacoesTecnica: especificacoesTecnica)
    }
}
