//
//  demographicQuestions.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 7/27/23.
//

import SwiftUI

struct demographicQuestions: View {
    
    @AppStorage("welcomeScreenShown") var welcomeScreenShown: Bool = false
    
    @EnvironmentObject var signupVariables : SignupVariables
    
    @State var demographic : [String:Any] = [:]
    
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
    
    @State var race = [String]()
    
    var body: some View {
        VStack {
            NavigationView {
                ScrollView{
                    VStack{
                        Text("Please fill out the preliminary questions below:")
                            .font(.title)
                    }
                    VStack{
                        Text("Age:")
                            .padding(.top, 1)
                            .font(.title2)
                        TextField("Age", text: $age , prompt: Text("Age"))
                            .textFieldStyle(.roundedBorder)
                            .font(.title2)
                        VStack{
                            Text("Gender:")
                                .font(.title2)
                            selectButton2(isSelected2: $buttonA1, color2: .blue, text2: "Male")
                                .onTapGesture {
                                    buttonA1.toggle()
                                    if buttonA1{
                                        buttonA2 = false
                                    }
                                    demographic["gender"] = "male"
                                }
                            selectButton2(isSelected2: $buttonA2, color2: .blue, text2: "Female")
                                .onTapGesture {
                                    buttonA2.toggle()
                                    if buttonA2{
                                        buttonA1 = false
                                    }
                                    demographic["gender"] = "female"
                                }
                            TextField("Gender", text: $otherGender , prompt: Text("Other: please specify"))
                                .textFieldStyle(.roundedBorder)
                                .font(.title2)
                        }
                        VStack{
                            Text("Race/Ethnicity: ")
                                .font(.title2)
                            selectButton2(isSelected2: $buttonB1, color2: .blue, text2: "White")
                                .onTapGesture {
                                    if (buttonB1) {
                                        if let indexToRemove = race.firstIndex(of: "white") {
                                            race.remove(at: indexToRemove)
                                        }
                                    } else {
                                        self.race.append("white")
                                    }
                                    buttonB1.toggle()
                                }
                            selectButton2(isSelected2: $buttonB8, color2: .blue, text2: "African American")
                                .onTapGesture {
                                    if (buttonB8) {
                                        if let indexToRemove = race.firstIndex(of: "african american") {
                                            race.remove(at: indexToRemove)
                                        }
                                    } else {
                                        self.race.append("african american")
                                    }
                                    buttonB8.toggle()
                                }
                            selectButton2(isSelected2: $buttonB2, color2: .blue, text2: "Hispanic or Latino")
                                .onTapGesture {
                                    if (buttonB2) {
                                        if let indexToRemove = race.firstIndex(of: "hispanic or latino") {
                                            race.remove(at: indexToRemove)
                                        }
                                    } else {
                                        self.race.append("hispanic or latino")
                                    }
                                    buttonB2.toggle()
                                }
                            selectButton2(isSelected2: $buttonB3, color2: .blue, text2: "American Indian or Alaska Native")
                                .onTapGesture {
                                    if (buttonB3) {
                                        if let indexToRemove = race.firstIndex(of: "american indian or alaska native") {
                                            race.remove(at: indexToRemove)
                                        }
                                    } else {
                                        self.race.append("american indian or alaska native")
                                    }
                                    buttonB3.toggle()
                                }
                            selectButton2(isSelected2: $buttonB4, color2: .blue, text2: "Asian")
                                .onTapGesture {
                                    if (buttonB4) {
                                        if let indexToRemove = race.firstIndex(of: "asian") {
                                            race.remove(at: indexToRemove)
                                        }
                                    } else {
                                        self.race.append("asian")
                                    }
                                    buttonB4.toggle()
                                }
                            selectButton2(isSelected2: $buttonB5, color2: .blue, text2: "Native Hawaiian or Pacific Islander")
                                .onTapGesture {
                                    if (buttonB5) {
                                        if let indexToRemove = race.firstIndex(of: "native hawaiian or pacific islander") {
                                            race.remove(at: indexToRemove)
                                        }
                                    } else {
                                        self.race.append("native hawaiian or pacific islander")
                                    }
                                    buttonB5.toggle()
                                }
                            selectButton2(isSelected2: $buttonB7, color2: .blue, text2: "Middle Eastern or North African")
                                .onTapGesture {
                                    if (buttonB7) {
                                        if let indexToRemove = race.firstIndex(of: "middle easter or north african") {
                                            race.remove(at: indexToRemove)
                                        }
                                    } else {
                                        self.race.append("middle easter or north african")
                                    }
                                    buttonB7.toggle()
                                }
                            TextField("Race/Ethinicity", text: $otherRace , prompt: Text("Other: please specify"))
                                .textFieldStyle(.roundedBorder)
                                .font(.title2)
                        }
                        VStack{
                            Text("Level of Education: ")
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
                                    demographic["levelOfEducation"] = "1"
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
                                    demographic["levelOfEducation"] = "2"
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
                                    demographic["levelOfEducation"] = "3"
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
                                    demographic["levelOfEducation"] = "4"
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
                                    demographic["levelOfEducation"] = "5"
                                    
                                }
                        }
                        VStack{
                            Text("Do you work atleast 20 hrs/week in a paid job?")
                                .font(.title2)
                            selectButton2(isSelected2: $buttonD1, color2: .blue, text2: "No")
                                .onTapGesture {
                                    buttonD1.toggle()
                                    if buttonD1 {
                                        buttonD2 = false
                                    }
                                    demographic["employed"] = "false"
                                }
                            selectButton2(isSelected2: $buttonD2, color2: .blue, text2: "Yes")
                                .onTapGesture {
                                    buttonD2.toggle()
                                    if buttonD2 {
                                        buttonD1 = false
                                    }
                                    demographic["employed"] = "true"
                                }
                        }
                        
                    }
                    
                    HStack {
                        Button("Next", action: {
                            demographic["age"] = age
                            demographic["race"] = self.race
                            if (otherRace != "") {
                                demographic["otherRace"] = otherRace
                            }
                            if (otherGender != "") {
                                demographic["otherGender"] = otherGender
                            }
                            var _ = print(demographic)
                            
                            signupVariables.demographic = demographic
                            submit = true
                        })
                        Image(systemName:"arrow.right.circle.fill")
                        NavigationLink("", destination: GeneralStress(), isActive: $submit)
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
        }
        .frame(maxWidth: .infinity)
        .frame(maxHeight: .infinity)
    }
}

struct demographicQuestions_Previews: PreviewProvider {
    static var previews: some View {
        demographicQuestions().environmentObject(SignupVariables())
    }
}
