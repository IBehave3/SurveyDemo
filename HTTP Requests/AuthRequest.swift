//
//  AuthRequest.swift
//  SurveyDemo
//
//  Created by admin on 9/8/23.
//

import Foundation


func signupUser(data: Any, completionHandler: @escaping (Result<Data, Error>) -> Void) {
    do {
        // Convert the dictionary to JSON data
        let jsonData = try JSONSerialization.data(withJSONObject: data, options: .prettyPrinted)
        
        // Convert the JSON data to a string
        if let jsonString = String(data: jsonData, encoding: .utf8) {
            sendPostRequestWithJSON(jsonString: jsonString, urlString: "/api/auth-init/create-user") {
                result in switch result {
                    case .success(let data):
                        if let responseString = String(data: data, encoding: .utf8) {
                            print("Response: \(responseString)")
                            completionHandler(.success(data))
                        } else {
                            completionHandler(.failure(NSError(domain: "Unable to convert response data to string.", code: 0, userInfo: nil)))
                        }
                    case .failure(let error):
                        completionHandler(.failure(error))
                    }
            }
        } else {
            print("Unable to convert JSON data to string.")
        }
    } catch {
        print("Error encoding credentials to JSON: \(error)")
    }
    
}

func loginUser(data: Any, completionHandler: @escaping (Result<Data, Error>) -> Void) {
    do {
        // Convert the dictionary to JSON data
        let jsonData = try JSONSerialization.data(withJSONObject: data, options: .prettyPrinted)
        
        // Convert the JSON data to a string
        if let jsonString = String(data: jsonData, encoding: .utf8) {
            sendPostRequestWithJSON(jsonString: jsonString, urlString: "/api/auth-init/login-user") {
                result in switch result {
                    case .success(let data):
                        if let responseString = String(data: data, encoding: .utf8) {
                            completionHandler(.success(data))
                        } else {
                            completionHandler(.failure(NSError(domain: "Unable to convert response data to string.", code: 0, userInfo: nil)))
                        }
                    case .failure(let error):
                        completionHandler(.failure(error))
                    }
            }
        } else {
            print("Unable to convert JSON data to string.")
        }
    } catch {
        print("Error encoding credentials to JSON: \(error)")
    }
    
}

