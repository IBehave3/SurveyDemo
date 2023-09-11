//
//  HomeView.swift
//  SurveyDemo
//
//  Created by Sumit on 9/10/23.
//

import Foundation
import SwiftUI

struct homeView: View {
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

struct DailySurveyView: View {
    var body: some View {
        Text("Daily Survey Content Goes Here")
            .navigationBarTitle("Daily Survey")
    }
}

struct HourlySurveyView: View {
    var body: some View {
        Text("Hourly Survey Content Goes Here")
            .navigationBarTitle("Hourly Survey")
    }
}

