//
//  FifthView.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 6/23/23.
//

import SwiftUI

struct FifthView: View {
    
    @EnvironmentObject var globalVariable : globalVariables
    
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
    var body: some View{
        ScrollView{
            VStack{
                HStack(alignment: .top){
                    Text("I tend to bounce back quickly after hard times.")
                        .font(.system(size: 20))
                        .padding(.leading, 20)

                    Spacer()
                    
                    Menu{
                        Button(action:{
                            choice1 = "1"
                            globalVariable.dataCollected["Page 4 answer1"] = choice1
                        }, label: {
                            Text("1: Strongly Agree")
                        })
                        Button(action:{
                            choice1 = "2"
                            globalVariable.dataCollected["Page 4 answer1"] = choice1
                        }, label: {
                            Text("2: Agree")
                        })
                        Button(action:{
                            choice1 = "3"
                            globalVariable.dataCollected["Page 4 answer1"] = choice1
                        }, label: {
                            Text("3: Neutral")
                        })
                        Button(action:{
                            choice1 = "4"
                            globalVariable.dataCollected["Page 4 answer1"] = choice1
                        }, label: {
                            Text("4: Disagree")
                        })
                        Button(action:{
                            choice1 = "5"
                            globalVariable.dataCollected["Page 4 answer1"] = choice1
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
                .frame(width: 400)
                
                HStack{
                    Text("I have a hard time making it through stressful events.")
                        .font(.system(size: 20))
                        .padding(.leading, 20)

                    Spacer()
                    
                    Menu{
                        Button(action:{
                            choice2 = "1"
                            globalVariable.dataCollected["Page 4 answer2"] = choice2
                        }, label: {
                            Text("1: Strongly Agree")
                        })
                        Button(action:{
                            choice2 = "2"
                            globalVariable.dataCollected["Page 4 answer2"] = choice2
                        }, label: {
                            Text("2: Agree")
                        })
                        Button(action:{
                            choice2 = "3"
                            globalVariable.dataCollected["Page 4 answer2"] = choice2
                        }, label: {
                            Text("3: Neutral")
                        })
                        Button(action:{
                            choice2 = "4"
                            globalVariable.dataCollected["Page 4 answer2"] = choice2
                        }, label: {
                            Text("4: Disagree")
                        })
                        Button(action:{
                            choice2 = "5"
                            globalVariable.dataCollected["Page 4 answer2"] = choice2
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
                .frame(width: 400)
                
                HStack{
                    Text("It does not take me long to recover from a stressful event.")
                        .font(.system(size: 20))
                        .padding(.leading, 20)
                    
                    Spacer()
                    
                    Menu{
                        Button(action:{
                            choice3 = "1"
                            globalVariable.dataCollected["Page 4 answer3"] = choice3
                        }, label: {
                            Text("1: Strongly Agree")
                        })
                        Button(action:{
                            choice3 = "2"
                            globalVariable.dataCollected["Page 4 answer3"] = choice3
                        }, label: {
                            Text("2: Agree")
                        })
                        Button(action:{
                            choice3 = "3"
                            globalVariable.dataCollected["Page 4 answer3"] = choice3
                        }, label: {
                            Text("3: Neutral")
                        })
                        Button(action:{
                            choice3 = "4"
                            globalVariable.dataCollected["Page 4 answer3"] = choice3
                        }, label: {
                            Text("4: Disagree")
                        })
                        Button(action:{
                            choice3 = "5"
                            globalVariable.dataCollected["Page 4 answer3"] = choice3
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
                .frame(width: 400)
                
                
                HStack{
                    Text("It is hard for me to snap back when something bad happens.")
                        .font(.system(size: 20))
                        .padding(.leading, 20)
                    
                    Spacer()

                    Menu{
                        Button(action:{
                            choice4 = "1"
                            globalVariable.dataCollected["Page 4 answer4"] = choice4
                        }, label: {
                            Text("1: Strongly Agree")
                        })
                        Button(action:{
                            choice4 = "2"
                            globalVariable.dataCollected["Page 4 answer4"] = choice4
                        }, label: {
                            Text("2: Agree")
                        })
                        Button(action:{
                            choice4 = "3"
                            globalVariable.dataCollected["Page 4 answer4"] = choice4
                        }, label: {
                            Text("3: Neutral")
                        })
                        Button(action:{
                            choice4 = "4"
                            globalVariable.dataCollected["Page 4 answer4"] = choice4
                        }, label: {
                            Text("4: Disagree")
                        })
                        Button(action:{
                            choice4 = "5"
                            globalVariable.dataCollected["Page 4 answer4"] = choice4
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
                .frame(width: 400)
                
                HStack{
                    Text("I usually come through difficult times with little trouble.")
                        .font(.system(size: 20))
                        .padding(.leading, 20)

                    Spacer()
                    
                    Menu{
                        Button(action:{
                            choice5 = "1"
                            globalVariable.dataCollected["Page 4 answer5"] = choice5
                        }, label: {
                            Text("1: Strongly Agree")
                        })
                        Button(action:{
                            choice5 = "2"
                            globalVariable.dataCollected["Page 4 answer5"] = choice5
                        }, label: {
                            Text("2: Agree")
                        })
                        Button(action:{
                            choice5 = "3"
                            globalVariable.dataCollected["Page 4 answer5"] = choice5
                        }, label: {
                            Text("3: Neutral")
                        })
                        Button(action:{
                            choice5 = "4"
                            globalVariable.dataCollected["Page 4 answer5"] = choice5
                        }, label: {
                            Text("4: Disagree")
                        })
                        Button(action:{
                            choice5 = "5"
                            globalVariable.dataCollected["Page 4 answer5"] = choice5
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
                .frame(width: 400)
                
                HStack{
                    Text("I tend to take a long time to get over set-backs in my life.")
                        .font(.system(size: 20))
                        .padding(.leading, 20)
                    
                    Spacer()
                    
                    Menu{
                        Button(action:{
                            choice6 = "1"
                            globalVariable.dataCollected["Page 4 answer6"] = choice6
                        }, label: {
                            Text("1: Strongly Agree")
                        })
                        Button(action:{
                            choice6 = "2"
                            globalVariable.dataCollected["Page 4 answer6"] = choice6
                        }, label: {
                            Text("2: Agree")
                        })
                        Button(action:{
                            choice6 = "3"
                            globalVariable.dataCollected["Page 4 answer6"] = choice6
                        }, label: {
                            Text("3: Neutral")
                        })
                        Button(action:{
                            choice6 = "4"
                            globalVariable.dataCollected["Page 4 answer6"] = choice6
                        }, label: {
                            Text("4: Disagree")
                        })
                        Button(action:{
                            choice6 = "5"
                            globalVariable.dataCollected["Page 4 answer6"] = choice6
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
                .frame(width: 400)
            }
            
            Button("Finish Survey"){
                isActive.wrappedValue = false
                NotificationManager().schedulesTimedNotification()
                postData(username: globalVariable.userNameId, body: globalVariable.dataCollected)
            }
            .buttonStyle(.borderedProminent)
            .disabled(choice1.isEmpty || choice2.isEmpty || choice3.isEmpty || choice4.isEmpty || choice5.isEmpty || choice6.isEmpty)
            .padding()
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .navigationBarBackButtonHidden(false)
        
    }
}

struct FifthView_Previews: PreviewProvider {
    static var previews: some View {
        FifthView()
            .environmentObject(globalVariables())
    }
}
