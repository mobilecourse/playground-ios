//
//  SecondScreenFlowController.swift
//  Playground
//
//  Created by kkubicki on 01/07/2019.
//  Copyright © 2019 Ariel Bogdziewicz. All rights reserved.
//

import UIKit

class SecondScreenFlowController {

    // This class attribute must be weak to not create memory leak.
    weak var navigationController: UINavigationController?
    
    // This class attribute must be weak to not create memory leak.
    weak var viewController: SeconScreenViewController?
    
    // Initializer in most cases only gets dependencies.
    init(navigationController: UINavigationController, viewController: SeconScreenViewController) {
        self.navigationController = navigationController
        self.viewController = viewController
    }
    
    func setPerson(person: String) {
        viewController?.setLabelText(text: person)
    }
}
