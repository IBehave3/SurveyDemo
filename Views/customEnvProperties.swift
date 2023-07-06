//
//  customEnvProperties.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 7/3/23.
//

import Foundation
import SwiftUI

struct rootPresentationKey: EnvironmentKey {
    
    static let defaultValue: Binding<Bool> = .constant(false)
}

extension EnvironmentValues {
    
    var rootPresentation: Binding<Bool>{
        get{
            self[rootPresentationKey.self]
        }
        set{
            self[rootPresentationKey.self] = newValue
        }
    }
}
