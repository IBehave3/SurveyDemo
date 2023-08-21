//
//  UserLocations.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 8/10/23.
//

import SwiftUI
import MapKit

struct UserLocations: View {
    
    @EnvironmentObject var locationManager: LocationManager
    @StateObject var placeViewModel = PlaceViewModel()
    @State private var searchText = ""
    @Binding var savedLo : savedLocations
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack{
            List(placeViewModel.places){ place in
                VStack(alignment: .leading){
                    Text(place.name)
                        .font(.title2)
                    Text(place.address)
                        .font(.callout)
                    Text("\(place.latitude)")
                    Text("\(place.longitude)")
                }
                .onTapGesture {
                    savedLo.name = place.name
                    savedLo.address = place.address
                    savedLo.latitude = place.latitude
                    savedLo.longitude = place.longitude
                    dismiss()
                }
            }
            .listStyle(.plain)
            .searchable(text: $searchText)
            .onChange(of: searchText, perform: { text in
                if !text.isEmpty{
                    placeViewModel.search(text: text, region: locationManager.region)
                }else{
                    placeViewModel.places = []
                }
            })
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Dismiss") {
                        dismiss()
                    }
                }
            }
        }
    }
}

struct UserLocations_Previews: PreviewProvider {
    static var previews: some View {
        UserLocations(savedLo: .constant(savedLocations())).environmentObject(LocationManager())
    }
}
