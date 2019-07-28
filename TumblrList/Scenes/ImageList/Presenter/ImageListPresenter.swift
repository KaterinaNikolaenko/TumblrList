//
//  ImageListPresenter.swift
//  TumblrList
//
//  Created by Katerina Nikolaenko on 7/28/19.
//  Copyright © 2019 Katerina Nikolaenko. All rights reserved.
//

import Foundation

protocol ImageListPresenterProtocol: class {
    
    func present(response: [Response])
    func presentFailure(_ error: AppError)
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
    
    func presentFailure(_ error: AppError) {
        
        DispatchQueue.main.async {
            self.view?.displayFailure(error)
        }
    }
    
    func present(response: [Response]) {
        
        var images: [TumblrImage] = []
        for item in response {
            if item.photos.count > 0 {
                images.append(item.photos.first!.original_size)
            }
        }
        
        DispatchQueue.main.async {
            self.view?.display(images: images)
        }
    }
}
