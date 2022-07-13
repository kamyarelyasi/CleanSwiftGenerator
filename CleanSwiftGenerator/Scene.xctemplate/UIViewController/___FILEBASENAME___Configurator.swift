//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  Generated by CleanSwiftGenerator
//

import Foundation

protocol ___VARIABLE_sceneName___Configurator {
    func configure(_ vc: ___VARIABLE_sceneName___ViewController) -> ___VARIABLE_sceneName___ViewController
}

final class ___VARIABLE_sceneName___DefaultConfigurator {
    private var sceneFactory: SomeSceneFactory
    init(sceneFactory: SomeSceneFactory) {
        self.sceneFactory = sceneFactory
    }
}

extension ___VARIABLE_sceneName___DefaultConfigurator: ___VARIABLE_sceneName___Configurator {
    @discardableResult
    func configure(_ vc: ___VARIABLE_sceneName___ViewController) -> ___VARIABLE_sceneName___ViewController {
        sceneFactory.someConfigurator = self
        let service: SomeNetworkServiceProtocol = SomeNetworkService()
        let worker = ___VARIABLE_sceneName___Worker()
        let interactor = ___VARIABLE_sceneName___Interactor()
        let presenter = ___VARIABLE_sceneName___Presenter()
        let router = ___VARIABLE_sceneName___Router()
        
        router.source = vc
        router.dataStore = interactor
        presenter.viewController = vc
        interactor.presenter = presenter
        interactor.worker = worker
        vc.interactor = interactor
        vc.router = router
        
        return vc
    }
}
