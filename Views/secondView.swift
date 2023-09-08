//
//  secondView.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 6/23/23.
//

import SwiftUI

struct secondView: View {
    
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
    @State private var answer1 = ""
    @State private var answer2 = ""
    @State private var answer3 = ""
    @State private var answer4 = ""
    
    var body: some View {
        ScrollView {
            VStack {
                
                Text("Currently, I am unable to control the important things in my life")
                    .font(.system(size:20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 5)

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
                                    answer1 = "Strongly Disagree"
                                    globalVariable.dataCollected["Page 1 answer1"] = answer1
                                }
                                
                            }
                        Text("Strongly Disagree")
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
                                    answer1 = "Disagree"
                                    globalVariable.dataCollected["Page 1 answer1"] = answer1
                                }
                            }
                        Text("Disagree")
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
                                    answer1 = "Neutral"
                                    globalVariable.dataCollected["Page 1 answer1"] = answer1
                                }
                            }
                        Text("Neutral")
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
                                    answer1 = "Agree"
                                    globalVariable.dataCollected["Page 1 answer1"] = answer1
                                }
                            }
                        Text("Agree")
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
                                    answer1 = "Strongly Agree"
                                    globalVariable.dataCollected["Page 1 answer1"] = answer1
                                }
                            }
                        Text("Strongly Agree")
                            .font(.system(size: 13))
                    }
                    
                }
                .padding(.bottom, 10)
                .controlSize(.mini)
                
                Text("Currently, I feel confident about my ability to handle my personal problems")
                    .font(.system(size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 5)

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
                                    answer2 = "Strongly Disagree"
                                    globalVariable.dataCollected["Page 1 answer2"] = answer2
                                }
                            }
                        Text("Strongly Disagree")
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
                                    answer2 = "Disagree"
                                    globalVariable.dataCollected["Page 1 answer2"] = answer2
                                }
                            }
                        Text("Disagree")
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
                                    answer2 = "Neutral"
                                    globalVariable.dataCollected["Page 1 answer2"] = answer2
                                }
                            }
                        Text("Neutral")
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
                                    answer2 = "Agree"
                                    globalVariable.dataCollected["Page 1 answer2"] = answer2
                                }
                            }
                        Text("Agree")
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
                                    answer2 = "Strongly Agree"
                                    globalVariable.dataCollected["Page 1 answer2"] = answer2
                                }
                            }
                        Text("Strongly Agree")
                            .font(.system(size: 13))
                    }
                    
                }
                .controlSize(.mini)
                .padding(.bottom, 10)
                
                Text("Currently, I feel things are going my way")
                    .font(.system(size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 5)

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
                                    answer3 = "Strongly Disagree"
                                    globalVariable.dataCollected["Page 1 answer3"] = answer3
                                }
                            }
                        Text("Strongly Disagree")
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
                                    answer3 = "Disagree"
                                    globalVariable.dataCollected["Page 1 answer3"] = answer3
                                }
                            }
                        Text("Disagree")
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
                                    answer3 = "Neutral"
                                    globalVariable.dataCollected["Page 1 answer3"] = answer3
                                }
                            }
                        Text("Neutral")
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
                                    answer3 = "Agree"
                                    globalVariable.dataCollected["Page 1 answer3"] = answer3
                                }
                            }
                        Text("Agree")
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
                                    answer3 = "Strongly Agree"
                                    globalVariable.dataCollected["Page 1 answer3"] = answer3
                                }
                            }
                        Text("Strongly Agree")
                            .font(.system(size: 13))
                    }
                    
                }
                .controlSize(.mini)
                .padding(.bottom, 10)
                
                Text("Currently, I feel difficulties are piling up so high that I could not overcome them")
                    .font(.system(size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 5)

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
                                    answer4 = "Strongly Disagree"
                                    globalVariable.dataCollected["Page 1 answer4"] = answer4
                                }
                            }
                        Text("Strongly Disagree")
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
                                    answer4 = "Disagree"
                                    globalVariable.dataCollected["Page 1 answer4"] = answer4
                                }
                            }
                        Text("Disagree")
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
                                    answer4 = "Neutral"
                                    globalVariable.dataCollected["Page 1 answer4"] = answer4
                                }
                            }
                        Text("Neutral")
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
                                    answer4 = "Agree"
                                    globalVariable.dataCollected["Page 1 answer4"] = answer4
                                }
                            }
                        Text("Agree")
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
                                    answer4 = "Strongly Agree"
                                    globalVariable.dataCollected["Page 1 answer4"] = answer4
                                }
                            }
                        Text("Strongly Agree")
                            .font(.system(size: 13))
                    }
                    
                }
                .controlSize(.mini)
                .padding(.bottom, 10)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
       
        HStack {
            let _ = print("answer 1: \(answer1)")
            let _ = print("answer 2: \(answer2)")
            let _ = print("answer 3: \(answer3)")
            let _ = print("answer 4: \(answer4)")
            let _ = print("Global Variable: \(globalVariable.userNameId)")
            let _ = print(globalVariable.dataCollected)
            NavigationLink(destination: ThirdView()){
                Text("Next Question")
            }
            .navigationBarBackButtonHidden(true)
            Image(systemName:"arrow.right.circle.fill")
            
        }
        .disabled(answer1.isEmpty || answer2.isEmpty || answer3.isEmpty || answer4.isEmpty)
        .padding(.top,20)
        .padding(.bottom, 20.0)
    }
        
   
}
    

struct secondView_Previews: PreviewProvider {
    @Binding var isActive: Bool
    static var previews: some View {
        secondView()
            .environmentObject(globalVariables())
    }
}
