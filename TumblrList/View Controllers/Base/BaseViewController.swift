//
//  BaseViewController.swift
//  TumblrList
//
//  Created by Katerina Nikolaenko on 7/28/19.
//  Copyright © 2019 Katerina Nikolaenko. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    var defaultBackground: UIColor? {
        return UIColor.white
    }
    
    class var nibFile: String? {
        return nil
    }
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .default
    }
    
    //MARK: Init
    init() {
        
        super.init(nibName: type(of: self).nibFile, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
    }
    
    //MARK: Life Cycle
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        
        super.viewDidLayoutSubviews()
        
        self.view.backgroundColor = self.defaultBackground
    }
}


