//
//  UIViewExt.swift
//  hitchhkr-dev
//
//  Created by Ben Makusha on 8/25/17.
//  Copyright © 2017 Ben Makusha. All rights reserved.
//

import UIKit

extension UIView {
    
    func fadeTo(alphaValue: CGFloat, withDuration duration: TimeInterval) {
        UIView.animate(withDuration: duration) {
            self.alpha = alphaValue
        }
    }
}
