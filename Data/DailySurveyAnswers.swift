//
//  DailySurveyAnswers.swift
//  SurveyDemo
//
//  Created by Sumit on 9/15/23.
//

import Foundation

class DailySurveyAnswers: ObservableObject {
    
    @Published var unableToControlImportantThings : Int?
    
    @Published var oftenFeltConfidentHandlePersonalProblems : Int?
    
    @Published var feelThingsAreGoingMyWay : Int?

    @Published var feelDifficultiesPilingCannotOvercome : Int?

    @Published var stressYourHealth : Int?

    @Published var stressYourFinances : Int?

    @Published var stressFamilySocialRelationships : Int?

    @Published var stressYourWord : Int?
    
    func toDictionary() -> [String: Any] {
            var dictionary: [String: Any] = [:]
            
            dictionary["unableToControlImportantThings"] = unableToControlImportantThings
            dictionary["oftenFeltConfidentHandlePersonalProblems"] = oftenFeltConfidentHandlePersonalProblems
            dictionary["feelThingsAreGoingMyWay"] = feelThingsAreGoingMyWay
            dictionary["feelDifficultiesPilingCannotOvercome"] = feelDifficultiesPilingCannotOvercome
            dictionary["stressYourHealth"] = stressYourHealth
            dictionary["stressYourFinances"] = stressYourFinances
            dictionary["stressFamilySocialRelationships"] = stressFamilySocialRelationships
            dictionary["stressYourWord"] = stressYourWord

        
            return dictionary
        }
}
