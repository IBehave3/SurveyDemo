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
    @State private var isSignUp: Bool = false
    @State private var redirectToViewA: Bool = false
    @State private var redirectToViewB: Bool = false
    
    @State private var showAlert = false
    @State private var errMsg = ""
    
    @State private var checkingLogin = false
    
    @AppStorage("token") var token: String = ""
    
    @EnvironmentObject var signupVariables : SignupVariables

    var body: some View {
        NavigationView {
            if (checkingLogin) {
                ProgressView("Attempting to login.")
                                    .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                                    .scaleEffect(2.0)
                                    .padding()
            } else {
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
                            
                            redirectToViewA.toggle()

                            signupVariables.credentials = credentials
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
                                        title: Text("Signup Failed!"),
                                        message: Text(errMsg),
                                        dismissButton: .default(Text("OK"))
                                    )
                                }
                    } else {
                        Button(action: {
                            let credentials: [String: Any] = [
                                "username": username,
                                "password": password
                            ]
                            
                            loginUser(data: credentials) {
                                result in switch result {
                                case .success(let data):
                                    
                                    do {
                                        if let jsonObject = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                                            
                                            if let token = jsonObject["token"] as? String {
                                                self.token = token
                                            }
                                        } else {
                                            print("Failed to convert Data to JSON dictionary")
                                        }
                                    } catch {
                                        print("Error: \(error)")
                                    }
                                    
                                    redirectToViewB.toggle()
                                case .failure(let error):
                                    errMsg = error.localizedDescription
                                    showAlert.toggle()
                                }
                            }
                        }) {
                            Text("Log In")
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                        .background(NavigationLink("", destination: homeView(), isActive: $redirectToViewB))
                        .alert(isPresented: $showAlert) {
                                    Alert(
                                        title: Text("Login Failed!"),
                                        message: Text(errMsg),
                                        dismissButton: .default(Text("OK"))
                                    )
                                }
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
        }
        .navigationBarBackButtonHidden(true)
        .onAppear {
            checkingLogin.toggle()
            fetchGETRequest(apiURL: "/api/auth/information-user", token: token) {
                result in switch result {
                    case .success(let data):
                        checkingLogin.toggle()
                        redirectToViewB.toggle()
                    case .failure(let error):
                        checkingLogin.toggle()
                    }
            }
        }
    }
}

struct SignupLoginView_Previews: PreviewProvider {
    static var previews: some View {
        SignupLoginView()
            .environmentObject(SignupVariables())
    }
}
