//
//  DailySurveyAnswers.swift
//  SurveyDemo
//
//  Created by Sumit on 9/15/23.
//

import Foundation

class DailySurveyAnswers: ObservableObject {
    
    @Published var unableToControlImportantThings : String = ""
    
    @Published var oftenFeltConfidentHandlePersonalProblems : String = ""
    
    @Published var feelThingsAreGoingMyWay : String = ""

    @Published var feelDifficultiesPilingCannotOvercome : String = ""

    @Published var stressYourHealth : String = ""

    @Published var stressYourFinances : String = ""

    @Published var stressFamilySocialRelationships : String = ""

    @Published var stressYourWord : String = ""
}
