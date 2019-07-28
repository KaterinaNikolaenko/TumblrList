//
//  TumblrImage.swift
//  TumblrList
//
//  Created by Katerina Nikolaenko on 7/28/19.
//  Copyright © 2019 Katerina Nikolaenko. All rights reserved.
//

import Foundation

struct DataResponse: Codable {
    private (set) var meta: Meta
    private (set) var response: [Response]
}

struct Meta: Codable {
    private (set) var msg: String
    private (set) var status: Int
}

struct Response: Codable {
    private (set) var id: Double
    private (set) var photos: [Photo]?
}

struct Photo: Codable {
    private (set) var original_size: TumblrImage
}

struct TumblrImage: Codable {
    private (set) var url: String
    private (set) var width: Int
    private (set) var height: Int
}
