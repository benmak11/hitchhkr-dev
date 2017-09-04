//
//  DriverAnnotation.swift
//  hitchhkr-dev
//
//  Created by Ben Makusha on 9/4/17.
//  Copyright © 2017 Ben Makusha. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class DriverAnnotation: NSObject, MKAnnotation {
    
    // This variable can be used with Obejective-C
    dynamic var coordinate: CLLocationCoordinate2D
    var key: String
    
    init(coordinate: CLLocationCoordinate2D, withKey key: String) {
        self.coordinate = coordinate
        self.key = key
        super.init()
    }
    
    func update(annotationPosition annotation: DriverAnnotation, withCoordinate coordinate: CLLocationCoordinate2D) {
        var location = self.coordinate
        location.latitude = coordinate.latitude
        location.longitude = coordinate.longitude
        UIView.animate(withDuration: 0.2) { 
            self.coordinate = location
        }
    }
}
