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
        
        self.apiService.getImages(searchText: searchText) { [weak self] (result) in
            guard let strongSelf = self else {
                return
            }
            switch result {
            case .success(let object):
                strongSelf.presenter.present(response: object.response)
            case .failure(let error):
                strongSelf.presenter.presentFailure(error)
            }
        }
    }
}
