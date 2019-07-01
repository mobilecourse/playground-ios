//
//  MainMenuViewController.swift
//  Playground
//
//  Created by Ariel Bogdziewicz on 20/11/2018.
//  Copyright © 2018 Ariel Bogdziewicz. All rights reserved.
//

// Views and view controller must import UIKit.
import UIKit

// All view controllers must extend base class UIViewController.
// Please remember that this is still part of view layer in
// design patterns like MVVM and VIPER.
class MainMenuViewController: UIViewController, MainMenuViewModelDelegate, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
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
    }
    
    // MARK: - MainMenuViewModelDelegate methods
    
    // TODO: ...
    
    // MARK: - UITableViewDataSource methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (indexPath.item == 0 ){
            viewModel.goToOtherScreen()
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        cell.textLabel?.text = "Ala ma dom"
        
        return cell
    }
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    public func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return viewModel.getSectionTitle(section: section)
    }
}
