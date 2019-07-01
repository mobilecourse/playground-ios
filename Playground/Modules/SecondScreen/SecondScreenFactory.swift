//
//  SecondScreenFactory.swift
//  Playground
//
//  Created by kkubicki on 01/07/2019.
//  Copyright © 2019 Ariel Bogdziewicz. All rights reserved.
//

import UIKit

class SecondScreenFactory {


static func pushIn(_ navigationController: UINavigationController, dependencyManager: DependencyManager) {
    
    // Creates view controller.
    //let viewController = MainMenuViewController()
    let viewController = UIStoryboard(name: "SeconScreenViewController", bundle: nil).instantiateViewController(withIdentifier: "SeconScreenViewController") as! SeconScreenViewController
    
    // Creates flow controller.
    let flowController = SecondScreenFlowController(
        navigationController: navigationController,
        viewController: viewController)
    
    // Creates view model. Binding with view controller.
    let viewModel = SecondScreenViewModel(flowController: flowController)
    viewController.viewModel = viewModel
    viewModel.delegate = viewController
    
    // Push into navigation stack.
    navigationController.isNavigationBarHidden = true
    navigationController.pushViewController(viewController, animated: false)
}
}
