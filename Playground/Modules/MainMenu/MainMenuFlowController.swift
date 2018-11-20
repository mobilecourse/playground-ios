//
//  MainMenuFlowController.swift
//  Playground
//
//  Created by Ariel Bogdziewicz on 20/11/2018.
//  Copyright © 2018 Ariel Bogdziewicz. All rights reserved.
//

import UIKit

// Implementation of transitions between view controllers.
// It can be done using segues in Storyboards or programatically here.
// According to Single Responsibility Rule this class is responsible
// only for navigation between view controllers in our mobile app.
class MainMenuFlowController {
    
    // This class attribute must be weak to not create memory leak.
    weak var navigationController: UINavigationController?
    
    // This class attribute must be weak to not create memory leak.
    weak var viewController: MainMenuViewController?
    
    // Initializer in most cases only gets dependencies.
    init(navigationController: UINavigationController, viewController: MainMenuViewController) {
        self.navigationController = navigationController
        self.viewController = viewController
    }
}
