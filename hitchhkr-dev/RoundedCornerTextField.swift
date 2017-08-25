//
//  RoundedCornerTextField.swift
//  hitchhkr-dev
//
//  Created by Ben Makusha on 8/25/17.
//  Copyright © 2017 Ben Makusha. All rights reserved.
//

import UIKit

class RoundedCornerTextField: UITextField {
    
    var textRectOffset: CGFloat = 20
    
    override func awakeFromNib() {
        setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = self.frame.height / 2
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: (0 + textRectOffset), y: (0 + textRectOffset / 2), width: (self.frame.width - 20), height: (self.frame.height + textRectOffset))
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: (0 + textRectOffset), y: (0 + textRectOffset / 2), width: (self.frame.width - 20), height: (self.frame.height + textRectOffset))
    }

}
