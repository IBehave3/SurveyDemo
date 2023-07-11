//
//  DemoRequest.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 6/28/23.

// This is a Demo for Get Data API call. Prints Json data to terminal when called.

import Foundation
import Combine


func getData (){
    
    let url = "https://www.acp-research.com:443/api/push-data?dataStructureId=testDevice&userId=noah-lewis"
            
    getData(from: url)
}

func getData (from url:String){
    
    
    URLSession.shared.dataTask(with: URL(string: url)! ) { (data, response, error) in
        
        guard let data = data, error == nil else{
            print("something went wrong")
            return
        }
       
        var results: [serverMessage]?
        do{
            results = try JSONDecoder().decode([serverMessage].self, from: data )
            //below implementation also prints response but in different(prettier) format and codable structs arent needed
            //let results = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
            //print(results)
        }
        catch{
            print(String(describing: error))
        }
        
        guard let json = results else{
            return
        }
        
        print(json)
        
    }.resume()
     
     
}


struct serverMessage: Codable{
    let sessionId : String
    let dataStructureId : String
    let data : data
    let id : String
}


struct data : Codable{
    let timestamp : Int?
    let message : String?
    let surveyResponse : String?
}




