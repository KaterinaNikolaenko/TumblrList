//
//  UITableView.swift
//  TumblrList
//
//  Created by Katerina Nikolaenko on 7/28/19.
//  Copyright © 2019 Katerina Nikolaenko. All rights reserved.
//

import UIKit

extension UITableView {
    
    func dequeueCell<T: UITableViewCell & ReuseProtocol>(_ cellClass: T.Type, selectionStyle: UITableViewCell.SelectionStyle) -> T {
        
        let cell = self.dequeueReusableCell(withIdentifier: cellClass.reuseIdentifier) as! T
        cell.selectionStyle = selectionStyle
        
        return cell
    }
}
