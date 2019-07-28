//
//  BaseTableViewController.swift
//  TumblrList
//
//  Created by Katerina Nikolaenko on 7/28/19.
//  Copyright © 2019 Katerina Nikolaenko. All rights reserved.
//

import UIKit

class BaseTableViewController: BaseViewController {
    
    @IBOutlet private(set) weak var tableView: UITableView!
    
    class var tableViewStyle: UITableView.Style {
        return .grouped
    }
    
    //MARK: - Life Cycle
    override func loadView() {
        
        super.loadView()
        
        self.loadTableViewIfNeeded()
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.configure()
    }
    
    //MARK: - Private
    private func configure() {
        
        self.configureTableView()
    }
    
    private func configureTableView() {
        
        self.tableView.separatorStyle = .none
        self.tableView.keyboardDismissMode = .onDrag
    }
    
}

extension BaseTableViewController {
    
    private func loadTableViewIfNeeded() {
        
        guard type(of: self).nibFile == nil, self.tableView == nil else {
            return
        }
        
        let tableView = UITableView(frame: self.view.bounds, style: type(of: self).tableViewStyle)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubviewWithConstraints(tableView, constants: (top: 0, bottom: 0, left: 0, right: 0))
        
        self.tableView = tableView
    }
}
