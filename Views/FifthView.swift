//
//  FifthView.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 6/23/23.
//

import SwiftUI

struct FifthView: View {
        
    @EnvironmentObject var signupVariables : SignupVariables
    
    @Environment(\.rootPresentation) var isActive: Binding<Bool>
    
    @State var choice1 = ""
    @State var choice2 = ""
    @State var choice3 = ""
    @State var choice4 = ""
    @State var choice5 = ""
    @State var choice6 = ""

    
    @State var redirectToLogin = false
    @State var showAlert = false
    @State var errMsg = ""
    
    var body: some View{
            ScrollView{
                VStack{
                    HStack{
                        Text("1. I tend to bounce back quickly after hard times.")
                            .font(.system(size: 20))
                        
                        Spacer()
                        
                        Menu{
                            Button(action:{
                                choice1 = "1"
                                signupVariables.resilience["bounceBackQuickly"] = 1
                            }, label: {
                                Text("1: Strongly Agree")
                            })
                            Button(action:{
                                choice1 = "2"
                                signupVariables.resilience["bounceBackQuickly"] = 2
                            }, label: {
                                Text("2: Agree")
                            })
                            Button(action:{
                                choice1 = "3"
                                signupVariables.resilience["bounceBackQuickly"] = 3
                            }, label: {
                                Text("3: Neutral")
                            })
                            Button(action:{
                                choice1 = "4"
                                signupVariables.resilience["bounceBackQuickly"] = 4
                            }, label: {
                                Text("4: Disagree")
                            })
                            Button(action:{
                                choice1 = "5"
                                signupVariables.resilience["bounceBackQuickly"] = 5
                            }, label: {
                                Text("5: Strongly Disagree")
                            })
                            
                        } label: {
                            Label(
                                title: { Text("\(choice1)")},
                                icon: {Image(systemName: "list.number.rtl")}
                            )
                        }
                        
                    }
                    
                    HStack{
                        Text("2. I have a hard time making it through stressful events.")
                            .font(.system(size: 20))
                        
                        Spacer()
                        
                        Menu{
                            Button(action:{
                                choice2 = "1"
                                signupVariables.resilience["hardTimeStressfullEvents"] = 1
                            }, label: {
                                Text("1: Strongly Agree")
                            })
                            Button(action:{
                                choice2 = "2"
                                signupVariables.resilience["hardTimeStressfullEvents"] = 2
                            }, label: {
                                Text("2: Agree")
                            })
                            Button(action:{
                                choice2 = "3"
                                signupVariables.resilience["hardTimeStressfullEvents"] = 3
                            }, label: {
                                Text("3: Neutral")
                            })
                            Button(action:{
                                choice2 = "4"
                                signupVariables.resilience["hardTimeStressfullEvents"] = 4
                            }, label: {
                                Text("4: Disagree")
                            })
                            Button(action:{
                                choice2 = "5"
                                signupVariables.resilience["hardTimeStressfullEvents"] = 5
                            }, label: {
                                Text("5: Strongly Disagree")
                            })
                            
                        } label: {
                            Label(
                                title: { Text("\(choice2)")},
                                icon: {Image(systemName: "list.number.rtl")}
                            )
                        }
                        
                    }
                    
                    HStack{
                        Text("3. It does not take me long to recover from a stressful event.")
                            .font(.system(size: 20))
                        
                        Spacer()
                                            
                        Menu{
                            Button(action:{
                                choice3 = "1"
                                signupVariables.resilience["longRecoveryTime"] = 1
                            }, label: {
                                Text("1: Strongly Agree")
                            })
                            Button(action:{
                                choice3 = "2"
                                signupVariables.resilience["longRecoveryTime"] = 2
                            }, label: {
                                Text("2: Agree")
                            })
                            Button(action:{
                                choice3 = "3"
                                signupVariables.resilience["longRecoveryTime"] = 3
                            }, label: {
                                Text("3: Neutral")
                            })
                            Button(action:{
                                choice3 = "4"
                                signupVariables.resilience["longRecoveryTime"] = 4
                            }, label: {
                                Text("4: Disagree")
                            })
                            Button(action:{
                                choice3 = "5"
                                signupVariables.resilience["longRecoveryTime"] = 5
                            }, label: {
                                Text("5: Strongly Disagree")
                            })
                            
                        } label: {
                            Label(
                                title: { Text("\(choice3)")},
                                icon: {Image(systemName: "list.number.rtl")}
                            )
                        }
                        
                    }
                    
                    
                    HStack{
                        Text("4. It is hard for me to snap back when something bad happens.")
                            .font(.system(size: 20))
                        
                        Spacer()
                        
                        Menu{
                            Button(action:{
                                choice4 = "1"
                                signupVariables.resilience["hardToSnapBack"] = 1
                            }, label: {
                                Text("1: Strongly Agree")
                            })
                            Button(action:{
                                choice4 = "2"
                                signupVariables.resilience["hardToSnapBack"] = 2
                            }, label: {
                                Text("2: Agree")
                            })
                            Button(action:{
                                choice4 = "3"
                                signupVariables.resilience["hardToSnapBack"] = 3
                            }, label: {
                                Text("3: Neutral")
                            })
                            Button(action:{
                                choice4 = "4"
                                signupVariables.resilience["hardToSnapBack"] = 4
                            }, label: {
                                Text("4: Disagree")
                            })
                            Button(action:{
                                choice4 = "5"
                                signupVariables.resilience["hardToSnapBack"] = 5
                            }, label: {
                                Text("5: Strongly Disagree")
                            })
                            
                        } label: {
                            Label(
                                title: { Text("\(choice4)")},
                                icon: {Image(systemName: "list.number.rtl")}
                            )
                        }
                    }
                    
                    HStack{
                        Text("5. I usually come through difficult times with little trouble.")
                            .font(.system(size: 20))
                        
                        Spacer()
                        
                        Menu{
                            Button(action:{
                                choice5 = "1"
                                signupVariables.resilience["comeThroughDifficulTimes"] = 1
                            }, label: {
                                Text("1: Strongly Agree")
                            })
                            Button(action:{
                                choice5 = "2"
                                signupVariables.resilience["comeThroughDifficulTimes"] = 2
                            }, label: {
                                Text("2: Agree")
                            })
                            Button(action:{
                                choice5 = "3"
                                signupVariables.resilience["comeThroughDifficulTimes"] = 3
                            }, label: {
                                Text("3: Neutral")
                            })
                            Button(action:{
                                choice5 = "4"
                                signupVariables.resilience["comeThroughDifficulTimes"] = 4
                            }, label: {
                                Text("4: Disagree")
                            })
                            Button(action:{
                                choice5 = "5"
                                signupVariables.resilience["comeThroughDifficulTimes"] = 5
                            }, label: {
                                Text("5: Strongly Disagree")
                            })
                            
                        } label: {
                            Label(
                                title: { Text("\(choice5)")},
                                icon: {Image(systemName: "list.number.rtl")}
                            )
                        }
                    }
                    
                    HStack{
                        Text("6. I tend to take a long time to get over set-backs in my life.")
                            .font(.system(size: 20))
                        
                        Spacer()
                                            
                        Menu{
                            Button(action:{
                                choice6 = "1"
                                signupVariables.resilience["longTimeGetOverSetBacks"] = 1
                            }, label: {
                                Text("1: Strongly Agree")
                            })
                            Button(action:{
                                choice6 = "2"
                                signupVariables.resilience["longTimeGetOverSetBacks"] = 2
                            }, label: {
                                Text("2: Agree")
                            })
                            Button(action:{
                                choice6 = "3"
                                signupVariables.resilience["longTimeGetOverSetBacks"] = 3
                            }, label: {
                                Text("3: Neutral")
                            })
                            Button(action:{
                                choice6 = "4"
                                signupVariables.resilience["longTimeGetOverSetBacks"] = 4
                            }, label: {
                                Text("4: Disagree")
                            })
                            Button(action:{
                                choice6 = "5"
                                signupVariables.resilience["longTimeGetOverSetBacks"] = 5
                            }, label: {
                                Text("5: Strongly Disagree")
                            })
                            
                        } label: {
                            Label(
                                title: { Text("\(choice6)")},
                                icon: {Image(systemName: "list.number.rtl")}
                            )
                        }
                    }
                }
                .padding(.leading, 10)
                
                Button(action: {
                    signupUser(data: signupVariables) {
                        result in switch result {
                            case .success(let data):
                            
                            let credentials: [String: Any] = [
                                "username": signupVariables.username,
                                "password": signupVariables.password
                            ]
                            
                            loginUser(data: credentials) {
                                result in switch result {
                                case .success(let data):
                                    
                                    do {
                                        if let jsonObject = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                                            
                                            if let token = jsonObject["token"] as? String {
                                                UserDefaults.standard.set(token, forKey: "token")
                                                redirectToLogin.toggle()
                                            }
                                        } else {
                                            print("Failed to convert Data to JSON dictionary")
                                        }
                                    } catch {
                                        print("Error: \(error)")
                                    }
                                    
                                case .failure(let error):
                                    errMsg = error.localizedDescription
                                    showAlert.toggle()
                                }
                            }
                            case .failure(let error):
                                errMsg = error.localizedDescription
                                showAlert.toggle()
                            }
                    }
                })
                {
                    Text("Submit")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .background(NavigationLink("", destination: homeView(), isActive: $redirectToLogin))
                .alert(isPresented: $showAlert) {
                            Alert(
                                title: Text("Signup Failed!"),
                                message: Text(errMsg),
                                dismissButton: .default(Text("OK"))
                            )
                }
                .padding()
                
            }
            .onAppear {
                self.showAlert = false
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        
    }
}

struct FifthView_Previews: PreviewProvider {
    static var previews: some View {
        FifthView()
            .environmentObject(SignupVariables())
    }
}
