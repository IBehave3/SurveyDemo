//
//  GeneralStress.swift
//  SurveyDemo
//
//  Created by Sumit Dhungana on 8/31/2023
//

import SwiftUI

struct GeneralStress: View {
    
    @AppStorage("welcomeScreenShown") var welcomeScreenShown: Bool = false
    
    @EnvironmentObject var globalVariable : globalVariables
    
    @Environment(\.rootPresentation) var isActive: Binding<Bool>
    
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
    @State private var nextButtonDisabled = true
    
    @State private var isAnswer1Selected = false
    @State private var isAnswer2Selected = false
    @State private var isAnswer3Selected = false
    @State private var isAnswer4Selected = false
    
    let NEVER = "Never"
    let ALMOST_NEVER = "Almost Never"
    let SOMETIMES = "Sometimes"
    let OFTEN = "Fairly Often"
    let VERY_OFTEN = "Very Often"
    
    var body: some View {
        VStack {
            
            Text("How often have you felt that you were unable to control the important things in your life?")
                .font(.system(size:16))
                .padding()
            HStack {
                VStack{
                    selectButton(isSelected: $buttonPushed1, color: .blue, text: "1")
                        .buttonStyle(.borderedProminent)
                        .onTapGesture {
                            buttonPushed1.toggle()
                            if buttonPushed1 {
                                buttonPushed2 = false
                                buttonPushed3 = false
                                buttonPushed4 = false
                                buttonPushed5 = false
                                isAnswer1Selected.toggle()
                                globalVariable.generalStress["Answer 1"] = NEVER
                            }
                            
                        }
                    Text(NEVER)
                        .font(.system(size: 13))
                    
                }
                VStack{
                    selectButton(isSelected: $buttonPushed2, color: .blue, text: "2")
                        .onTapGesture {
                            buttonPushed2.toggle()
                            if buttonPushed2 {
                                buttonPushed1 = false
                                buttonPushed3 = false
                                buttonPushed4 = false
                                buttonPushed5 = false
                                isAnswer1Selected.toggle()
                                globalVariable.generalStress["Answer 1"] = ALMOST_NEVER
                            }
                        }
                    Text(ALMOST_NEVER)
                        .font(.system(size: 13))
                }
                VStack{
                    selectButton(isSelected: $buttonPushed3, color: .blue, text: "3")
                        .onTapGesture {
                            buttonPushed3.toggle()
                            if buttonPushed3 {
                                buttonPushed1 = false
                                buttonPushed2 = false
                                buttonPushed4 = false
                                buttonPushed5 = false
                                isAnswer1Selected.toggle()
                                globalVariable.generalStress["Answer 1"] = SOMETIMES
                            }
                        }
                    Text(SOMETIMES)
                        .font(.system(size: 13))
                }
                VStack{
                    selectButton(isSelected: $buttonPushed4, color: .blue, text: "4")
                        .onTapGesture {
                            buttonPushed4.toggle()
                            if buttonPushed4 {
                                buttonPushed1 = false
                                buttonPushed2 = false
                                buttonPushed3 = false
                                buttonPushed5 = false
                                isAnswer1Selected.toggle()
                                globalVariable.generalStress["Answer 1"] = OFTEN
                            }
                        }
                    Text(OFTEN)
                        .font(.system(size: 13))
                }
                VStack{
                    selectButton(isSelected: $buttonPushed5, color: .blue, text: "5")
                        .onTapGesture {
                            buttonPushed5.toggle()
                            if buttonPushed5 {
                                buttonPushed1 = false
                                buttonPushed2 = false
                                buttonPushed3 = false
                                buttonPushed4 = false
                                isAnswer1Selected.toggle()
                                globalVariable.generalStress["Answer 1"] = VERY_OFTEN
                            }
                        }
                    Text(VERY_OFTEN)
                        .font(.system(size: 13))
                }
                
            }
            .controlSize(.mini)
            
            Text("How often have you felt confident about your ability to handle your personal problems?")
                .font(.system(size: 16))
                .padding()
            HStack {
                VStack{
                    selectButton(isSelected: $buttonPushedB1, color: .blue, text: "1")
                        .buttonStyle(.borderedProminent)
                        .onTapGesture {
                            buttonPushedB1.toggle()
                            if buttonPushedB1 {
                                buttonPushedB2 = false
                                buttonPushedB3 = false
                                buttonPushedB4 = false
                                buttonPushedB5 = false
                                isAnswer2Selected.toggle()
                                globalVariable.generalStress["Answer 2"] = NEVER
                            }
                        }
                    Text(NEVER)
                        .font(.system(size: 13))
                }
                VStack{
                    selectButton(isSelected: $buttonPushedB2, color: .blue, text: "2")
                        .onTapGesture {
                            buttonPushedB2.toggle()
                            if buttonPushedB2 {
                                buttonPushedB1 = false
                                buttonPushedB3 = false
                                buttonPushedB4 = false
                                buttonPushedB5 = false
                                isAnswer2Selected.toggle()
                                globalVariable.generalStress["Answer 2"] = ALMOST_NEVER
                            }
                        }
                    Text(ALMOST_NEVER)
                        .font(.system(size: 13))
                }
                VStack{
                    selectButton(isSelected: $buttonPushedB3, color: .blue, text: "3")
                        .onTapGesture {
                            buttonPushedB3.toggle()
                            if buttonPushedB3 {
                                buttonPushedB1 = false
                                buttonPushedB2 = false
                                buttonPushedB4 = false
                                buttonPushedB5 = false
                                isAnswer2Selected.toggle()
                                globalVariable.generalStress["Answer 2"] = SOMETIMES
                            }
                        }
                    Text(SOMETIMES)
                        .font(.system(size: 13))
                }
                VStack{
                    selectButton(isSelected: $buttonPushedB4, color: .blue, text: "4")
                        .onTapGesture {
                            buttonPushedB4.toggle()
                            if buttonPushedB4 {
                                buttonPushedB1 = false
                                buttonPushedB2 = false
                                buttonPushedB3 = false
                                buttonPushedB5 = false
                                isAnswer2Selected.toggle()
                                globalVariable.generalStress["Answer 2"] = OFTEN
                            }
                        }
                    Text(OFTEN)
                        .font(.system(size: 13))
                }
                VStack{
                    selectButton(isSelected: $buttonPushedB5, color: .blue, text: "5")
                        .onTapGesture {
                            buttonPushedB5.toggle()
                            if buttonPushedB4 {
                                buttonPushedB1 = false
                                buttonPushedB2 = false
                                buttonPushedB3 = false
                                buttonPushedB4 = false
                                isAnswer2Selected.toggle()
                                globalVariable.generalStress["Answer 2"] = VERY_OFTEN
                            }
                        }
                    Text(VERY_OFTEN)
                        .font(.system(size: 13))
                }
                
            }
            .controlSize(.mini)
            
            Text("How often have you felt that things were going your way?")
                .font(.system(size: 16))
                .padding()
            HStack {
                VStack{
                    selectButton(isSelected: $buttonPushedC1, color: .blue, text: "1")
                        .buttonStyle(.borderedProminent)
                        .onTapGesture {
                            buttonPushedC1.toggle()
                            if buttonPushedC1 {
                                buttonPushedC2 = false
                                buttonPushedC3 = false
                                buttonPushedC4 = false
                                buttonPushedC5 = false
                                isAnswer3Selected.toggle()
                                globalVariable.generalStress["Answer 3"] = NEVER
                            }
                        }
                    Text(NEVER)
                        .font(.system(size: 13))
                }
                VStack{
                    selectButton(isSelected: $buttonPushedC2, color: .blue, text: "2")
                        .onTapGesture {
                            buttonPushedC2.toggle()
                            if buttonPushedC2 {
                                buttonPushedC1 = false
                                buttonPushedC3 = false
                                buttonPushedC4 = false
                                buttonPushedC5 = false
                                isAnswer3Selected.toggle()
                                globalVariable.generalStress["Answer 3"] = ALMOST_NEVER
                            }
                        }
                    Text(ALMOST_NEVER)
                        .font(.system(size: 13))
                }
                VStack{
                    selectButton(isSelected: $buttonPushedC3, color: .blue, text: "3")
                        .onTapGesture {
                            buttonPushedC3.toggle()
                            if buttonPushedC3 {
                                buttonPushedC1 = false
                                buttonPushedC2 = false
                                buttonPushedC4 = false
                                buttonPushedC5 = false
                                isAnswer3Selected.toggle()
                                globalVariable.generalStress["Answer 3"] = SOMETIMES
                            }
                        }
                    Text(SOMETIMES)
                        .font(.system(size: 13))
                }
                VStack{
                    selectButton(isSelected: $buttonPushedC4, color: .blue, text: "4")
                        .onTapGesture {
                            buttonPushedC4.toggle()
                            if buttonPushedC4 {
                                buttonPushedC1 = false
                                buttonPushedC2 = false
                                buttonPushedC3 = false
                                buttonPushedC5 = false
                                isAnswer3Selected.toggle()
                                globalVariable.generalStress["Answer 3"] = OFTEN
                            }
                        }
                    Text(OFTEN)
                        .font(.system(size: 13))
                }
                VStack{
                    selectButton(isSelected: $buttonPushedC5, color: .blue, text: "5")
                        .onTapGesture {
                            buttonPushedC5.toggle()
                            if buttonPushedC5 {
                                buttonPushedC1 = false
                                buttonPushedC2 = false
                                buttonPushedC3 = false
                                buttonPushedC4 = false
                                isAnswer3Selected.toggle()
                                globalVariable.generalStress["Answer 3"] = VERY_OFTEN
                            }
                        }
                    Text(VERY_OFTEN)
                        .font(.system(size: 13))
                }
                
            }
            .controlSize(.mini)
            
            Text("How often have you felt difficulties were piling up so high that you could not overcome them?")
                .font(.system(size: 16))
                .padding()
            HStack {
                VStack{
                    selectButton(isSelected: $buttonPushedD1, color: .blue, text: "1")
                        .buttonStyle(.borderedProminent)
                        .onTapGesture {
                            buttonPushedD1.toggle()
                            if buttonPushedD1 {
                                buttonPushedD2 = false
                                buttonPushedD3 = false
                                buttonPushedD4 = false
                                buttonPushedD5 = false
                                isAnswer4Selected.toggle()
                                globalVariable.generalStress["Answer 4"] = NEVER
                            }
                        }
                    Text(NEVER)
                        .font(.system(size: 13))
                }
                VStack{
                    selectButton(isSelected: $buttonPushedD2, color: .blue, text: "2")
                        .onTapGesture {
                            buttonPushedD2.toggle()
                            if buttonPushedD2 {
                                buttonPushedD1 = false
                                buttonPushedD3 = false
                                buttonPushedD4 = false
                                buttonPushedD5 = false
                                buttonPushedD5 = false
                                isAnswer4Selected.toggle()
                                globalVariable.generalStress["Answer 4"] = ALMOST_NEVER
                            }
                        }
                    Text(ALMOST_NEVER)
                        .font(.system(size: 13))
                }
                VStack{
                    selectButton(isSelected: $buttonPushedD3, color: .blue, text: "3")
                        .onTapGesture {
                            buttonPushedD3.toggle()
                            if buttonPushedD3 {
                                buttonPushedD1 = false
                                buttonPushedD2 = false
                                buttonPushedD4 = false
                                buttonPushedD5 = false
                                buttonPushedD5 = false
                                isAnswer4Selected.toggle()
                                globalVariable.generalStress["Answer 4"] = SOMETIMES
                            }
                        }
                    Text(SOMETIMES)
                        .font(.system(size: 13))
                }
                VStack{
                    selectButton(isSelected: $buttonPushedD4, color: .blue, text: "4")
                        .onTapGesture {
                            buttonPushedD4.toggle()
                            if buttonPushedD4 {
                                buttonPushedD1 = false
                                buttonPushedD2 = false
                                buttonPushedD3 = false
                                buttonPushedD5 = false
                                buttonPushedD5 = false
                                isAnswer4Selected.toggle()
                                globalVariable.generalStress["Answer 4"] = OFTEN
                            }
                        }
                    Text(OFTEN)
                        .font(.system(size: 13))
                }
                VStack{
                    selectButton(isSelected: $buttonPushedD5, color: .blue, text: "5")
                        .onTapGesture {
                            buttonPushedD5.toggle()
                            if buttonPushedD5 {
                                buttonPushedD1 = false
                                buttonPushedD2 = false
                                buttonPushedD3 = false
                                buttonPushedD4 = false
                                buttonPushedD5 = false
                                isAnswer4Selected.toggle()
                                globalVariable.generalStress["Answer 4"] = VERY_OFTEN
                            }
                        }
                    Text(VERY_OFTEN)
                        .font(.system(size: 13))
                }
                
            }
            .controlSize(.mini)
        }
        .navigationBarBackButtonHidden(false)
        .frame(maxWidth: .infinity)
        .frame(maxHeight: .infinity)
        
        
       
        Button("Submit"){
            var _ = print(globalVariable.generalStress)
            welcomeScreenShown.toggle()
        }
        .buttonStyle(.borderedProminent)
        .disabled(!isAnswer1Selected || !isAnswer2Selected || !isAnswer3Selected || !isAnswer4Selected)
    }
        
   
}
    

struct GeneralStress_Previews: PreviewProvider {
    @Binding var isActive: Bool
    static var previews: some View {
        secondView()
            .environmentObject(globalVariables())
    }
}