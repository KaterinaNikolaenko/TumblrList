//
//  UIView.swift
//  TumblrList
//
//  Created by Katerina Nikolaenko on 7/28/19.
//  Copyright © 2019 Katerina Nikolaenko. All rights reserved.
//

import UIKit

extension UIView {
    
    func addSubviewWithConstraints(_ view: UIView, constants: (top: CGFloat, bottom: CGFloat, left: CGFloat, right: CGFloat)) {
        
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        let topConstraint = NSLayoutConstraint(item: view, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1.0, constant: constants.top)
        let bottomConstraint = NSLayoutConstraint(item: view, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1.0, constant: constants.bottom)
        let leftConstraint = NSLayoutConstraint(item: view, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1.0, constant: constants.left)
        let rightConstraint = NSLayoutConstraint(item: view, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1.0, constant: constants.right)
        
        self.addConstraints([topConstraint, bottomConstraint, leftConstraint, rightConstraint])
    }
}
