//
//  globalVariables.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 7/13/23.
//

import Foundation
import SwiftUI

class globalVariables : ObservableObject {
    
    @Published var userNameId : String = ""
    
    @Published var dataCollected : [String:Any] = [:]
    
    @Published var demographicData : [String:Any] = [:]
    
    @Published var generalStress : [String:Any] = [:]
    
}

