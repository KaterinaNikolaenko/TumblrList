//
//  ImageListViewController.swift
//  TumblrList
//
//  Created by Katerina Nikolaenko on 7/28/19.
//  Copyright © 2019 Katerina Nikolaenko. All rights reserved.
//

import UIKit

protocol ImageListViewProtocol: class {
    
    func display(images: [TumblrImage])
    func displayFailure()
}

class ImageListViewController: BaseTableViewController {
    
    @IBOutlet private(set) weak var searchView: SearchView!

    private var interactor: ImageListInteractorProtocol!
    
    private lazy var dataSource: ImageListDataSource = {
        let dataSource = ImageListDataSource()
        dataSource.imageListVC = self
        return dataSource
    }()
    
    private var images: [TumblrImage] = []
    
    //MARK: Life Cycle
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.configure()
        
        self.interactor.getData(searchText: "")
    }
    
    //MARK: Configuration
    private func configure() {
        
        self.configureSearchView()
        self.configureTableView()
        self.configureNavigationBar()
    }
    
    private func configureSearchView() {
        
        let searchView = SearchView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 50))
        self.view.addSubview(searchView)
    }
    
    private func configureTableView() {
        
        self.tableView.backgroundColor = UIColor.white
        self.tableView.dataSource = self.dataSource
        self.tableView.rowHeight = self.view.frame.height / 2 // FIX ME
        self.tableView.contentInset = UIEdgeInsets(top: 50, left: 0, bottom: 0, right: 0)
        
        self.dataSource.registerRequiredCells(for: self.tableView)
    }
    
    private func configureNavigationBar() {
        
        self.title = "Tumblr Images"
    }
}

//MARK: - Public
extension ImageListViewController {
    
    func set(interactor: ImageListInteractorProtocol) {
        
        self.interactor = interactor
    }
}

//MARK: - View Protocol
extension ImageListViewController: ImageListViewProtocol {
    
    func display(images: [TumblrImage]) {
        
        self.images = images
        self.dataSource.set(items: self.images)
        self.tableView.reloadData()
    }
    
    func displayFailure() {
        
    }
}

//MARK: - Search Protocol
extension ImageListViewController: SearchProtocol {
    
    func search(text: String) {
        
    }
}
