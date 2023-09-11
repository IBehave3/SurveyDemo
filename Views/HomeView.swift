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
