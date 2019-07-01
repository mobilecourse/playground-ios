//
//  SecondScreenViewModel.swift
//  Playground
//
//  Created by kkubicki on 01/07/2019.
//  Copyright © 2019 Ariel Bogdziewicz. All rights reserved.
//

import Foundation


protocol SecondScreenViewModelDelegate: class {
    
}

class SecondScreenViewModel {
    
    // Initializer.
    init(flowController: SecondScreenFlowController) {
        self.flowController = flowController
    }
    
    // Feedback for view controller.
    weak var delegate: SecondScreenViewModelDelegate!
    
    // Flow controller is owned by view model.
    let flowController: SecondScreenFlowController
}
