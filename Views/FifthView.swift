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
    @State var choice7 = ""
    @State var choice8 = ""
    @State var choice9 = ""
    
    @State var redirectToLogin = false
    @State var showAlert = false
    @State var errMsg = ""
    
    var body: some View{
        NavigationView {
            ScrollView{
                VStack{
                    HStack{
                        Text("1. I tend to bounce back quickly after hard times.")
                            .font(.system(size: 20))
                        
                        Spacer()
                        
                        Menu{
                            Button(action:{
                                choice1 = "1"
                                signupVariables.resilience["bounceBackQuickly"] = choice1
                            }, label: {
                                Text("1: Strongly Agree")
                            })
                            Button(action:{
                                choice1 = "2"
                                signupVariables.resilience["bounceBackQuickly"] = choice1
                            }, label: {
                                Text("2: Agree")
                            })
                            Button(action:{
                                choice1 = "3"
                                signupVariables.resilience["bounceBackQuickly"] = choice1
                            }, label: {
                                Text("3: Neutral")
                            })
                            Button(action:{
                                choice1 = "4"
                                signupVariables.resilience["bounceBackQuickly"] = choice1
                            }, label: {
                                Text("4: Disagree")
                            })
                            Button(action:{
                                choice1 = "5"
                                signupVariables.resilience["bounceBackQuickly"] = choice1
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
                                signupVariables.resilience["hardTimeStressfullEvents"] = choice2
                            }, label: {
                                Text("1: Strongly Agree")
                            })
                            Button(action:{
                                choice2 = "2"
                                signupVariables.resilience["hardTimeStressfullEvents"] = choice2
                            }, label: {
                                Text("2: Agree")
                            })
                            Button(action:{
                                choice2 = "3"
                                signupVariables.resilience["hardTimeStressfullEvents"] = choice2
                            }, label: {
                                Text("3: Neutral")
                            })
                            Button(action:{
                                choice2 = "4"
                                signupVariables.resilience["hardTimeStressfullEvents"] = choice2
                            }, label: {
                                Text("4: Disagree")
                            })
                            Button(action:{
                                choice2 = "5"
                                signupVariables.resilience["hardTimeStressfullEvents"] = choice2
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
                                signupVariables.resilience["longRecoveryTime"] = choice3
                            }, label: {
                                Text("1: Strongly Agree")
                            })
                            Button(action:{
                                choice3 = "2"
                                signupVariables.resilience["longRecoveryTime"] = choice3
                            }, label: {
                                Text("2: Agree")
                            })
                            Button(action:{
                                choice3 = "3"
                                signupVariables.resilience["longRecoveryTime"] = choice3
                            }, label: {
                                Text("3: Neutral")
                            })
                            Button(action:{
                                choice3 = "4"
                                signupVariables.resilience["longRecoveryTime"] = choice3
                            }, label: {
                                Text("4: Disagree")
                            })
                            Button(action:{
                                choice3 = "5"
                                signupVariables.resilience["longRecoveryTime"] = choice3
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
                                signupVariables.resilience["hardToSnapBack"] = choice4
                            }, label: {
                                Text("1: Strongly Agree")
                            })
                            Button(action:{
                                choice4 = "2"
                                signupVariables.resilience["hardToSnapBack"] = choice4
                            }, label: {
                                Text("2: Agree")
                            })
                            Button(action:{
                                choice4 = "3"
                                signupVariables.resilience["hardToSnapBack"] = choice4
                            }, label: {
                                Text("3: Neutral")
                            })
                            Button(action:{
                                choice4 = "4"
                                signupVariables.resilience["hardToSnapBack"] = choice4
                            }, label: {
                                Text("4: Disagree")
                            })
                            Button(action:{
                                choice4 = "5"
                                signupVariables.resilience["hardToSnapBack"] = choice4
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
                                signupVariables.resilience["comeThroughDifficulTimes"] = choice5
                            }, label: {
                                Text("1: Strongly Agree")
                            })
                            Button(action:{
                                choice5 = "2"
                                signupVariables.resilience["comeThroughDifficulTimes"] = choice5
                            }, label: {
                                Text("2: Agree")
                            })
                            Button(action:{
                                choice5 = "3"
                                signupVariables.resilience["comeThroughDifficulTimes"] = choice5
                            }, label: {
                                Text("3: Neutral")
                            })
                            Button(action:{
                                choice5 = "4"
                                signupVariables.resilience["comeThroughDifficulTimes"] = choice5
                            }, label: {
                                Text("4: Disagree")
                            })
                            Button(action:{
                                choice5 = "5"
                                signupVariables.resilience["comeThroughDifficulTimes"] = choice5
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
                                signupVariables.resilience["longTimeGetOverSetBacks"] = choice6
                            }, label: {
                                Text("1: Strongly Agree")
                            })
                            Button(action:{
                                choice6 = "2"
                                signupVariables.resilience["longTimeGetOverSetBacks"] = choice6
                            }, label: {
                                Text("2: Agree")
                            })
                            Button(action:{
                                choice6 = "3"
                                signupVariables.resilience["longTimeGetOverSetBacks"] = choice6
                            }, label: {
                                Text("3: Neutral")
                            })
                            Button(action:{
                                choice6 = "4"
                                signupVariables.resilience["longTimeGetOverSetBacks"] = choice6
                            }, label: {
                                Text("4: Disagree")
                            })
                            Button(action:{
                                choice6 = "5"
                                signupVariables.resilience["longTimeGetOverSetBacks"] = choice6
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
                            case .success(let token):
                                print(token)
                                redirectToLogin.toggle()
                            case .failure(let error):
                                redirectToLogin.toggle()
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
                .background(NavigationLink("", destination: SignupLoginView(), isActive: $redirectToLogin))
                .alert(isPresented: $showAlert) {
                            Alert(
                                title: Text("Signup Failed!"),
                                message: Text(errMsg),
                                dismissButton: .default(Text("OK"))
                            )
                }
                .disabled(choice1.isEmpty || choice2.isEmpty || choice3.isEmpty || choice4.isEmpty || choice5.isEmpty || choice6.isEmpty)
                .padding()
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .navigationBarBackButtonHidden(true)
        
    }
}

struct FifthView_Previews: PreviewProvider {
    static var previews: some View {
        FifthView()
            .environmentObject(SignupVariables())
    }
}
