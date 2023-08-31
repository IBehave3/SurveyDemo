//
//  demographicQuestions.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 7/27/23.
//

import SwiftUI

struct demographicQuestions: View {
    
    @AppStorage("welcomeScreenShown") var welcomeScreenShown: Bool = false
    @EnvironmentObject var globalVariable : globalVariables
    
    @State var demographicData : [String:Any] = [:]
    
    @State var age : String = ""
    @State var otherGender : String = ""
    @State var otherRace : String = ""
    
    @State var buttonA1 : Bool = false
    @State var buttonA2 : Bool = false
    
    @State var buttonB1 : Bool = false
    @State var buttonB2 : Bool = false
    @State var buttonB3 : Bool = false
    @State var buttonB4 : Bool = false
    @State var buttonB5 : Bool = false
    @State var buttonB7 : Bool = false
    @State var buttonB8 : Bool = false
    
    @State var buttonC1 : Bool = false
    @State var buttonC2 : Bool = false
    @State var buttonC3 : Bool = false
    @State var buttonC4 : Bool = false
    @State var buttonC8 : Bool = false
    
    @State var buttonD1 : Bool = false
    @State var buttonD2 : Bool = false
    
    @State var submit : Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack{
                    Text("Please fill out the preliminary questions below:")
                        .font(.title)
                        .padding(.leading,-60)
                }
                VStack{
                    Text("Age:")
                        .padding(.leading,-205)
                        .padding(.top, 1)
                        .font(.title2)
                    TextField("Age", text: $age , prompt: Text("Age"))
                        .textFieldStyle(.roundedBorder)
                        .font(.title2)
                        .padding(.horizontal, 10)
                    Text("______________________________________________")
                    VStack{
                        Text("Gender:")
                            .padding(.leading,-205)
                            .font(.title2)
                        selectButton2(isSelected2: $buttonA1, color2: .blue, text2: "Male")
                            .onTapGesture {
                                buttonA1.toggle()
                                if buttonA1{
                                    buttonA2 = false
                                }
                                demographicData["Gender"] = "1"
                            }
                        selectButton2(isSelected2: $buttonA2, color2: .blue, text2: "Female")
                            .onTapGesture {
                                buttonA2.toggle()
                                if buttonA2{
                                    buttonA1 = false
                                }
                                demographicData["Gender"] = "2"
                            }
                        TextField("Gender", text: $otherGender , prompt: Text("Other: please specify"))
                            .textFieldStyle(.roundedBorder)
                            .font(.title2)
                            .padding(.horizontal, 10)
                    }
                    VStack{
                        Text("______________________________________________")
                        Text("Race/Ethnicity: ")
                            .padding(.leading,-205)
                            .font(.title2)
                        selectButton2(isSelected2: $buttonB1, color2: .blue, text2: "White")
                            .onTapGesture {
                                buttonB1.toggle()
                                if buttonB1 {
                                    buttonB2 = false
                                    buttonB3 = false
                                    buttonB4 = false
                                    buttonB5 = false
                                    buttonB7 = false
                                    buttonB8 = false
                                }
                                demographicData["Race/Ethnicity"] = "1"
                            }
                        selectButton2(isSelected2: $buttonB8, color2: .blue, text2: "African American")
                            .onTapGesture {
                                buttonB8.toggle()
                                if buttonB8 {
                                    buttonB1 = false
                                    buttonB3 = false
                                    buttonB4 = false
                                    buttonB5 = false
                                    buttonB2 = false
                                    buttonB7 = false
                                }
                                demographicData["Race/Ethnicity"] = "3"
                            }
                        selectButton2(isSelected2: $buttonB2, color2: .blue, text2: "Hispanic or Latino")
                            .onTapGesture {
                                buttonB2.toggle()
                                if buttonB2 {
                                    buttonB1 = false
                                    buttonB3 = false
                                    buttonB4 = false
                                    buttonB5 = false
                                    buttonB7 = false
                                    buttonB8 = false
                                }
                                demographicData["Race/Ethnicity"] = "2"
                            }
                        selectButton2(isSelected2: $buttonB3, color2: .blue, text2: "American Indian or Alaska Native")
                            .onTapGesture {
                                buttonB3.toggle()
                                if buttonB3 {
                                    buttonB1 = false
                                    buttonB2 = false
                                    buttonB4 = false
                                    buttonB5 = false
                                    buttonB7 = false
                                    buttonB8 = false
                                }
                                demographicData["Race/Ethnicity"] = "5"
                            }
                        selectButton2(isSelected2: $buttonB4, color2: .blue, text2: "Asian")
                            .onTapGesture {
                                buttonB4.toggle()
                                if buttonB4 {
                                    buttonB1 = false
                                    buttonB3 = false
                                    buttonB2 = false
                                    buttonB5 = false
                                    buttonB7 = false
                                    buttonB8 = false
                                }
                                demographicData["Race/Ethnicity"] = "4"
                            }
                        selectButton2(isSelected2: $buttonB5, color2: .blue, text2: "Native Hawaiian or Pacific Islander")
                            .onTapGesture {
                                buttonB5.toggle()
                                if buttonB5 {
                                    buttonB1 = false
                                    buttonB3 = false
                                    buttonB4 = false
                                    buttonB2 = false
                                    buttonB7 = false
                                    buttonB8 = false
                                }
                                demographicData["Race/Ethnicity"] = "7"
                            }
                        selectButton2(isSelected2: $buttonB7, color2: .blue, text2: "Middle Eastern or North African")
                            .onTapGesture {
                                buttonB7.toggle()
                                if buttonB7 {
                                    buttonB1 = false
                                    buttonB3 = false
                                    buttonB4 = false
                                    buttonB5 = false
                                    buttonB2 = false
                                    buttonB8 = false
                                }
                                demographicData["Race/Ethnicity"] = "6"
                            }
                        TextField("Race/Ethinicity", text: $otherRace , prompt: Text("Other: please specify"))
                            .textFieldStyle(.roundedBorder)
                            .font(.title2)
                            .padding(.horizontal, 10)
                    }
                    VStack{
                        Text("______________________________________________")
                        Text("Level of Education: ")
                            .padding(.leading,-205)
                            .font(.title2)
                        selectButton2(isSelected2: $buttonC1, color2: .blue, text2: "Less than Highschool")
                            .onTapGesture {
                                buttonC1.toggle()
                                if buttonC1 {
                                    buttonC2 = false
                                    buttonC3 = false
                                    buttonC4 = false
                                    buttonC8 = false
                                }
                                demographicData["Level of Education"] = "1"
                            }
                        selectButton2(isSelected2: $buttonC2, color2: .blue, text2: "Highschool diploma or equivalent")
                            .onTapGesture {
                                buttonC2.toggle()
                                if buttonC2 {
                                    buttonC1 = false
                                    buttonC3 = false
                                    buttonC4 = false
                                    buttonC8 = false
                                }
                                demographicData["Level of Education"] = "2"
                            }
                        selectButton2(isSelected2: $buttonC3, color2: .blue, text2: "College/technical school, no degree")
                            .onTapGesture {
                                buttonC3.toggle()
                                if buttonC3 {
                                    buttonC2 = false
                                    buttonC1 = false
                                    buttonC4 = false
                                    buttonC8 = false
                                }
                                demographicData["Level of Education"] = "3"
                            }
                        selectButton2(isSelected2: $buttonC4, color2: .blue, text2: "College/technical school, with degree")
                            .onTapGesture {
                                buttonC4.toggle()
                                if buttonC4 {
                                    buttonC2 = false
                                    buttonC3 = false
                                    buttonC1 = false
                                    buttonC8 = false
                                }
                                demographicData["Level of Education"] = "4"
                            }

                        selectButton2(isSelected2: $buttonC8, color2: .blue, text2: "Graduate study in progress/completed")
                            .onTapGesture {
                                buttonC8.toggle()
                                if buttonC8 {
                                    buttonC2 = false
                                    buttonC3 = false
                                    buttonC4 = false
                                    buttonC1 = false
                                }
                                demographicData["Level of Education"] = "5"
                                
                            }
                    }
                    VStack{
                        Text("______________________________________________")
                        Text("Do you work atleast 20 hrs/week in a paid job?")
                            .padding(.leading,6)
                            .font(.title2)
                        selectButton2(isSelected2: $buttonD1, color2: .blue, text2: "No")
                            .onTapGesture {
                                buttonD1.toggle()
                                if buttonD1 {
                                    buttonD2 = false
                                }
                                demographicData["Employment status"] = "0"
                            }
                        selectButton2(isSelected2: $buttonD2, color2: .blue, text2: "Yes")
                            .onTapGesture {
                                buttonD2.toggle()
                                if buttonD2 {
                                    buttonD1 = false
                                }
                                demographicData["Employment status"] = "1"
                            }
                    }
                    
                }
                
                HStack {
                    Button("Next", action: {
                        demographicData["Age"] = age
                        if (otherRace != "") {
                            demographicData["Race/Ethnicity"] = otherRace
                        }
                        if (otherGender != "") {
                            demographicData["Gender"] = otherGender
                        }
                        var _ = print(demographicData)
                        
                        globalVariable.demographicData = demographicData
                        submit = true
                    })
                    Image(systemName:"arrow.right.circle.fill")
                    NavigationLink("", destination: GeneralStress(), isActive: $submit)
                }
            }
        }
    }
}

struct demographicQuestions_Previews: PreviewProvider {
    static var previews: some View {
        demographicQuestions().environmentObject(globalVariables())
    }
}
