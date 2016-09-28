//
//  Coordinate.swift
//  PeopleAndPizza
//
//  Created by Michelle Staton on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Coordinate {
    var latitude: Double
    var longitude: Double
    
    var isInNorthernHemisphere: Bool {
        if latitude >= 0 {
            return true
        } else {
            return false
        }
    }
    
    var isInSouthernHemisphere: Bool {
        if latitude <= 0 {
            return true
        } else {
            return false
        }
    }
    
    var isInWesternHemisphere: Bool {
        if longitude >= 0 {
            return true
        } else {
            return false
        }
    }
    
    var isInEasternHemisphere: Bool {
        if longitude <= 0 {
            return true
        } else {
            return false
        }
    }
    
    init(latitude: Double, longitude: Double) {
        
        self.latitude = latitude
        self.longitude = longitude
    }
    
    
    func distanceTo(coordinate: Coordinate) -> Int {
        let distance = acos(sin(coordinate.latitude.radians) * sin(latitude.radians) + cos(coordinate.latitude.radians) * cos(latitude.radians) * cos(coordinate.longitude.radians-longitude.radians)) * 6371000 / 1000
        
        return Int(distance)
    }
    
    
}


extension Double {
    var radians: Double {
        return self * M_PI / 180
    }
}




