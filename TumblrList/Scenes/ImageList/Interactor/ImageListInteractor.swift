//
//  ImageListInteractor.swift
//  TumblrList
//
//  Created by Katerina Nikolaenko on 7/28/19.
//  Copyright © 2019 Katerina Nikolaenko. All rights reserved.
//

import Foundation

protocol ImageListInteractorProtocol: class {
    
    func getData(searchText: String)
}

class ImageListInteractor {
    
    private var presenter: ImageListPresenterProtocol!
    private let apiService = ApiService()
}

//MARK: - Accessors
extension ImageListInteractor {
    
    func set(presenter: ImageListPresenterProtocol) {
        
        self.presenter = presenter
    }
}

//MARK: - Interactor Protocol
extension ImageListInteractor: ImageListInteractorProtocol {
    
    func getData(searchText: String) {
        
        apiService.getImages(searchText: /*searchText*/"lol") { (result) in
            switch result {
            case .success(let object):
                break
            case .failure(let error):
                break
            }
        }
        let images: [TumblrImage] = [] // FIX ME: NetworkManager!!!
        self.presenter.present(images: images)
    }
}
