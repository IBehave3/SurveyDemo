//
//  frequentLocations.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 8/11/23.
//

import SwiftUI

struct frequentLocations: View {
    
    @StateObject var placeViewModel = PlaceViewModel()
    @Binding var savedLo : savedLocations
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationStack{
            List(placeViewModel.places){ place  in
                VStack(alignment: .leading){
                    Text(place.name)
                        .font(.title2)
                    Text(place.address)
                        .font(.callout)
                    Text("\(place.latitude)")
                    Text("\(place.longitude)")
                }
            }.toolbar{
                ToolbarItem(placement:.navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Text("Dismiss")
                    }

                }
            }
        }
    }
}

struct frequentLocations_Previews: PreviewProvider {
    static var previews: some View {
        frequentLocations(savedLo: .constant(savedLocations()))
    }
}
