//
//  getLoginUserRequest.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 7/12/23.
//

import Foundation
import Combine


func getLogin (username: String){
    // appTest userId used as dummy user
    let url = "https://www.acp-research.com:443/api/auth/login-user?userId=\(username)"
            
    getData(from: url)
}

func getLogin (from url: String){
    
    
    URLSession.shared.dataTask(with: URL(string: url)! ) { (data, response, error) in
        
        guard let data = data, error == nil else{
            print("something went wrong")
            return
        }
       
        //var results: [serverMessage]?
        do{
            //results = try JSONDecoder().decode([serverMessage].self, from: data )
            //below implementation also prints response but in different(prettier) format and codable structs arent needed
            let results = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
            print("Success \(results)")
        }
        catch{
            print(String(describing: error))
        }
        
        //guard let json = results else{
          //  return
        //}
        
        //print(json)
        
    }.resume()
     
     
}
