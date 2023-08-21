//
//  ContentView.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 5/11/23.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @AppStorage("welcomeScreenShown") var welcomeScreenShown: Bool = true
    
    var body: some View {
        if welcomeScreenShown {
            HomeView()
        }else{
            demographicQuestions()
        }
    }
}

struct HomeView: View {
    @State private var isActive: Bool = false
    
    @State private var showPlaceLookUpSheet = false
    
    @State private var locationSheet = false
    
    @State private var isSubmitted = true
    
    @State var returnedPlace = Place(mapItem: MKMapItem())
    
    @EnvironmentObject var globalVariable : globalVariables
    
    @AppStorage("userName") var username : String = ""
    
    var body: some View {
        NavigationView{
            VStack {
                Image("Logo_LSU")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                    .padding()
                
                Text("Start Survey Below")
                    .bold()
                    .font(.system(size: 25))
                /*
                Button("Schedule Notification" ){
                    NotificationManager().schedulesTimedNotification()
                    print("pressed")
                }
                .buttonStyle(.borderedProminent)
                .bold()
                .font(.system(size: 20))
                .padding()
                
                 Button("Generate Unique ID" ){
                 getData(username: username)
                 print("pressed")
                 }
                 .buttonStyle(.borderedProminent)
                 .bold()
                 .font(.system(size: 20))
                 .padding()
                 
                 Button("Test POST data" ){
                 postData(username: username)
                 print("pressed POST request")
                 }
                 .buttonStyle(.borderedProminent)
                 .bold()
                 .font(.system(size: 20))
                 .padding(.leading,-40)
                 .padding(.bottom,15)
                 */
                TextField("Username", text: $username , prompt: Text("Username"))
                    .padding(.horizontal,110)
                    .textFieldStyle(.roundedBorder)
                    .font(.title2)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    .textContentType(.username)
                
                Button("Submit"){
                    globalVariable.userNameId = username
                    createUser(username: username)
                    //getLogin(username: username)
                    postData(username: username, body: globalVariable.demographicData)
                    isSubmitted.toggle()
                    print(username)
                    print("Global Variable: \(globalVariable.userNameId)")
                }.disabled(username.isEmpty)
                
                NavigationLink(destination: SecondView(),isActive: $isActive){
                    ZStack{
                        Rectangle()
                            .frame(height: 40)
                            .frame(width: 120)
                            .cornerRadius(10)
                            .foregroundColor(isSubmitted ? .gray : .blue)
                        Text("Start Survey")
                            .foregroundColor(.white)
                    }
                }
                .animation(.easeInOut)
                .disabled(isSubmitted)
                //.padding()
            }
            /*
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading ) {
                    Button {
                        showPlaceLookUpSheet.toggle()
                    } label: {
                        Image(systemName: "magnifyingglass")
                        Text("Look up Place")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        locationSheet.toggle()
                    } label: {
                        Image(systemName: "plus")
                        Text("Add Frequent Location")
                    }
                }
            }
            .sheet(isPresented: $locationSheet) {
                NavigationStack{
                    savedLocationsView(savedLo: savedLocations())
                }
            }
             */
        }
        .environment(\.rootPresentation, $isActive)
        //.fullScreenCover(isPresented: $showPlaceLookUpSheet, content: {
            //demographicQuestions()
            //})
        //.navigationBarBackButtonHidden(true)
        .onAppear{
            UIApplication.shared.applicationIconBadgeNumber = 0
            
        }
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
                .environmentObject(globalVariables())
        }
    }

