//
//  NetworkModels.swift
//  TumblrList
//
//  Created by Katerina Nikolaenko on 7/28/19.
//  Copyright © 2019 Katerina Nikolaenko. All rights reserved.
//

import Foundation

enum Api {
    static let appBaseURL = "http://api.tumblr.com/v2/" 
    static let apiKey = "CcEqqSrYdQ5qTHFWssSMof4tPZ89sfx6AXYNQ4eoXHMgPJE03U"
}

enum HTTPMethod : String {
    case get     = "GET"
    case post    = "POST"
    case put     = "PUT"
    case patch   = "PATCH"
    case delete  = "DELETE"
}

struct RequestModel {
    
    let methodType: HTTPMethod
    let endpoint: String
    
    init(method: HTTPMethod = .get, endpoint: String) {
        self.methodType = method
        self.endpoint = endpoint
    }
}
