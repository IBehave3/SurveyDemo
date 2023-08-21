//
//  PlaceViewModel.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 8/10/23.
//

import Foundation
import MapKit

 @MainActor
class PlaceViewModel: ObservableObject{
    @Published var places : [Place] = []
    
    func search(text: String, region: MKCoordinateRegion){
        let searchRequest = MKLocalSearch.Request()
        searchRequest.naturalLanguageQuery = text
        searchRequest.region = region
        let search = MKLocalSearch(request: searchRequest)
        
        search.start { response, error in
            guard let response = response else{
                print("\(error?.localizedDescription ?? "Unkown error")")
                return
            }
            
            self.places = response.mapItems.map(Place.init)
            
        }
    }
}
