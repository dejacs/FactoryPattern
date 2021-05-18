//
//  MovelFactoring.swift
//  FactoryPattern
//
//  Created by Jade Silveira on 18/05/21.
//

import Foundation

protocol MovelFactoring {
    static func makeMovelInterno() -> Movel
    static func makeMovelExterno() -> Movel
}
