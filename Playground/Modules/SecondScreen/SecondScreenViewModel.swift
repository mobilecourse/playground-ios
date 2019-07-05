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
    func saveToDatabase(person: StarWarsPeron)
}

class SecondScreenViewModel {
    
    // Initializer.
    init(flowController: SecondScreenFlowController, starWarsApi: StarWarsApi) {
        self.flowController = flowController
        self.starWarsApi = starWarsApi
    }
    
    func start()  {
        starWarsApi.getFirstPerson() { (value) in
            self.delegate.updateLabel(text: value?.name ?? "default name")
            if (value != nil) {
                self.delegate.saveToDatabase(person: value!)}
        }
    }
    // Feedback for view controller.
    weak var delegate: SecondScreenViewModelDelegate!
    
    // Flow controller is owned by view model.
    let flowController: SecondScreenFlowController
    
    // api
    let starWarsApi :StarWarsApi
}
