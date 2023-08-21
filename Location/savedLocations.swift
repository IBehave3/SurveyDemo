//
//  savedLocations.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 8/11/23.
//

import Foundation

struct savedLocations  {
    
    var id = UUID().uuidString
    
    var name = ""
    var address = ""
    var longitude = 0.0
    var latitude = 0.0
    
     var dictionary: [String: Any] {
         return ["name": name, "address": address, "longitude": longitude, "latitude": latitude, "id": id]
    }
}
