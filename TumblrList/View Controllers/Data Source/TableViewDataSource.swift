//
//  TableViewDataSource.swift
//  TumblrList
//
//  Created by Katerina Nikolaenko on 7/28/19.
//  Copyright © 2019 Katerina Nikolaenko. All rights reserved.
//

import UIKit

class TableViewDataSource<T>: NSObject, UITableViewDataSource {
    
    private(set) var items: [T] = []
    
    func set(items: [T]) {
        
        self.items = items
    }
    
    func item(at index: Int) -> T? {
        
        return items[index]
    }
    
    // MARK: - Lifecycle
    override init() {
        
        super.init()
    }
    
    //MARK: Main
    func cellForItem(_ item: T, at indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell {
        
        return UITableViewCell()
    }
    
    // MARK: - UITableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let item = self.item(at: indexPath.row) else {
            return UITableViewCell()
        }
        
        return self.cellForItem(item, at: indexPath, in: tableView)
    }
    
    func registerRequiredCells(for tableView: UITableView) {}
}
