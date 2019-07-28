//
//  BaseNavigationController.swift
//  TumblrList
//
//  Created by Katerina Nikolaenko on 7/28/19.
//  Copyright © 2019 Katerina Nikolaenko. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.setup()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    private func setup() {
        
        self.graphicSetup()
    }
    
    private func graphicSetup() {
        
        navigationBar.barTintColor = .white
        navigationBar.isTranslucent = false
        navigationBar.tintColor = .primaryBlue
        navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.primaryBlue]
    }
}
