//
//  UIImageView.swift
//  TumblrList
//
//  Created by Katerina Nikolaenko on 7/28/19.
//  Copyright © 2019 Katerina Nikolaenko. All rights reserved.
//

import UIKit

class CustomUIImageView: UIImageView {
    
    let imageCasche = NSCache<AnyObject, AnyObject>()
    var imageUrlString: String?
    
    func imageFromServerURL(urlString: String) {
        
        imageUrlString = urlString
        let url = NSURL(string: urlString)! as URL
        self.image = nil
        
        if let imageFromCasche = imageCasche.object(forKey: urlString as AnyObject) as? UIImage {
            self.image = imageFromCasche
            return
        }
        
        URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) -> Void in
            
            if error != nil {
                return
            }
            
            DispatchQueue.main.async(execute: { () -> Void in
                let image = UIImage(data: data!)
                if self.imageUrlString == urlString {
                    self.image = image
                }
                if image != nil {
                    self.imageCasche.setObject(image!, forKey: urlString as AnyObject)
                }
            })
            
        }).resume()
    }
}

