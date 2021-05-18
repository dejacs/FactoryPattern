//
//  AboboraFactory.swift
//  FactoryPattern
//
//  Created by Jade Silveira on 18/05/21.
//

import Foundation
import UIKit

protocol SceneFactoring {
    associatedtype ViewControllerType: UIViewController
}

final class AboboraFactory: SceneFactoring {
    typealias ViewControllerType = AboboraViewController
    
    static func make() -> ViewControllerType {
        var coordinator: AboboraCoordinating = AboboraCoordinator()
        var presenter: AboboraPresenting = AboboraPresenter(coordinator: coordinator)
        let interactor: AboboraInteracting = AboboraInteractor(presenter: presenter)
        let viewController = AboboraViewController(interactor: interactor)
        
        coordinator.viewController = viewController
        presenter.viewController = viewController
        
        return viewController
    }
    
    static func makePure() -> ViewControllerType {
        var presenter: AboboraPresenting = AboboraPresenter()
        let interactor: AboboraInteracting = AboboraPureInteractor(presenter: presenter)
        let viewController = AboboraViewController(interactor: interactor)
        
        presenter.viewController = viewController
        
        return viewController
    }
}
