//
//  ViewControllersFactory.swift
//  TumblrList
//
//  Created by Katerina Nikolaenko on 7/28/19.
//  Copyright © 2019 Katerina Nikolaenko. All rights reserved.
//

import Foundation

final class ViewControllersFactory {
    
    //MARK: Init
    init() {}
}

extension ViewControllersFactory {
    
    static func getListController() -> BaseNavigationController {
        
        let viewController = ImageListViewController()
        let presenter = ImageListPresenter()
        let interactor = ImageListInteractor()
        
        viewController.set(interactor: interactor)
        interactor.set(presenter: presenter)
        presenter.set(view: viewController)
        
        let navig = BaseNavigationController(rootViewController: viewController)
        
        return navig
    }
    
    static func details(_ tumblrImage: TumblrImage) -> ImageDetailViewController {
        
        let viewController = ImageDetailViewController()
        viewController.set(tumblrImage: tumblrImage)
        
        return viewController
    }
}
