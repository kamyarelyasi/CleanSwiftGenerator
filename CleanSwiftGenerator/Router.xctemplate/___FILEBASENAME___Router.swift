//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  Generated by CleanSwiftGenerator
//

import UIKit

protocol ___VARIABLE_sceneName___RoutingLogic {
    
}

protocol ___VARIABLE_sceneName___DataPassing {
    var dataStore: ___VARIABLE_sceneName___DataStore? { get }
}

class ___VARIABLE_sceneName___Router: NSObject, ___VARIABLE_sceneName___RoutingLogic, ___VARIABLE_sceneName___DataPassing {
    private let sceneFactory: SomeSceneFactory
    private weak var viewController: ___VARIABLE_sceneName___ViewController?
    init(sceneFactory: SomeSceneFactory, viewController: ___VARIABLE_sceneName___ViewController?) {
        self.sceneFactory = sceneFactory
        self.viewController = viewController
    }
    
    // MARK: - Properties
    var dataStore: ___VARIABLE_sceneName___DataStore?
}
