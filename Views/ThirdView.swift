//
//  ThirdView.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 6/23/23.
//

import SwiftUI

struct ThirdView: View {
    
    @EnvironmentObject var globalVariable : globalVariables
    
    @EnvironmentObject var dailySurveyAnswers : DailySurveyAnswers
        
    @State private var buttonPushed1 = false
    @State private var buttonPushed2 = false
    @State private var buttonPushed3 = false
    @State private var buttonPushed4 = false
    @State private var buttonPushed5 = false
    @State private var buttonPushedB1 = false
    @State private var buttonPushedB2 = false
    @State private var buttonPushedB3 = false
    @State private var buttonPushedB4 = false
    @State private var buttonPushedB5 = false
    @State private var buttonPushedC1 = false
    @State private var buttonPushedC2 = false
    @State private var buttonPushedC3 = false
    @State private var buttonPushedC4 = false
    @State private var buttonPushedC5 = false
    @State private var buttonPushedD1 = false
    @State private var buttonPushedD2 = false
    @State private var buttonPushedD3 = false
    @State private var buttonPushedD4 = false
    @State private var buttonPushedD5 = false
    @State private var navigateToHome = false
    @State private var answer1 = ""
    @State private var answer2 = ""
    @State private var answer3 = ""
    @State private var answer4 = ""

    @State private var showAlert = false
    @State private var errMsg = ""
    
    @State private var unauthorized = false
    
    var body: some View{
        
            ScrollView {
                Text("To What Extent are you currently feeling stress with regard to the following topics:")
                    .font(.title)
                    .padding(.horizontal,10)
                
                VStack {
                    Spacer()
                    
                    Text("1. Your health:")
                        .font(.system(size:20))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 5)
                    
                    HStack {
                        VStack{
                            selectButton(isSelected: $buttonPushed1, color: .blue, text: "0")
                                .buttonStyle(.borderedProminent)
                                .onTapGesture {
                                    buttonPushed1.toggle()
                                    if buttonPushed1 {
                                        buttonPushed2 = false
                                        buttonPushed3 = false
                                        buttonPushed4 = false
                                        buttonPushed5 = false
                                        answer1 = "0"
                                        dailySurveyAnswers.stressYourHealth = 0
                                    }
                                    
                                }
                            Text("Not at All")
                                .font(.system(size: 13))
                            
                        }
                        VStack{
                            selectButton(isSelected: $buttonPushed2, color: .blue, text: "1")
                                .onTapGesture {
                                    buttonPushed2.toggle()
                                    if buttonPushed2 {
                                        buttonPushed1 = false
                                        buttonPushed3 = false
                                        buttonPushed4 = false
                                        buttonPushed5 = false
                                        answer1 = "1"
                                        dailySurveyAnswers.stressYourHealth = 1
                                    }
                                }
                            Text("A little")
                                .font(.system(size: 13))
                        }
                        VStack{
                            selectButton(isSelected: $buttonPushed3, color: .blue, text: "2")
                                .onTapGesture {
                                    buttonPushed3.toggle()
                                    if buttonPushed3 {
                                        buttonPushed1 = false
                                        buttonPushed2 = false
                                        buttonPushed4 = false
                                        buttonPushed5 = false
                                        answer1 = "2"
                                        dailySurveyAnswers.stressYourHealth = 2
                                    }
                                }
                            Text("Moderately")
                                .font(.system(size: 13))
                        }
                        VStack{
                            selectButton(isSelected: $buttonPushed4, color: .blue, text: "3")
                                .onTapGesture {
                                    buttonPushed4.toggle()
                                    if buttonPushed4 {
                                        buttonPushed1 = false
                                        buttonPushed2 = false
                                        buttonPushed3 = false
                                        buttonPushed5 = false
                                        answer1 = "3"
                                        dailySurveyAnswers.stressYourHealth = 3
                                    }
                                }
                            Text("Quite a Bit")
                                .font(.system(size: 13))
                        }
                        VStack{
                            selectButton(isSelected: $buttonPushed5, color: .blue, text: "4")
                                .onTapGesture {
                                    buttonPushed5.toggle()
                                    if buttonPushed5 {
                                        buttonPushed1 = false
                                        buttonPushed2 = false
                                        buttonPushed3 = false
                                        buttonPushed4 = false
                                        answer1 = "4"
                                        dailySurveyAnswers.stressYourHealth = 4
                                    }
                                }
                            Text("Extremely")
                                .font(.system(size: 13))
                        }
                        
                    }
                    .padding(.bottom, 10)
                    .controlSize(.mini)
                    
                    Text("2. Your finances:")
                        .font(.system(size: 20))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 5)
                    
                    HStack {
                        VStack{
                            selectButton(isSelected: $buttonPushedB1, color: .blue, text: "0")
                                .buttonStyle(.borderedProminent)
                                .onTapGesture {
                                    buttonPushedB1.toggle()
                                    if buttonPushedB1 {
                                        buttonPushedB2 = false
                                        buttonPushedB3 = false
                                        buttonPushedB4 = false
                                        buttonPushedB5 = false
                                        answer2 = "0"
                                        dailySurveyAnswers.stressYourFinances = 0
                                    }
                                }
                            Text("Not at All")
                                .font(.system(size: 13))
                        }
                        VStack{
                            selectButton(isSelected: $buttonPushedB2, color: .blue, text: "1")
                                .onTapGesture {
                                    buttonPushedB2.toggle()
                                    if buttonPushedB2 {
                                        buttonPushedB1 = false
                                        buttonPushedB3 = false
                                        buttonPushedB4 = false
                                        buttonPushedB5 = false
                                        answer2 = "1"
                                        dailySurveyAnswers.stressYourFinances = 1
                                    }
                                }
                            Text("A little")
                                .font(.system(size: 13))
                        }
                        VStack{
                            selectButton(isSelected: $buttonPushedB3, color: .blue, text: "2")
                                .onTapGesture {
                                    buttonPushedB3.toggle()
                                    if buttonPushedB3 {
                                        buttonPushedB1 = false
                                        buttonPushedB2 = false
                                        buttonPushedB4 = false
                                        buttonPushedB5 = false
                                        answer2 = "2"
                                        dailySurveyAnswers.stressYourFinances = 2
                                    }
                                }
                            Text("Moderately")
                                .font(.system(size: 13))
                        }
                        VStack{
                            selectButton(isSelected: $buttonPushedB4, color: .blue, text: "3")
                                .onTapGesture {
                                    buttonPushedB4.toggle()
                                    if buttonPushedB4 {
                                        buttonPushedB1 = false
                                        buttonPushedB2 = false
                                        buttonPushedB3 = false
                                        buttonPushedB5 = false
                                        answer2 = "3"
                                        dailySurveyAnswers.stressYourFinances = 3
                                    }
                                }
                            Text("Quite a Bit")
                                .font(.system(size: 13))
                        }
                        VStack{
                            selectButton(isSelected: $buttonPushedB5, color: .blue, text: "4")
                                .onTapGesture {
                                    buttonPushedB5.toggle()
                                    if buttonPushedB5 {
                                        buttonPushedB1 = false
                                        buttonPushedB2 = false
                                        buttonPushedB3 = false
                                        buttonPushedB4 = false
                                        answer2 = "4"
                                        dailySurveyAnswers.stressYourFinances = 4
                                    }
                                }
                            Text("Extremely")
                                .font(.system(size: 13))
                        }
                        
                    }
                    .controlSize(.mini)
                    .padding(.bottom, 10)
                    
                    Text("3. Your family or social relationships:")
                        .font(.system(size: 20))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 5)
                    
                    HStack {
                        VStack{
                            selectButton(isSelected: $buttonPushedC1, color: .blue, text: "0")
                                .buttonStyle(.borderedProminent)
                                .onTapGesture {
                                    buttonPushedC1.toggle()
                                    if buttonPushedC1 {
                                        buttonPushedC2 = false
                                        buttonPushedC3 = false
                                        buttonPushedC4 = false
                                        answer3 = "0"
                                        dailySurveyAnswers.stressFamilySocialRelationships = 0
                                    }
                                }
                            Text("Not at All")
                                .font(.system(size: 13))
                        }
                        VStack{
                            selectButton(isSelected: $buttonPushedC2, color: .blue, text: "1")
                                .onTapGesture {
                                    buttonPushedC2.toggle()
                                    if buttonPushedC2 {
                                        buttonPushedC1 = false
                                        buttonPushedC3 = false
                                        buttonPushedC4 = false
                                        buttonPushedC5 = false
                                        answer3 = "1"
                                        dailySurveyAnswers.stressFamilySocialRelationships = 1
                                    }
                                }
                            Text("A little")
                                .font(.system(size: 13))
                        }
                        VStack{
                            selectButton(isSelected: $buttonPushedC3, color: .blue, text: "2")
                                .onTapGesture {
                                    buttonPushedC3.toggle()
                                    if buttonPushedC3 {
                                        buttonPushedC1 = false
                                        buttonPushedC2 = false
                                        buttonPushedC4 = false
                                        buttonPushedC5 = false
                                        answer3 = "2"
                                        dailySurveyAnswers.stressFamilySocialRelationships = 2
                                    }
                                }
                            Text("Moderately")
                                .font(.system(size: 13))
                        }
                        VStack{
                            selectButton(isSelected: $buttonPushedC4, color: .blue, text: "3")
                                .onTapGesture {
                                    buttonPushedC4.toggle()
                                    if buttonPushedC4 {
                                        buttonPushedC1 = false
                                        buttonPushedC2 = false
                                        buttonPushedC3 = false
                                        buttonPushedC5 = false
                                        answer3 = "3"
                                        dailySurveyAnswers.stressFamilySocialRelationships = 3
                                    }
                                }
                            Text("Quite a Bit")
                                .font(.system(size: 13))
                        }
                        VStack{
                            selectButton(isSelected: $buttonPushedC5, color: .blue, text: "4")
                                .onTapGesture {
                                    buttonPushedC5.toggle()
                                    if buttonPushedC5 {
                                        buttonPushedC1 = false
                                        buttonPushedC2 = false
                                        buttonPushedC3 = false
                                        buttonPushedC4 = false
                                        answer3 = "4"
                                        dailySurveyAnswers.stressFamilySocialRelationships = 4
                                    }
                                }
                            Text("Extremely")
                                .font(.system(size: 13))
                        }
                        
                    }
                    .controlSize(.mini)
                    .padding(.bottom, 10)
                    
                    Text("4. Your work:")
                        .font(.system(size: 20))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 5)
                    
                    HStack {
                        VStack{
                            selectButton(isSelected: $buttonPushedD1, color: .blue, text: "0")
                                .buttonStyle(.borderedProminent)
                                .onTapGesture {
                                    buttonPushedD1.toggle()
                                    if buttonPushedD1 {
                                        buttonPushedD2 = false
                                        buttonPushedD3 = false
                                        buttonPushedD4 = false
                                        buttonPushedD5 = false
                                        answer4 = "0"
                                        dailySurveyAnswers.stressYourWord = 0
                                    }
                                }
                            Text("Not at All")
                                .font(.system(size: 13))
                        }
                        VStack{
                            selectButton(isSelected: $buttonPushedD2, color: .blue, text: "1")
                                .onTapGesture {
                                    buttonPushedD2.toggle()
                                    if buttonPushedD2 {
                                        buttonPushedD1 = false
                                        buttonPushedD3 = false
                                        buttonPushedD4 = false
                                        buttonPushedD5 = false
                                        answer4 = "1"
                                        dailySurveyAnswers.stressYourWord = 1
                                    }
                                }
                            Text("A little")
                                .font(.system(size: 13))
                        }
                        VStack{
                            selectButton(isSelected: $buttonPushedD3, color: .blue, text: "2")
                                .onTapGesture {
                                    buttonPushedD3.toggle()
                                    if buttonPushedD3 {
                                        buttonPushedD1 = false
                                        buttonPushedD2 = false
                                        buttonPushedD4 = false
                                        buttonPushedD5 = false
                                        answer4 = "2"
                                        dailySurveyAnswers.stressYourWord = 2
                                    }
                                }
                            Text("Moderately")
                                .font(.system(size: 13))
                        }
                        VStack{
                            selectButton(isSelected: $buttonPushedD4, color: .blue, text: "3")
                                .onTapGesture {
                                    buttonPushedD4.toggle()
                                    if buttonPushedD4 {
                                        buttonPushedD1 = false
                                        buttonPushedD2 = false
                                        buttonPushedD3 = false
                                        buttonPushedD5 = false
                                        answer4 = "3"
                                        dailySurveyAnswers.stressYourWord = 3
                                    }
                                }
                            Text("Quite a Bit")
                                .font(.system(size: 13))
                        }
                        VStack{
                            selectButton(isSelected: $buttonPushedD5, color: .blue, text: "4")
                                .onTapGesture {
                                    buttonPushedD5.toggle()
                                    if buttonPushedD5 {
                                        buttonPushedD1 = false
                                        buttonPushedD2 = false
                                        buttonPushedD3 = false
                                        buttonPushedD4 = false
                                        answer4 = "4"
                                        dailySurveyAnswers.stressYourWord = 4
                                    }
                                }
                            Text("Extremely")
                                .font(.system(size: 13))
                        }
                        
                    }
                    .controlSize(.mini)
                    .padding(.bottom, 10)
                }
                
                Button("Finish Survey"){
                    
                    submitDailySurvey(data: dailySurveyAnswers) {
                        result in switch result {
                            case .success(let token):
                                print(token)
                                navigateToHome.toggle()
                        case .failure(let error as NSError):
                                if (error.code == 401) {
                                    unauthorized = true
                                } else {
                                    errMsg = error.domain
                                    showAlert = true
                                }
                            }
                    }
                    
                }
                .alert(isPresented: $showAlert) {
                            Alert(
                                title: Text("Error submitting daily survey."),
                                message: Text(errMsg),
                                dismissButton: .default(Text("OK"))
                            )
                        }
                .buttonStyle(.borderedProminent)
                .padding()
                NavigationLink("", destination: homeView(), isActive: $navigateToHome)
                NavigationLink("", destination: SignupLoginView(), isActive: $unauthorized)

            }
            .frame(maxWidth: .infinity)
            
        }
    
    }

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
            .environmentObject(globalVariables())
    }
}
