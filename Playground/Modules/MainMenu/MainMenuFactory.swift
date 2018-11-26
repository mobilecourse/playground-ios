//
//  MainMenuFactory.swift
//  Playground
//
//  Created by Ariel Bogdziewicz on 20/11/2018.
//  Copyright © 2018 Ariel Bogdziewicz. All rights reserved.
//

import UIKit

// Creates all objects to initialize module using dependency injection.
// Quintessence of our clean architecture.
class MainMenuFactory {
    
    static func pushIn(_ navigationController: UINavigationController, dependencyManager: DependencyManager) {
        
        // Creates view controller.
        //let viewController = MainMenuViewController()
        let viewController = UIStoryboard(name: "MainMenuViewController", bundle: nil).instantiateViewController(withIdentifier: "MainMenuViewController") as! MainMenuViewController
        
        // Creates flow controller.
        let flowController = MainMenuFlowController(
            navigationController: navigationController,
            viewController: viewController)
        
        // Creates view model. Binding with view controller.
        let viewModel = MainMenuViewModel(flowController: flowController)
        viewController.viewModel = viewModel
        viewModel.delegate = viewController
        
        // Push into navigation stack.
        navigationController.isNavigationBarHidden = true
        navigationController.pushViewController(viewController, animated: false)
    }
}
