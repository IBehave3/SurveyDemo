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
    
    @State private var isLocationEnabled: Bool = true
    
    @EnvironmentObject var signupVariables : SignupVariables
    
    @EnvironmentObject var locationStatus : LocationStatus
    
    @State private var location: String = ""
    
    @State var showAlert = false
    @State var msg = ""
    
    var body: some View {
        VStack {
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
            HStack {
                TextField("Location", text: $location)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Submit") {
                    let data: [String: Any] = [
                        "location": location,
                        "timestamp": Int(NSDate().timeIntervalSince1970)
                    ]
                    updateLocation(data: data) {
                        result in switch result {
                            
                           case .success(let data):
                                showAlert = true
                                location = ""
                                msg = "Location updated successfully."
                               print("Location updated successfully.")
                           case .failure(let error as NSError):
                                showAlert = true
                                msg = "Location couldn't be updated."
                                print("Location sent unsuccessful.")
                        }
                    }
                }
                .disabled(location.isEmpty)

                    .alert(isPresented: $showAlert) {
                                Alert(
                                    title: Text("Location Update"),
                                    message: Text(msg),
                                    dismissButton: .default(Text("OK"))
                                )
                    }
            }
        }
        
            if let locationLive = locationStatus.isLocationLive {
                
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(locationLive ? .green : .red)
                        .frame(width: 20, height: 20)

                    Text(locationLive ? "Location Live" : "Location Not Live")
                        .foregroundColor(.black)
                        .font(.system(size: 12))
                }
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

struct homeView_Previews: PreviewProvider {
    
    static var previews: some View {
        homeView()
            .environmentObject(LocationStatus())
    }
}
