//
//  AbstractFactory.swift
//  FactoryPattern
//
//  Created by Jade Silveira on 18/05/21.
//

import UIKit

// Products

protocol AbstractProductA: AnyObject {
    func fetchInfo()
}

protocol AbstractProductB: AnyObject {
    func fetchInfo()
}

class ProductA: AbstractProductA {
    func fetchInfo() {
        // fetch
    }
}

class ProductB: AbstractProductB {
    func fetchInfo() {
        // fetch
    }
}

// Factory

protocol AbstractFactory: AnyObject {
    func createProductA() -> AbstractProductA
    func createProductB() -> AbstractProductB
}

class ConcreteFactory: AbstractFactory {
    func createProductA() -> AbstractProductA {
        return ProductA()
    }
    
    func createProductB() -> AbstractProductB {
        return ProductB()
    }
}
