//
//  DemoRequest.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 6/28/23.

// This is a Demo for Get Data API call. Prints Json data to terminal when called.

import Foundation
import Combine


func getData (username: String){
    // appTest userId used as dummy user
    let url = "https://www.acp-research.com:443/api/push-data?dataStructureId=surveyApp&userId=\(username)"
            
    getData(from: url)
}

func getData (from url: String){
    
    
    URLSession.shared.dataTask(with: URL(string: url)! ) { (data, response, error) in
        
        guard let data = data, error == nil else{
            print("something went wrong")
            return
        }
       
        var results: [serverMessage]?
        do{
            //results = try JSONDecoder().decode([serverMessage].self, from: data )
            //below implementation also prints response but in different(prettier) format and codable structs arent needed
            let results = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
            print(results)
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

func fetchGETRequest(apiURL: String, token:String, completion: @escaping (Result<Data, Error>) -> Void) {
    let session = URLSession.shared

    guard let url = URL(string: baseURL + apiURL) else {
        completion(.failure(NSError(domain: "Invalid URL", code: 0, userInfo: nil)))
        return
    }
    
    var request = URLRequest(url: url)
    request.httpMethod = "GET"
    request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")

    let task = session.dataTask(with: request) { (data, response, error) in
        if let error = error {
            completion(.failure(error))
            return
        }

        guard let httpResponse = response as? HTTPURLResponse else {
            completion(.failure(NSError(domain: "Invalid HTTP response", code: -1, userInfo: nil)))
            return
        }

        if httpResponse.statusCode == 200 {
            if let data = data {
                completion(.success(data))
            } else {
                completion(.failure(NSError(domain: "No data received", code: -2, userInfo: nil)))
            }
        } else {
            completion(.failure(NSError(domain: "HTTP status code \(httpResponse.statusCode)", code: httpResponse.statusCode, userInfo: nil)))
        }
    }

    task.resume()
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
    let surveyResponse2 : String?
}




