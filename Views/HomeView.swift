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
    
    @State var isSuccess = false
    @State var isError = false
    @State var errMsg = ""
    
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
                                isSuccess = true
                                location = ""
                               print("Location updated successfully.")
                           case .failure(let error as NSError):
                                isError.toggle()
                                print("Location sent unsuccessful.")
                        }
                    }
                }
                .disabled(location.isEmpty)

                    .alert(isPresented: $isSuccess) {
                                Alert(
                                    title: Text("Success."),
                                    message: Text("Location updated successfully."),
                                    dismissButton: .default(Text("OK"))
                                )
                    }
                    .alert(isPresented: $isError) {
                                Alert(
                                    title: Text("Location couldn't be updated."),
                                    message: Text(errMsg),
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
