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
    
    @Published var generalStress : [String:Int] = [:]
    
    @Published var resilience : [String:Any] = [:]
    
    @Published var username : String = ""
    
    @Published var password : String = ""

    func toDictionary() -> [String: Any] {
            var dictionary: [String: Any] = [:]
            
            dictionary["demographic"] = demographic
            dictionary["stress"] = generalStress
            dictionary["resilience"] = resilience
            dictionary["username"] = username
            dictionary["password"] = password
        
            return dictionary
        }
}
