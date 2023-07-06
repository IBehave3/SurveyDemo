//
//  secondView.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 6/23/23.
//

import SwiftUI

struct secondView: View {
    
    @Environment(\.rootPresentation) var isActive: Binding<Bool>
    
    @State private var buttonPushed1 = false
    @State private var buttonPushed2 = false
    @State private var buttonPushed3 = false
    @State private var buttonPushed4 = false
    @State private var buttonPushedB1 = false
    @State private var buttonPushedB2 = false
    @State private var buttonPushedB3 = false
    @State private var buttonPushedB4 = false
    @State private var buttonPushedC1 = false
    @State private var buttonPushedC2 = false
    @State private var buttonPushedC3 = false
    @State private var buttonPushedC4 = false
    @State private var buttonPushedD1 = false
    @State private var buttonPushedD2 = false
    @State private var buttonPushedD3 = false
    @State private var buttonPushedD4 = false
    @State private var nextButtonDisabled = true
    @State private var answer1 = ""
    @State private var answer2 = ""
    @State private var answer3 = ""
    @State private var answer4 = ""
    
    var body: some View {
        VStack {
            
            Text("Currently, I am unabel to control the important things in my life")
                .font(.system(size:20))
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
                                answer1 = "1"
                            }
                        }
                    Text("No")
                }
                VStack{
                    selectButton(isSelected: $buttonPushed2, color: .blue, text: "2")
                        .onTapGesture {
                            buttonPushed2.toggle()
                            if buttonPushed2 {
                                buttonPushed1 = false
                                buttonPushed3 = false
                                buttonPushed4 = false
                                answer1 = "2"
                            }
                        }
                    Text("Kinda")
                }
                VStack{
                    selectButton(isSelected: $buttonPushed3, color: .blue, text: "3")
                        .onTapGesture {
                            buttonPushed3.toggle()
                            if buttonPushed3 {
                                buttonPushed1 = false
                                buttonPushed2 = false
                                buttonPushed4 = false
                                answer1 = "3"
                            }
                        }
                    Text("Eh")
                }
                VStack{
                    selectButton(isSelected: $buttonPushed4, color: .blue, text: "4")
                        .onTapGesture {
                            buttonPushed4.toggle()
                            if buttonPushed4 {
                                buttonPushed1 = false
                                buttonPushed2 = false
                                buttonPushed3 = false
                                answer1 = "4"
                            }
                        }
                    Text("Sure")
                }
                
            }
            .controlSize(.mini)
            
            Text("Currently, I feel confident about my ability to handle my personal problems")
                .font(.system(size: 20))
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
                                answer2 = "1"
                            }
                        }
                    Text("No")
                }
                VStack{
                    selectButton(isSelected: $buttonPushedB2, color: .blue, text: "2")
                        .onTapGesture {
                            buttonPushedB2.toggle()
                            if buttonPushedB2 {
                                buttonPushedB1 = false
                                buttonPushedB3 = false
                                buttonPushedB4 = false
                                answer2 = "2"
                            }
                        }
                    Text("Kinda")
                }
                VStack{
                    selectButton(isSelected: $buttonPushedB3, color: .blue, text: "3")
                        .onTapGesture {
                            buttonPushedB3.toggle()
                            if buttonPushedB3 {
                                buttonPushedB1 = false
                                buttonPushedB2 = false
                                buttonPushedB4 = false
                                answer2 = "3"
                            }
                        }
                    Text("Eh")
                }
                VStack{
                    selectButton(isSelected: $buttonPushedB4, color: .blue, text: "4")
                        .onTapGesture {
                            buttonPushedB4.toggle()
                            if buttonPushedB4 {
                                buttonPushedB1 = false
                                buttonPushedB2 = false
                                buttonPushedB3 = false
                                answer2 = "4"
                            }
                        }
                    Text("Sure")
                }
                
            }
            .controlSize(.mini)
            
            Text("Currently, I feel things are going my way")
                .font(.system(size: 20))
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
                                answer3 = "1"
                            }
                        }
                    Text("No")
                }
                VStack{
                    selectButton(isSelected: $buttonPushedC2, color: .blue, text: "2")
                        .onTapGesture {
                            buttonPushedC2.toggle()
                            if buttonPushedC2 {
                                buttonPushedC1 = false
                                buttonPushedC3 = false
                                buttonPushedC4 = false
                                answer3 = "2"
                            }
                        }
                    Text("Kinda")
                }
                VStack{
                    selectButton(isSelected: $buttonPushedC3, color: .blue, text: "3")
                        .onTapGesture {
                            buttonPushedC3.toggle()
                            if buttonPushedC3 {
                                buttonPushedC1 = false
                                buttonPushedC2 = false
                                buttonPushedC4 = false
                                answer3 = "3"
                            }
                        }
                    Text("Eh")
                }
                VStack{
                    selectButton(isSelected: $buttonPushedC4, color: .blue, text: "4")
                        .onTapGesture {
                            buttonPushedC4.toggle()
                            if buttonPushedC4 {
                                buttonPushedC1 = false
                                buttonPushedC2 = false
                                buttonPushedC3 = false
                                answer3 = "4"
                            }
                        }
                    Text("Sure")
                }
                
            }
            .controlSize(.mini)
            
            Text("Currently, I feel difficulties are piling up so high that I could not overcome them")
                .font(.system(size: 20))
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
                                answer4 = "1"
                            }
                        }
                    Text("No")
                }
                VStack{
                    selectButton(isSelected: $buttonPushedD2, color: .blue, text: "2")
                        .onTapGesture {
                            buttonPushedD2.toggle()
                            if buttonPushedD2 {
                                buttonPushedD1 = false
                                buttonPushedD3 = false
                                buttonPushedD4 = false
                                answer4 = "2"
                            }
                        }
                    Text("Kinda")
                }
                VStack{
                    selectButton(isSelected: $buttonPushedD3, color: .blue, text: "3")
                        .onTapGesture {
                            buttonPushedD3.toggle()
                            if buttonPushedD3 {
                                buttonPushedD1 = false
                                buttonPushedD2 = false
                                buttonPushedD4 = false
                                answer4 = "3"
                            }
                        }
                    Text("Eh")
                }
                VStack{
                    selectButton(isSelected: $buttonPushedD4, color: .blue, text: "4")
                        .onTapGesture {
                            buttonPushedD4.toggle()
                            if buttonPushedD4 {
                                buttonPushedD1 = false
                                buttonPushedD2 = false
                                buttonPushedD3 = false
                                answer4 = "4"
                            }
                        }
                    Text("Sure")
                }
                
            }
            .controlSize(.mini)
        }
        .navigationBarBackButtonHidden(false)
        .frame(maxWidth: .infinity)
        
        
       
        HStack {
            let _ = print("answer 1: \(answer1)")
            let _ = print("answer 2: \(answer2)")
            let _ = print("answer 3: \(answer3)")
            let _ = print("answer 4: \(answer4)")
            NavigationLink(destination: ThirdView()){
                Text("Next Question")
            }
            Image(systemName:"arrow.right.circle.fill")
            
        }
        .onTapGesture {
            
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
    }
}
