//
//  DemoRequest.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 6/28/23.
//

import Foundation
import Combine


func postContainer (){
    
    let url = "https://www.acp-research.com:443/api/manage/container?dbId=exampleDatabase&containerId=id_map"
            
    getData(from: url)
}

func getData (from url:String){
    
    
    URLSession.shared.dataTask(with: URL(string: url)! ) { (data, response, error) in
        
        guard let data = data, error == nil else{
            print("something went wrong")
            return
        }
       
        var results: serverMessage?
        do{
            results = try JSONDecoder().decode(serverMessage.self, from: data )
        }
        catch{
            print(String(describing: error))
        }
        
        guard let json = results else{
            return
        }
        
        print(json.id)
        print(json.userID)
        print(json.sessionID)
        
    }.resume()
     
     
}


struct serverMessage: Codable{
    let id : String
    let userID : String
    let sessionID : String
}
