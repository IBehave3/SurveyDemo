//
//  SignupVariables.swift
//  SurveyDemo
//
//  Created by Sumit on 9/14/23.
//

import Foundation
import SwiftUI

class SignupVariables : ObservableObject {
    
    @Published var demographic : [String:Any] = [:]
    
    @Published var generalStress : [String:Any] = [:]
    
    @Published var resilience : [String:Any] = [:]
    
    @Published var credentials : [String: Any] = [:]

    func toDictionary() -> [String: Any] {
            var dictionary: [String: Any] = [:]
            
            dictionary["demographic"] = demographic
            dictionary["generalStress"] = generalStress
            dictionary["resilience"] = resilience
            dictionary["credentials"] = credentials
            
            return dictionary
        }
}
