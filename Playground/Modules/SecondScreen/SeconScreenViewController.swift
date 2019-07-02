//
//  SeconScreenViewController.swift
//  Playground
//
//  Created by kkubicki on 01/07/2019.
//  Copyright © 2019 Ariel Bogdziewicz. All rights reserved.
//

import UIKit
import CoreData

class SeconScreenViewController:  UIViewController, SecondScreenViewModelDelegate {
    
    
    @IBAction func addButton(_ sender: UIButton) {
        print("ADD BUTTON")
    }
    
    @IBOutlet weak var label: UILabel!
    var viewModel: SecondScreenViewModel!

    func updateLabel(text: String) {
        label.text = text
    }

    func setLabelText(text forLabel: String) {
        label.text = forLabel
    }
    
    override func viewDidLoad() {
        viewModel.start()
    }}
