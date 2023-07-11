//
//  File.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 7/11/23.
//

import Foundation
import Combine


func postData(){
    // make dataStructureId and userId variables that can be changed 
    guard let url = URL(string: "https://www.acp-research.com:443/api/push-data?dataStructureId=testDevice&userId=noah-lewis" ) else{
        return
    }
    
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    let body: [String: AnyHashable] = [
        "timestamp" : 104,
        "message" : "Fourth Post From App",
        "surveyResponse" : "test7 7/11/23",
        "surveyResponse2" : "test8 7/11/23"
    ]
    request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: .fragmentsAllowed)
    
    let task = URLSession.shared.dataTask(with: request) { data, _ , error in
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
