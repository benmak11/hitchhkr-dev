//
//  DataService.swift
//  hitchhkr-dev
//
//  Created by Ben Makusha on 8/29/17.
//  Copyright © 2017 Ben Makusha. All rights reserved.
//

import Foundation
import Firebase

let DB_BASE = Database.database().reference()

class DataService {
    static let instance = DataService()
    
    private var _REF_BASE = DB_BASE
    private var _REF_USERS = DB_BASE.child("users")
    private var _REF_DRIVERS = DB_BASE.child("drivers")
    private var _REF_TRIPS = DB_BASE.child("trips")
    
    var REF_BASE: DatabaseReference {
        return _REF_BASE
    }
    
    var REF_USERS: DatabaseReference {
        return _REF_USERS
    }
    
    var REF_DRIVERS: DatabaseReference {
        return _REF_DRIVERS
    }
    
    var REF_TRIPS: DatabaseReference {
        return _REF_TRIPS
    }
    
    // Create Firebase users
    func createFirebaseDBUser(uid: String, userData: Dictionary<String, Any>, isDriver: Bool) {
        if isDriver {
            REF_DRIVERS.child(uid).updateChildValues(userData)
        } else {
            REF_USERS.child(uid).updateChildValues(userData)
        }
    }
    
    func driverIsAvailable(key: String, handler: @escaping (_ status: Bool?) -> Void) {
        DataService.instance.REF_DRIVERS.observeSingleEvent(of: .value, with: { (snapshot) in
            if let driverSnapshot = snapshot.children.allObjects as? [DataSnapshot] {
                for driver in driverSnapshot {
                    if driver.key == key {
                        if (driver.childSnapshot(forPath: "isPickupModeEnabled").value as? Bool)! {
                            if (driver.childSnapshot(forPath: "driverIsOnTrip").value as? Bool)! {
                                handler(false)
                            } else {
                                handler(true)
                            }
                        }
                    }
                }
            }
        })
    }
}
