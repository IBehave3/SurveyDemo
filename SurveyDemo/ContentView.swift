//
//  ContentView.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 5/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isActive: Bool = false
    
    var body: some View {
        NavigationView(){ 
            VStack {
                Image("Logo_LSU")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                    .padding()
                
                Text("Start Survey Below")
                .bold()
                .font(.system(size: 25))
                
                Button("Generate Unique ID" ){
                    postContainer()
                    print("pressed")
                }
                .buttonStyle(.borderedProminent)
                .bold()
                .font(.system(size: 20))
                .padding()
                      
                NavigationLink(destination: SecondView(), isActive: $isActive){
                    Text("Start Surevy")
                }
                .padding()
                
            }  
            
        }
        .environment(\.rootPresentation, $isActive)
        .navigationBarBackButtonHidden(true)
    }
}

struct SecondView: View {
    @Environment(\.rootPresentation) var rootPresentation: Binding<Bool>
    var body: some View{
        secondView()
    }
}

struct thirdView: View {
    @Environment(\.rootPresentation) var isActive: Binding<Bool>
    var body: some View{
        ThirdView()
    }
}

struct fourthView: View {
    @Environment(\.rootPresentation) var isActive: Binding<Bool>
    var body: some View{
        FourthView()
    }
}

struct fifthView: View {
    @Environment(\.rootPresentation) var isActive: Binding<Bool>
    var body: some View{
        FifthView()
    }
}

    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

