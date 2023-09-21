//
//  HourlySurveyAnswers.swift
//  SurveyDemo
//
//  Created by Sumit Dhungana on 9/20/23.
//

import Foundation

class HourlySurveyAnswers {
    
     var location : String?
    
     var currentStress : Int?
    
    func toDictionary() -> [String: Any] {
            var dictionary: [String: Any] = [:]
            
            dictionary["location"] = location
            dictionary["currentStress"] = currentStress
        
            return dictionary
        }
}
