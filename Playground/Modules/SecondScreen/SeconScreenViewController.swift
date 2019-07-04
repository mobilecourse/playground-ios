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
    
    func saveToDatabase(person: StarWarsPeron) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "StarWarsPerson", in: managedContext)!
        
        let user = NSManagedObject(entity: entity, insertInto: managedContext)
        user.setValue(person.name, forKey: "name")
        
        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Could not save")
        }
    }

    func setLabelText(text forLabel: String) {
        label.text = forLabel
    }
    
    override func viewDidLoad() {
        viewModel.start()
    }}
