//
//  ImageDetailViewController.swift
//  TumblrList
//
//  Created by Katerina Nikolaenko on 7/28/19.
//  Copyright © 2019 Katerina Nikolaenko. All rights reserved.
//

import UIKit

class ImageDetailViewController: BaseViewController {

    //UI
    @IBOutlet weak var mainImageView: CustomUIImageView!
    
    private var tumblrImage: TumblrImage!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.configure()
    }
    
    //MARK: Configuration
    private func configure() {
        
        self.mainImageView.imageFromServerURL(urlString: tumblrImage.url)
    }
}

//MARK: - Public
extension ImageDetailViewController {
    
    func set(tumblrImage: TumblrImage) {
        
        self.tumblrImage = tumblrImage
    }
}
