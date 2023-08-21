//
//  createUserRequest.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 7/12/23.
//

import Foundation
import Combine


func createUser(username: String){
    // make dataStructureId and userId variables that can be changed
    // appTest userId amde july 12 2023 to test some different users/ dummy user examples
    guard let url = URL(string: "https://www.acp-research.com:443/api/auth/create-user?userId=\(username)" ) else{
        return
    }
    
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    let body: [String: Any] = [
        "dataStructureDeviceMapping": [
            [
                "dataStructureId": "surveyApp"
            ]
        ]
    ]
    request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: .fragmentsAllowed)
    
    let task = URLSession.shared.dataTask(with: request) { data, response , error in
        
        guard let response = response as? HTTPURLResponse else {
                    print("Invalid response")
                    return
                }
        
        let code = response.statusCode
        
        if( code == 200){
            print("Created : \(code)")
        }else{
            print("Conflict : \(code)")
        }
        /*
        guard let data = data, error == nil else{
             print("something went wrong")
            return
        }
        do {
            let response = try JSONSerialization.jsonObject(with: data,options: .allowFragments)
            print("Success   \(response)")
        }
        catch{
            print(String(describing: error))
        }
         */
        
    }
    task.resume()
}


