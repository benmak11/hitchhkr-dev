//
//  RoundMapView.swift
//  hitchhkr-dev
//
//  Created by Ben Makusha on 9/7/17.
//  Copyright © 2017 Ben Makusha. All rights reserved.
//

import UIKit
import MapKit

class RoundMapView: MKMapView {
    
    override func awakeFromNib() {
        setupView()
    }

    func setupView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 10.0
        
    }

}
