//
//  HomeView.swift
//  SurveyDemo
//
//  Created by Sumit on 9/10/23.
//

import Foundation
import SwiftUI

struct homeView: View {
    let tokenKey = "token"
    
    @State private var logout: Bool = false
    @ObservedObject var locationManager = LocationManager()

    var body: some View {
            List {
                NavigationLink(destination: secondView()) {
                    MenuItemView(title: "Daily Survey", imageName: "sun.max.fill")
                }
                NavigationLink(destination: fourthView()) {
                    MenuItemView(title: "Hourly Survey", imageName: "clock.fill")
                }
            }
            .navigationBarTitle("Menu")
            .navigationBarBackButtonHidden(true)
            .toolbar {
                            ToolbarItem(placement: .navigationBarTrailing) {
                                Button(action: {
                                    UserDefaults.standard.removeObject(forKey: tokenKey)
                                    logout.toggle()
                                }) {
                                    Text("Logout")
                                }
                                .background(NavigationLink("", destination: SignupLoginView(), isActive: $logout))
                            }
                        }
        .onAppear {
            startPeriodicBackgroundTask()
        }
    }

    private func performBackgroundTask() {
        let timer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) { timer in
                   
            if let location = locationManager.location {
                print("Latitude: \(location.coordinate.latitude)")
                print("Longitude: \(location.coordinate.longitude)")
                
                let token = UserDefaults.standard.string(forKey: "token")
                                
                //Call api to post location data
                //Depending on api response, generate hourly notification
                //If api returns unauthorized, logout and end background task, the user has to login again
                let errorOccurred = false
                if errorOccurred {
                    timer.invalidate()
                }
            }
        }
               
        RunLoop.current.run()
    }
    
    private func startPeriodicBackgroundTask() {
        DispatchQueue.global().async {
            self.performBackgroundTask()
        }
    }
}

struct MenuItemView: View {
    let title: String
    let imageName: String

    var body: some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .frame(width: 25, height: 25)
            Text(title)
                .font(.headline)
        }
    }
}
