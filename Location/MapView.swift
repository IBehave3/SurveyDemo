//
//  MapView.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 7/20/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @StateObject private var viewModel = mapViewModel()
    
    var body: some View {
        Map(coordinateRegion: $viewModel.region, showsUserLocation: true )
            .ignoresSafeArea()
            .onAppear{
                viewModel.checkLocationServices()
            }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

final class mapViewModel: NSObject, ObservableObject, CLLocationManagerDelegate  {
    
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.331516 , longitude: -121.891054), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    var locationManager: CLLocationManager?
    
    func checkLocationServices() {
        if CLLocationManager.locationServicesEnabled(){
            locationManager = CLLocationManager()
            locationManager!.delegate = self
            locationManager?.desiredAccuracy = kCLLocationAccuracyBest
        }else{
            print("Need to enable location services")
        }
    }
    
    private func checkLocationAurthorization() {
        
        guard let locationManager = locationManager else{return}
        
        switch locationManager.authorizationStatus {
            
        case .notDetermined:
            locationManager.requestAlwaysAuthorization()
        case .restricted:
            print("Location is restricted")
        case .denied:
            print("Location Services necessary for Proper use of App")
        case .authorizedAlways, .authorizedWhenInUse:
            region = MKCoordinateRegion(center: locationManager.location!.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        @unknown default:
            break
        }
        
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
         checkLocationAurthorization()
    }
    
}
