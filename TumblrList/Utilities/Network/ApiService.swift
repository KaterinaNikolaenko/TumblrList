//
//  ApiService.swift
//  TumblrList
//
//  Created by Katerina Nikolaenko on 7/28/19.
//  Copyright © 2019 Katerina Nikolaenko. All rights reserved.
//

import Foundation

class ApiService {
    
    let networkManager = NetworkManager.shared
    
    func getImages(searchText: String, completion: @escaping (Result<DataResponse>) -> Void) {
        
        let request = RequestModel(method: .get, endpoint: Api.appBaseURL + "tagged?tag=" + searchText + "&api_key=" + Api.apiKey)
        
        NetworkManager.shared.dataRequest(with: request, objectType: DataResponse.self) { (result: Result) in
            switch result {
            case .success(let object):
                completion(Result.success(object))
            case .failure(let error):
                completion(Result.failure(error))
            }
        }
    }
}
