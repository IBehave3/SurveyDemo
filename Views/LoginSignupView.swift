//
//  LoginSignupView.swift
//  SurveyDemo
//
//  Created by Sumit on 9/7/23.
//

import SwiftUI

struct SignupLoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isSignUp: Bool = true
    @State private var redirectToViewA: Bool = false
    @State private var redirectToViewB: Bool = false
    
    @State private var showAlert = false
    @State private var errMsg = ""

    var body: some View {
        NavigationView {
            VStack {
                Text(isSignUp ? "Sign Up" : "Log In")
                    .font(.largeTitle)
                    .padding(.bottom, 30)

                TextField("Username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                if isSignUp {
                    Button(action: {
                        let credentials: [String: Any] = [
                            "username": username,
                            "password": password
                        ]
                        
                        signupUser(data: credentials) {
                            result in switch result {
                                case .success(let data):
                                    let responseString = String(data: data, encoding: .utf8)
                                    redirectToViewA.toggle()
                                case .failure(let error):
                                    errMsg = error.localizedDescription
                                    showAlert.toggle()
                                }
                        }
                    }) {
                        Text("Sign Up")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    .background(NavigationLink("", destination: demographicQuestions(), isActive: $redirectToViewA))
                    .alert(isPresented: $showAlert) {
                                Alert(
                                    title: Text("Signup Failed"),
                                    message: Text(errMsg),
                                    dismissButton: .default(Text("OK"))
                                )
                            }
                } else {
                    Button(action: {
                        // Handle login logic here
                        redirectToViewB = true
                    }) {
                        Text("Log In")
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.blue)
                                    .cornerRadius(10)
                    }
                    .background(NavigationLink("", destination: secondView(), isActive: $redirectToViewB))
                }

                Button(action: {
                    self.isSignUp.toggle()
                }) {
                    Text(isSignUp ? "Already have an account? Log In" : "Don't have an account? Sign Up")
                        .font(.subheadline)
                        .foregroundColor(.blue)
                }

                Spacer()
                
                Image("Logo_LSU")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                    .padding()
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct SignupLoginView_Previews: PreviewProvider {
    static var previews: some View {
        SignupLoginView()
    }
}
