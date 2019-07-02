//
//  SeconScreenViewController.swift
//  Playground
//
//  Created by kkubicki on 01/07/2019.
//  Copyright © 2019 Ariel Bogdziewicz. All rights reserved.
//

import UIKit

class SeconScreenViewController:  UIViewController, SecondScreenViewModelDelegate {
    func updateLabel(text: String) {
        label.text = text
    }
    
    
        var viewModel: SecondScreenViewModel!
    
    
    @IBOutlet weak var label: UILabel!
    
    func setLabelText(text forLabel: String) {
        label.text = forLabel
    }
    
    override func viewDidLoad() {
        viewModel.start()
    
    }}
