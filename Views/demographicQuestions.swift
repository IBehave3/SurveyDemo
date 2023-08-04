//
//  demographicQuestions.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 7/27/23.
//

import SwiftUI

struct demographicQuestions: View {
    
    @AppStorage("welcomeScreenShown") var welcomeScreenShown: Bool = false
    
    @State var demographicData : [String:Any] = [:]
    
    @State var name : String = ""
    @State var age : String = ""
    
    @State var placeOfBirth : String = ""
    @State var placeRaised : String = ""
    @State var placesLived : String = ""
    
    @State var buttonA1 : Bool = false
    @State var buttonA2 : Bool = false
    @State var buttonA3 : Bool = false
    
    @State var buttonB1 : Bool = false
    @State var buttonB2 : Bool = false
    @State var buttonB3 : Bool = false
    @State var buttonB4 : Bool = false
    @State var buttonB5 : Bool = false
    @State var buttonB6 : Bool = false
    @State var buttonB7 : Bool = false
    @State var buttonB8 : Bool = false
    
    @State var buttonC1 : Bool = false
    @State var buttonC2 : Bool = false
    @State var buttonC3 : Bool = false
    @State var buttonC4 : Bool = false
    @State var buttonC5 : Bool = false
    @State var buttonC6 : Bool = false
    @State var buttonC7 : Bool = false
    @State var buttonC8 : Bool = false
    
    @State var buttonD1 : Bool = false
    @State var buttonD2 : Bool = false
    @State var buttonD3 : Bool = false
    @State var buttonD4 : Bool = false
    @State var buttonD5 : Bool = false
    @State var buttonD6 : Bool = false
    @State var buttonD7 : Bool = false
    
    @State var submit : Bool = false
    
    var body: some View {
        ScrollView{
            VStack{
                TextField("Name", text: $name , prompt: Text("Name"))
                    .textFieldStyle(.roundedBorder)
                    .font(.title2)
                TextField("Age", text: $age , prompt: Text("Age"))
                    .textFieldStyle(.roundedBorder)
                    .font(.title2)
                Text("________________________________________________")
                VStack{
                    Text("Gender:")
                        .padding(.leading,-210)
                        .font(.title2)
                    selectButton2(isSelected2: $buttonA1, color2: .blue, text2: "Male")
                        .onTapGesture {
                            buttonA1.toggle()
                            if buttonA1{
                                buttonA2 = false
                                buttonA3 = false
                            }
                            demographicData["Gender:"] = "male"
                            demographicData["Name:"] = name
                            demographicData["Age:"] = age
                        }
                    selectButton2(isSelected2: $buttonA2, color2: .blue, text2: "Female")
                        .onTapGesture {
                            buttonA2.toggle()
                            if buttonA2{
                                buttonA1 = false
                                buttonA3 = false
                            }
                            demographicData["Gender:"] = "female"
                            demographicData["Name:"] = name
                            demographicData["Age:"] = age
                        }
                    selectButton2(isSelected2: $buttonA3, color2: .blue, text2: "Prefer not to say")
                        .onTapGesture {
                            buttonA3.toggle()
                            if buttonA3{
                                buttonA2 = false
                                buttonA1 = false
                            }
                            demographicData["Gender:"] = "prefer not to say"
                        }
                }
                VStack{
                    Text("________________________________________________")
                    Text("Race/Ethnicity: ")
                        .padding(.leading,-210)
                        .font(.title2)
                    selectButton2(isSelected2: $buttonB1, color2: .blue, text2: "White")
                        .onTapGesture {
                            buttonB1.toggle()
                            if buttonB1 {
                                buttonB2 = false
                                buttonB3 = false
                                buttonB4 = false
                                buttonB5 = false
                                buttonB6 = false
                                buttonB7 = false
                                buttonB8 = false
                            }
                            demographicData["Race/Ethnicity"] = "White"
                        }
                    selectButton2(isSelected2: $buttonB8, color2: .blue, text2: "African American")
                        .onTapGesture {
                            buttonB8.toggle()
                            if buttonB8 {
                                buttonB1 = false
                                buttonB3 = false
                                buttonB4 = false
                                buttonB5 = false
                                buttonB6 = false
                                buttonB2 = false
                                buttonB7 = false
                            }
                            demographicData["Race/Ethnicity"] = "African American"
                        }
                    selectButton2(isSelected2: $buttonB2, color2: .blue, text2: "Hispanic or Latino")
                        .onTapGesture {
                            buttonB2.toggle()
                            if buttonB2 {
                                buttonB1 = false
                                buttonB3 = false
                                buttonB4 = false
                                buttonB5 = false
                                buttonB6 = false
                                buttonB7 = false
                                buttonB8 = false
                            }
                            demographicData["Race/Ethnicity"] = "Hispanic or Latino"
                        }
                    selectButton2(isSelected2: $buttonB3, color2: .blue, text2: "American Indian or Alaska Native")
                        .onTapGesture {
                            buttonB3.toggle()
                            if buttonB3 {
                                buttonB1 = false
                                buttonB2 = false
                                buttonB4 = false
                                buttonB5 = false
                                buttonB6 = false
                                buttonB7 = false
                                buttonB8 = false
                            }
                            demographicData["Race/Ethnicity"] = "American Indian or Alaska Native"
                        }
                    selectButton2(isSelected2: $buttonB4, color2: .blue, text2: "Asian")
                        .onTapGesture {
                            buttonB4.toggle()
                            if buttonB4 {
                                buttonB1 = false
                                buttonB3 = false
                                buttonB2 = false
                                buttonB5 = false
                                buttonB6 = false
                                buttonB7 = false
                                buttonB8 = false
                            }
                            demographicData["Race/Ethnicity"] = "Asian"
                        }
                    selectButton2(isSelected2: $buttonB5, color2: .blue, text2: "Native Hawaiian or Pacific Islander")
                        .onTapGesture {
                            buttonB5.toggle()
                            if buttonB5 {
                                buttonB1 = false
                                buttonB3 = false
                                buttonB4 = false
                                buttonB2 = false
                                buttonB6 = false
                                buttonB7 = false
                                buttonB8 = false
                            }
                            demographicData["Race/Ethnicity"] = "Native Hawaiian or Pacific Islander"
                        }
                    selectButton2(isSelected2: $buttonB6, color2: .blue, text2: "Other")
                        .onTapGesture {
                            buttonB6.toggle()
                            if buttonB6 {
                                buttonB1 = false
                                buttonB3 = false
                                buttonB4 = false
                                buttonB5 = false
                                buttonB2 = false
                                buttonB7 = false
                                buttonB8 = false
                            }
                            demographicData["Race/Ethnicity"] = "Other"
                        }
                    selectButton2(isSelected2: $buttonB7, color2: .blue, text2: "Prefer not to answer")
                        .onTapGesture {
                            buttonB7.toggle()
                            if buttonB7 {
                                buttonB1 = false
                                buttonB3 = false
                                buttonB4 = false
                                buttonB5 = false
                                buttonB6 = false
                                buttonB2 = false
                                buttonB8 = false
                            }
                            demographicData["Race/Ethnicity"] = "Prefer not to answer"
                        }
                }
                VStack{
                    Text("________________________________________________")
                    Text("I was born in (Country and State): ")
                        .padding(.leading,-210)
                        .padding(.trailing,-200)
                        .font(.title2)
                    TextField("Place of birth", text: $placeOfBirth, prompt: Text("Place of birth"))
                        .textFieldStyle(.roundedBorder)
                }
                VStack{
                    Text("________________________________________________")
                    Text("I was raised in (Country, State, City): ")
                        .padding(.leading,-210)
                        .padding(.trailing,-200)
                        .font(.title2)
                    TextField("Place Riased", text: $placeRaised, prompt: Text("Place Raised"))
                        .textFieldStyle(.roundedBorder)
                }
                VStack{
                    Text("________________________________________________")
                    Text("Please list the places in which you have been living for the past 5 years: ")
                        .padding(.leading,3)
                        .font(.title2)
                    TextField("Places Lived", text: $placesLived, prompt: Text("Places Lived"))
                        .textFieldStyle(.roundedBorder)
                }
                VStack{
                    Text("________________________________________________")
                    Text("Level of Education: ")
                        .padding(.leading,-210)
                        .font(.title2)
                    selectButton2(isSelected2: $buttonC1, color2: .blue, text2: "Less than Highschool")
                        .onTapGesture {
                            buttonC1.toggle()
                            if buttonC1 {
                                buttonC2 = false
                                buttonC3 = false
                                buttonC4 = false
                                buttonC5 = false
                                buttonC6 = false
                                buttonC7 = false
                                buttonC8 = false
                            }
                            demographicData["Level of Education:"] = "Less than Highschool"
                            demographicData["Born in:"] = placeOfBirth
                            demographicData["Raised in:"] = placeRaised
                            demographicData["Lived in:"] = placesLived
                        }
                    selectButton2(isSelected2: $buttonC2, color2: .blue, text2: "Highschool diploma or equivalent")
                        .onTapGesture {
                            buttonC2.toggle()
                            if buttonC2 {
                                buttonC1 = false
                                buttonC3 = false
                                buttonC4 = false
                                buttonC5 = false
                                buttonC6 = false
                                buttonC7 = false
                                buttonC8 = false
                            }
                            demographicData["Level of Education:"] = "Less than Highschool"
                            demographicData["Born in:"] = placeOfBirth
                            demographicData["Raised in:"] = placeRaised
                            demographicData["Lived in:"] = placesLived
                        }
                    selectButton2(isSelected2: $buttonC3, color2: .blue, text2: "Some college, no degree")
                        .onTapGesture {
                            buttonC3.toggle()
                            if buttonC3 {
                                buttonC2 = false
                                buttonC1 = false
                                buttonC4 = false
                                buttonC5 = false
                                buttonC6 = false
                                buttonC7 = false
                                buttonC8 = false
                            }
                            demographicData["Level of Education:"] = "Less than Highschool"
                            demographicData["Born in:"] = placeOfBirth
                            demographicData["Raised in:"] = placeRaised
                            demographicData["Lived in:"] = placesLived
                        }
                    selectButton2(isSelected2: $buttonC4, color2: .blue, text2: "Post-secondary non-degree award")
                        .onTapGesture {
                            buttonC4.toggle()
                            if buttonC4 {
                                buttonC2 = false
                                buttonC3 = false
                                buttonC1 = false
                                buttonC5 = false
                                buttonC6 = false
                                buttonC7 = false
                                buttonC8 = false
                            }
                            demographicData["Level of Education:"] = "Post-secondary non-degree award"
                            demographicData["Born in:"] = placeOfBirth
                            demographicData["Raised in:"] = placeRaised
                            demographicData["Lived in:"] = placesLived
                        }
                    selectButton2(isSelected2: $buttonC5, color2: .blue, text2: "Associate's Degree")
                        .onTapGesture {
                            buttonC5.toggle()
                            if buttonC5 {
                                buttonC2 = false
                                buttonC3 = false
                                buttonC4 = false
                                buttonC1 = false
                                buttonC6 = false
                                buttonC7 = false
                                buttonC8 = false
                            }
                            demographicData["Level of Education:"] = "Associates Degree"
                            demographicData["Born in:"] = placeOfBirth
                            demographicData["Raised in:"] = placeRaised
                            demographicData["Lived in:"] = placesLived
                        }
                    selectButton2(isSelected2: $buttonC6, color2: .blue, text2: "Bachelor's Degree")
                        .onTapGesture {
                            buttonC6.toggle()
                            if buttonC6 {
                                buttonC2 = false
                                buttonC3 = false
                                buttonC4 = false
                                buttonC5 = false
                                buttonC1 = false
                                buttonC7 = false
                                buttonC8 = false
                            }
                            demographicData["Level of Education:"] = "Bachelors Degree"
                            demographicData["Born in:"] = placeOfBirth
                            demographicData["Raised in:"] = placeRaised
                            demographicData["Lived in:"] = placesLived
                        }
                    selectButton2(isSelected2: $buttonC7, color2: .blue, text2: "Master's Degree")
                        .onTapGesture {
                            buttonC7.toggle()
                            if buttonC7 {
                                buttonC2 = false
                                buttonC3 = false
                                buttonC4 = false
                                buttonC5 = false
                                buttonC6 = false
                                buttonC1 = false
                                buttonC8 = false
                            }
                            demographicData["Level of Education:"] = "Masters Degree"
                            demographicData["Born in:"] = placeOfBirth
                            demographicData["Raised in:"] = placeRaised
                            demographicData["Lived in:"] = placesLived
                        }
                    selectButton2(isSelected2: $buttonC8, color2: .blue, text2: "Doctoral or Professional Degree")
                        .onTapGesture {
                            buttonC8.toggle()
                            if buttonC8 {
                                buttonC2 = false
                                buttonC3 = false
                                buttonC4 = false
                                buttonC5 = false
                                buttonC6 = false
                                buttonC7 = false
                                buttonC1 = false
                            }
                            demographicData["Level of Education:"] = "Doctoral or Professinoal Degree"
                            demographicData["Born in:"] = placeOfBirth
                            demographicData["Raised in:"] = placeRaised
                            demographicData["Lived in:"] = placesLived
                        }
                }
                VStack{
                    Text("________________________________________________")
                    Text("Employment Status: ")
                        .padding(.leading,-210)
                        .font(.title2)
                    selectButton2(isSelected2: $buttonD1, color2: .blue, text2: "Employed full time")
                        .onTapGesture {
                            buttonD1.toggle()
                            if buttonD1 {
                                buttonD2 = false
                                buttonD3 = false
                                buttonD4 = false
                                buttonD5 = false
                                buttonD6 = false
                                buttonD7 = false
                            }
                            demographicData["Employment status:"] = "Emplyed full time"
                        }
                    selectButton2(isSelected2: $buttonD2, color2: .blue, text2: "Employed part time")
                        .onTapGesture {
                            buttonD2.toggle()
                            if buttonD2 {
                                buttonD1 = false
                                buttonD3 = false
                                buttonD4 = false
                                buttonD5 = false
                                buttonD6 = false
                                buttonD7 = false
                            }
                            demographicData["Employment status:"] = "Emplyed part time"
                        }
                    selectButton2(isSelected2: $buttonD3, color2: .blue, text2: "Unemployed looking for work")
                        .onTapGesture {
                            buttonD3.toggle()
                            if buttonD3 {
                                buttonD2 = false
                                buttonD1 = false
                                buttonD4 = false
                                buttonD5 = false
                                buttonD6 = false
                                buttonD7 = false
                            }
                            demographicData["Employment status:"] = "Unemployed looking for work"
                        }
                    selectButton2(isSelected2: $buttonD4, color2: .blue, text2: "Unemployed not looking for work")
                        .onTapGesture {
                            buttonD4.toggle()
                            if buttonD4 {
                                buttonD2 = false
                                buttonD3 = false
                                buttonD1 = false
                                buttonD5 = false
                                buttonD6 = false
                                buttonD7 = false
                            }
                            demographicData["Employment status:"] = "Unemployed not looking for work"
                        }
                    selectButton2(isSelected2: $buttonD5, color2: .blue, text2: "Retired")
                        .onTapGesture {
                            buttonD5.toggle()
                            if buttonD5 {
                                buttonD2 = false
                                buttonD3 = false
                                buttonD4 = false
                                buttonD1 = false
                                buttonD6 = false
                                buttonD7 = false
                            }
                            demographicData["Employment status:"] = "Retired"
                        }
                    selectButton2(isSelected2: $buttonD6, color2: .blue, text2: "Student")
                        .onTapGesture {
                            buttonD6.toggle()
                            if buttonD6 {
                                buttonD2 = false
                                buttonD3 = false
                                buttonD4 = false
                                buttonD5 = false
                                buttonD1 = false
                                buttonD7 = false
                            }
                            demographicData["Employment status:"] = "Student"
                        }
                    selectButton2(isSelected2: $buttonD7, color2: .blue, text2: "Disabled")
                        .onTapGesture {
                            buttonD7.toggle()
                            if buttonD7 {
                                buttonD2 = false
                                buttonD3 = false
                                buttonD4 = false
                                buttonD5 = false
                                buttonD6 = false
                                buttonD1 = false
                            }
                            demographicData["Employment status:"] = "Disabled"
                        }
                }
                
            }
            VStack{
                var _ = print(demographicData)
                selectButton(isSelected: $submit, color: .blue, text: "Submit")
                    .onTapGesture {
                        welcomeScreenShown.toggle()
                        NotificationManager().schedulesTimedNotification()
                        //postData(username: <#T##String#>, body: <#T##[String : Any]#>)
                    }
            }
            //.frame(maxWidth: .infinity)
        }
    }
}
struct demographicQuestions_Previews: PreviewProvider {
    static var previews: some View {
        demographicQuestions()
    }
}
