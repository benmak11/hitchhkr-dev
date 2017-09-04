//
//  PassengerAnnotation.swift
//  hitchhkr-dev
//
//  Created by Ben Makusha on 9/4/17.
//  Copyright © 2017 Ben Makusha. All rights reserved.
//

import Foundation
import MapKit
import Firebase

class PassengerAnnotation: NSObject, MKAnnotation {
    dynamic var coordinate: CLLocationCoordinate2D
    var key: String
    
    init(coordinate: CLLocationCoordinate2D, key: String) {
        self.coordinate = coordinate
        self.key = key
        super.init()
    }
}
