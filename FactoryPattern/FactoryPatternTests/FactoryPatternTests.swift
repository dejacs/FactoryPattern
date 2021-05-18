//
//  FactoryPatternTests.swift
//  FactoryPatternTests
//
//  Created by Jade Silveira on 17/05/21.
//

import XCTest
import UIKit
@testable import FactoryPattern

class CoordinatorSpy: AboboraCoordinating {
    weak var viewController: UIViewController? {
        didSet {
            didSetViewController += 1
        }
    }
    
    private(set) var didSetViewController = 0
    private(set) var performActionCount = 0
    
    func perform(action: AboboraAction) {
        performActionCount += 1
    }
}

class PresenterSpy: AboboraPresenting {
    weak var viewController: AboboraDisplaying? {
        didSet {
            didSetViewController += 1
        }
    }
    
    private(set) var didSetViewController = 0
    private(set) var didNextStepCount = 0
    private(set) var presentSomethingCount = 0
    
    func didNextStep(action: AboboraAction) {
        didNextStepCount += 1
    }
    
    func presentSomething() {
        presentSomethingCount += 1
    }
}

class InteractorSpy: AboboraInteracting {
    private(set) var fetchSomethingCount = 0
    private(set) var openSomethingCount = 0
    
    func fetchSomething() {
        fetchSomethingCount += 1
    }
    
    func openSomething() {
        openSomethingCount += 1
    }
}

class ViewControllerSpy: UIViewController {
    private let interactor: AboboraInteracting
    
    init(interactor: AboboraInteracting) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) { nil }
}

class FactoryPatternTests: XCTestCase {
    var coordinator = CoordinatorSpy()
    var presenter = PresenterSpy()
    var interactor = InteractorSpy()
    
    func testMake() {
        _ = AboboraFactory.make()
        
        XCTAssertEqual(coordinator.didSetViewController, 1)
        XCTAssertEqual(presenter.didSetViewController, 1)
    }
}
