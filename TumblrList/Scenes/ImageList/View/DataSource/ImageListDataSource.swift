//
//  ImageListDataSource.swift
//  TumblrList
//
//  Created by Katerina Nikolaenko on 7/28/19.
//  Copyright © 2019 Katerina Nikolaenko. All rights reserved.
//

import UIKit

class ImageListDataSource: TableViewDataSource<TumblrImage> {
    
    weak var imageListVC: ImageListViewController?
    
    override func cellForItem(_ item: TumblrImage, at indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell {
        
        return self.imageCell(item, tableView: tableView, at: indexPath)
    }
    
    private func imageCell(_ item: TumblrImage, tableView: UITableView, at indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueCell(ImageTableViewCell.self, selectionStyle: .none)
        cell.set(mainImage: item.url)
        
        return cell
    }
    
    override func registerRequiredCells(for tableView: UITableView) {
        
        tableView.registerCell(ImageTableViewCell.self)
    }
}

