//
//  SearchView.swift
//  TumblrList
//
//  Created by Katerina Nikolaenko on 7/28/19.
//  Copyright © 2019 Katerina Nikolaenko. All rights reserved.
//

import UIKit

protocol SearchProtocol: class {
    func search(text: String)
}

class SearchView: UIView, XibLoadable {
    
    @IBOutlet weak var textField: UITextField!
    
    var contentView: UIView?
    weak var delegate: SearchProtocol?
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        setupXib(bounds)
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        setupXib(bounds)
    }
}

 //MARK: - Actions
extension SearchView {
    
    @IBAction private func searchButtonAction(_ sender: Any) {
        
        self.delegate?.search(text: self.textField.text ?? "")
    }
}
