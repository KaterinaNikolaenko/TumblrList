//
//  ImageListPresenter.swift
//  TumblrList
//
//  Created by Katerina Nikolaenko on 7/28/19.
//  Copyright © 2019 Katerina Nikolaenko. All rights reserved.
//

import Foundation

protocol ImageListPresenterProtocol: class {
    
    func present(images: [TumblrImage])
    func presentFailure()
}

class ImageListPresenter {
    
    private weak var view: ImageListViewProtocol?
}

//MARK: - Accessors
extension ImageListPresenter {
    
    func set(view: ImageListViewProtocol) {
        
        self.view = view
    }
}

//MARK: - Presenter Protocol
extension ImageListPresenter: ImageListPresenterProtocol {
    
    func presentFailure() {
        
    }
    
    func present(images: [TumblrImage]) {
        
        DispatchQueue.main.async {
            self.view?.display(images: images)
        }
    }
}
