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
class MainMenuViewController: UIViewController, MainMenuViewModelDelegate {
    
    // MARK: - Dependencies
    
    // View model is owned by view controller always.
    // But it should be delivered by factory that we could easily change
    // this into interface in future and do some mockups or other view
    // model implementations.
    var viewModel: MainMenuViewModel!
    
    // MARK: - UIViewController methods
    
    // Responsibility of this class is to create main view
    // for this controller. In most cases we don't have to implement this method
    // becuase super implementation does it for us.
    override func loadView() {
        super.loadView()
    }
    
    // This method is called after creation of main view that
    // we can now add subviews or set other view's parameters.
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
    }
    
    // MARK: - MainMenuViewModelDelegate methods
    
    // TODO: ...
}
