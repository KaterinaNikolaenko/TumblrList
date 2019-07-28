//
//  ImageTableViewCell.swift
//  TumblrList
//
//  Created by Katerina Nikolaenko on 7/28/19.
//  Copyright © 2019 Katerina Nikolaenko. All rights reserved.
//

import UIKit

class ImageTableViewCell: BaseTableViewCell {
    
    //UI
    @IBOutlet private weak var mainImageView: CustomUIImageView!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
    }
}

//MARK: - Public
extension ImageTableViewCell {
    
    func set(mainImage: String) {
        
        self.mainImageView.imageFromServerURL(urlString: mainImage)
    }
}
