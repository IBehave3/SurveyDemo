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
