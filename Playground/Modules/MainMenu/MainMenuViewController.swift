//
//  MainMenuViewController.swift
//  Playground
//
//  Created by Ariel Bogdziewicz on 20/11/2018.
//  Copyright © 2018 Ariel Bogdziewicz. All rights reserved.
//

// Views and view controller must import UIKit.
import UIKit
import CoreData

// All view controllers must extend base class UIViewController.
// Please remember that this is still part of view layer in
// design patterns like MVVM and VIPER.
class MainMenuViewController: UIViewController, MainMenuViewModelDelegate, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var finalList: Array<String>!
  
    
    // MARK: - Dependencies
    
    // View model is owned by view controller always.
    // But it should be delivered by factory that we could easily change
    // this into interface in future and do some mockups or other view
    // model implementations.
    var viewModel: MainMenuViewModel!
    
    // MARK: - UIViewController methods
    
    // This method is called after creation of main view that
    // we can now add subviews or set other view's parameters.
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "StarWarsPerson")
        let result = try? managedContext.fetch(fetchRequest)
        let resultList = result as! [NSManagedObject]
        finalList = resultList.map({
            ($0.value(forKey: "name") as? String)!
        })
        
    
    }
    // TODO: ...
    
    // MARK: - UITableViewDataSource methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return finalList.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (indexPath.item == 0 ){
            viewModel.goToOtherScreen()
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let currentItem = finalList.randomElement()
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
//        do {
//
//            let item = resultList[indexPath.row].value(forKey: "name") as! String
            cell.textLabel?.text = currentItem
//            return cell
//        } catch {}
//        cell.textLabel?.text = "BLA BLA BLA"
        return cell
        
    }
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    public func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return viewModel.getSectionTitle(section: section)
    }
}
