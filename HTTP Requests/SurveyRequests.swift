//
//  SurveyRequests.swift
//  SurveyDemo
//
//  Created by Sumit Dhungana on 9/17/23.
//

import Foundation

func submitDailySurvey(data: DailySurveyAnswers, completionHandler: @escaping (Result<Data, Error>) -> Void) {
    do {
        // Convert the dictionary to JSON data
        let jsonData = try JSONSerialization.data(withJSONObject: data.toDictionary(), options: .prettyPrinted)
        
        // Convert the JSON data to a string
        if let jsonString = String(data: jsonData, encoding: .utf8) {
            sendPostRequestWithJSON(jsonString: jsonString, urlString: "/api/survey/daily") {
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

func submitHourlySurvey(data: HourlySurveyAnswers, completionHandler: @escaping (Result<Data, Error>) -> Void) {
    do {
        // Convert the dictionary to JSON data
        let jsonData = try JSONSerialization.data(withJSONObject: data.toDictionary(), options: .prettyPrinted)
        
        // Convert the JSON data to a string
        if let jsonString = String(data: jsonData, encoding: .utf8) {
            sendPostRequestWithJSON(jsonString: jsonString, urlString: "/api/survey/hourly") {
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

func submitLocationData(data: [String: Any], completionHandler: @escaping (Result<Data, Error>) -> Void) {
    do {
        // Convert the dictionary to JSON data
        let jsonData = try JSONSerialization.data(withJSONObject: data, options: .prettyPrinted)
        
        // Convert the JSON data to a string
        if let jsonString = String(data: jsonData, encoding: .utf8) {
            sendPostRequestWithJSON(jsonString: jsonString, urlString: "/api/location") {
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

func updateLocation(data: [String: Any], completionHandler: @escaping (Result<Data, Error>) -> Void) {
    do {
        // Convert the dictionary to JSON data
        let jsonData = try JSONSerialization.data(withJSONObject: data, options: .prettyPrinted)
        
        // Convert the JSON data to a string
        if let jsonString = String(data: jsonData, encoding: .utf8) {
            sendPostRequestWithJSON(jsonString: jsonString, urlString: "/api/location/custom") {
                result in switch result {
                    case .success(let data):
                        completionHandler(.success(data))
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
