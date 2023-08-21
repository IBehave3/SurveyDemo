//
//  File.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 7/11/23.
//

import Foundation
import SwiftUI
import Combine


func postData(username:String, body:[String:Any]){
    
    @EnvironmentObject var globalVariable : globalVariables
    // make dataStructureId and userId variables that can be changed
    // appTest userId amde july 12 2023 to test some different users/ dummy user examples
    
    guard let url = URL(string: "https://www.acp-research.com:443/api/push-data?dataStructureId=surveyApp&userId=\(username)" ) else{
        return
    }
    
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    //var body2 = globalVariable.dataCollected
    //let body: [String: Any] = [
      //  "timestamp" : 103,
        //"message" : "appTest username from app",
        //"surveyResponse" : "yes to answer: test4 7/12/23",
        //"surveyResponse2" : "no to answer: test5 7/12/23"
    //]
    request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: .fragmentsAllowed)
    
    let task = URLSession.shared.dataTask(with: request) { data, response , error in
        
        guard let response = response as? HTTPURLResponse else {
                    print("Invalid response")
                    return
                }
        
        print("Status Code: \(response.statusCode)")
        // no response from api when making post request
        /*
        guard let data = data, error == nil else{
             print("something went wrong")
            return
        }
        //no response from api
        do {
            let response = try JSONDecoder().decode(Response.self, from: data)
            print("Success   \(response)")
        }
        catch{
            print(String(describing: error))
        }
         */

    }
    task.resume()
}
// no response from api
/*
 struct Response: Codable{
    let timestamp : Int
    let message : String
    let surveyResponse : String
    let surveyResonse2 : String
 }
 */
