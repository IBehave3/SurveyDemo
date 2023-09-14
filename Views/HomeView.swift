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
    @State private var backgroundTaskID: UIBackgroundTaskIdentifier = .invalid
    @ObservedObject var locationManager = LocationManager()

    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: secondView()) {
                    MenuItemView(title: "Daily Survey", imageName: "sun.max.fill")
                }
                NavigationLink(destination: fourthView()) {
                    MenuItemView(title: "Hourly Survey", imageName: "clock.fill")
                }
            }
            .navigationBarTitle("Menu")
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
        }
        .navigationBarBackButtonHidden(true)
        .onAppear {
            registerBackgroundTask()
                
            startPeriodicBackgroundTask()
        }
    }
    
    private func registerBackgroundTask() {
        backgroundTaskID = UIApplication.shared.beginBackgroundTask()
        print("Background task registered successfully: \(backgroundTaskID)")

    }

    private func endBackgroundTask() {
        UIApplication.shared.endBackgroundTask(backgroundTaskID)
        backgroundTaskID = .invalid
    }

    private func performBackgroundTask() {
        let timer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) { _ in
                   
            if let location = locationManager.location {
                print("Latitude: \(location.coordinate.latitude)")
                print("Longitude: \(location.coordinate.longitude)")
                
                //Call api to post location data
                //Depending on api response, generate hourly notification
                //If api returns unauthorized, logout and end background task, the user has to login again
            }
                   
//            let errorOccurred = false
//            if errorOccurred {
//                self.endBackgroundTask()
//            }
        }
               
        // Ensure the timer is properly invalidated when the task is done
        RunLoop.current.add(timer, forMode: .default)
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
