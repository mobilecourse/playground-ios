//
//  MainMenuViewModel.swift
//  Playground
//
//  Created by Ariel Bogdziewicz on 20/11/2018.
//  Copyright © 2018 Ariel Bogdziewicz. All rights reserved.
//

// View model must not import UIKit. Foundation delivers all what is needed for view models.
import Foundation

// This interface should be implemented by view controller,
// but this is not the only way of giving feedback to view controller.
// We can use lambda functions or data bindings aka RxSwift instead.
protocol MainMenuViewModelDelegate: class {
    
}

// View model should represent current state of view,
// but it should be independent on UIKit classes.
class MainMenuViewModel {
    
    // Feedback for view controller.
    weak var delegate: MainMenuViewModelDelegate!
    
    // Flow controller is owned by view model.
    let flowController: MainMenuFlowController
    
    // Initializer.
    init(flowController: MainMenuFlowController) {
        self.flowController = flowController
    }
}
