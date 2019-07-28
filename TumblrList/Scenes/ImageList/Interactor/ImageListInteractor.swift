//
//  ImageListInteractor.swift
//  TumblrList
//
//  Created by Katerina Nikolaenko on 7/28/19.
//  Copyright © 2019 Katerina Nikolaenko. All rights reserved.
//

import Foundation

protocol ImageListInteractorProtocol: class {
    
    func getData()
}

class ImageListInteractor {
    
    private var presenter: ImageListPresenterProtocol!
}

//MARK: - Accessors
extension ImageListInteractor {
    
    func set(presenter: ImageListPresenterProtocol) {
        
        self.presenter = presenter
    }
}

//MARK: - Interactor Protocol
extension ImageListInteractor: ImageListInteractorProtocol {
    
    func getData() {
        
        let images: [TumblrImage] = [] // FIX ME: NetworkManager!!!
        self.presenter.present(images: images)
    }
}
