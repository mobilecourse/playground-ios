//
//  SecondScreenViewModel.swift
//  Playground
//
//  Created by kkubicki on 01/07/2019.
//  Copyright © 2019 Ariel Bogdziewicz. All rights reserved.
//

import Foundation

protocol SecondScreenViewModelDelegate: class {
    func updateLabel(text: String)
}

class SecondScreenViewModel {
    
    // Initializer.
    init(flowController: SecondScreenFlowController, starWarsApi: StarWarsApi) {
        self.flowController = flowController
        self.starWarsApi = starWarsApi
    }
    
    func start()  {
        starWarsApi.getFirstPerson() { (value) in
            print(value)
            self.delegate.updateLabel(text: value)
        }
    }
    // Feedback for view controller.
    weak var delegate: SecondScreenViewModelDelegate!
    
    // Flow controller is owned by view model.
    let flowController: SecondScreenFlowController
    
    // api
    let starWarsApi :StarWarsApi
}
