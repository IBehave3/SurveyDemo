//
//  ThirdView.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 6/23/23.
//

import SwiftUI

struct ThirdView: View {
    
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

    
    var body: some View{
        VStack{
            VStack{
                Text("To What Extent are you currently feeling stress with regard to the following topics:")
                    .font(.title)
            }
            .padding(.horizontal,10)
            .padding(.bottom,50)
            
            ScrollView {
                VStack {
                    
                    Text("Your health:")
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
                                        answer1 = "Not at All"
                                        globalVariable.dataCollected["Page 2 answer1"] = answer1
                                    }
                                    
                                }
                            Text("Not at All")
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
                                        answer1 = "A little"
                                        globalVariable.dataCollected["Page 2 answer1"] = answer1
                                    }
                                }
                            Text("A little")
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
                                        answer1 = "Moderately"
                                        globalVariable.dataCollected["Page 2 answer1"] = answer1
                                    }
                                }
                            Text("Moderately")
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
                                        answer1 = "Quite a Bit"
                                        globalVariable.dataCollected["Page 2 answer1"] = answer1
                                    }
                                }
                            Text("Quite a Bit")
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
                                        answer1 = "Extremely"
                                        globalVariable.dataCollected["Page 2 answer1"] = answer1
                                    }
                                }
                            Text("Extremely")
                                .font(.system(size: 13))
                        }
                        
                    }
                    .padding(.bottom, 10)
                    .controlSize(.mini)
                    
                    Text("Your finances:")
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
                                        answer2 = "Not at All"
                                        globalVariable.dataCollected["Page 2 answer2"] = answer2
                                    }
                                }
                            Text("Not at All")
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
                                        answer2 = "A little"
                                        globalVariable.dataCollected["Page 2 answer2"] = answer2
                                    }
                                }
                            Text("A little")
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
                                        answer2 = "Moderately"
                                        globalVariable.dataCollected["Page 2 answer2"] = answer2
                                    }
                                }
                            Text("Moderately")
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
                                        answer2 = "Quite a Bit"
                                        globalVariable.dataCollected["Page 2 answer2"] = answer2
                                    }
                                }
                            Text("Quite a Bit")
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
                                        answer2 = "Extremely"
                                        globalVariable.dataCollected["Page 2 answer2"] = answer2
                                    }
                                }
                            Text("Extremely")
                                .font(.system(size: 13))
                        }
                        
                    }
                    .controlSize(.mini)
                    .padding(.bottom, 10)
                    
                    Text("Your family or social relationships:")
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
                                        answer3 = "Not at All"
                                        globalVariable.dataCollected["Page 2 answer3"] = answer3
                                    }
                                }
                            Text("Not at All")
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
                                        answer3 = "A little"
                                        globalVariable.dataCollected["Page 2 answer3"] = answer3
                                    }
                                }
                            Text("A little")
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
                                        answer3 = "Moderately"
                                        globalVariable.dataCollected["Page 2 answer3"] = answer3
                                    }
                                }
                            Text("Moderately")
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
                                        answer3 = "Quite a Bit"
                                        globalVariable.dataCollected["Page 2 answer3"] = answer3
                                    }
                                }
                            Text("Quite a Bit")
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
                                        answer3 = "Extremely"
                                        globalVariable.dataCollected["Page 2 answer3"] = answer3
                                    }
                                }
                            Text("Extremely")
                                .font(.system(size: 13))
                        }
                        
                    }
                    .controlSize(.mini)
                    .padding(.bottom, 10)
                    
                    Text("Your work:")
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
                                        answer4 = "Not at All"
                                        globalVariable.dataCollected["Page 2 answer4"] = answer4
                                    }
                                }
                            Text("Not at All")
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
                                        answer4 = "A little"
                                        globalVariable.dataCollected["Page 2 answer4"] = answer4
                                    }
                                }
                            Text("A little")
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
                                        answer4 = "Moderately"
                                        globalVariable.dataCollected["Page 2 answer4"] = answer4
                                    }
                                }
                            Text("Moderately")
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
                                        answer4 = "Quite a Bit"
                                        globalVariable.dataCollected["Page 2 answer4"] = answer4
                                    }
                                }
                            Text("Quite a Bit")
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
                                        answer4 = "Extremely"
                                        globalVariable.dataCollected["Page 2 answer4"] = answer4
                                    }
                                }
                            Text("Extremely")
                                .font(.system(size: 13))
                        }
                        
                    }
                    .controlSize(.mini)
                    .padding(.bottom, 10)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
                HStack {
                    NavigationLink(destination: FourthView()){
                        Text("Next question")
                    }
                    .navigationBarBackButtonHidden(true)
                    Image(systemName:"arrow.right.circle.fill")
                }
                .disabled(answer1.isEmpty || answer2.isEmpty || answer3.isEmpty || answer4.isEmpty)
                .padding(.top,20)
                .padding(.bottom, 20.0)
            }
            
        }
    
    }

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
            .environmentObject(globalVariables())
    }
}
