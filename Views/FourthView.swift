//
//  FourthView.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 6/23/23.
//

import SwiftUI

struct FourthView: View {
    
    @EnvironmentObject var globalVariable : globalVariables
    
    @Environment(\.rootPresentation) var isActive: Binding<Bool>
    @State private var button0Pushed = false
    @State private var button1Pushed = false
    @State private var button2Pushed = false
    @State private var button3Pushed = false
    @State private var button4Pushed = false
    @State private var answer = ""
    
    
    var body: some View{
        VStack{
            Text("To what extent do you currently feel stressed?")
                .font(.title)
                .padding(.horizontal, 5)
            HStack{
                VStack{
                    selectButton(isSelected: $button0Pushed, color: .blue, text: "0")
                        .buttonStyle(.borderedProminent)
                        .onTapGesture {
                            button0Pushed.toggle()
                            if button0Pushed {
                                button1Pushed = false
                                button2Pushed = false
                                button3Pushed = false
                                button4Pushed = false
                                answer = "0"
                                globalVariable.dataCollected["Page 3 answer"] = answer
                            }
                        }
                    Text("Not at All")
                        .font(.system(size: 14))
                }
                .padding(.horizontal, 5.0)
                VStack{
                    selectButton(isSelected: $button1Pushed, color: .blue, text: "1")
                        .buttonStyle(.borderedProminent)
                        .onTapGesture {
                            button1Pushed.toggle()
                            if button1Pushed {
                                button0Pushed = false
                                button2Pushed = false
                                button3Pushed = false
                                button4Pushed = false
                                answer = "1"
                                globalVariable.dataCollected["Page 3 answer"] = answer
                            }
                        }
                    Text("A Little")
                        .font(.system(size: 14))
                }
                .padding(.horizontal, 5.0)
                VStack{
                    selectButton(isSelected: $button2Pushed, color: .blue, text: "2")
                        .buttonStyle(.borderedProminent)
                        .onTapGesture {
                            button2Pushed.toggle()
                            if button2Pushed {
                                button1Pushed = false
                                button0Pushed = false
                                button3Pushed = false
                                button4Pushed = false
                                answer = "2"
                                globalVariable.dataCollected["Page 3 answer"] = answer
                            }
                        }
                    Text("Moderately")
                        .font(.system(size: 14))
                }
                .padding(.horizontal, 5.0)
                VStack{
                    selectButton(isSelected: $button3Pushed, color: .blue, text: "3")
                        .buttonStyle(.borderedProminent)
                        .onTapGesture {
                            button3Pushed.toggle()
                            if button3Pushed {
                                button1Pushed = false
                                button2Pushed = false
                                button0Pushed = false
                                button4Pushed = false
                                answer = "3"
                                globalVariable.dataCollected["Page 3 answer"] = answer
                            }
                        }
                    Text("Quite a Bit")
                        .font(.system(size: 14))
                }
                .padding(.horizontal, 5.0)
                VStack{
                    selectButton(isSelected: $button4Pushed, color: .blue, text: "4")
                        .buttonStyle(.borderedProminent)
                        .onTapGesture {
                            button4Pushed.toggle()
                            if button4Pushed {
                                button1Pushed = false
                                button2Pushed = false
                                button3Pushed = false
                                button0Pushed = false
                                answer = "4"
                                globalVariable.dataCollected["Page 3 answer"] = answer
                            }
                        }
                    Text("Extremly")
                        .font(.system(size: 14))
                }
                .padding(.horizontal, 5)
        }
        }
        .padding(.bottom,100)
        
        Button("Finish Survey"){
            isActive.wrappedValue = false
            NotificationManager().schedulesTimedNotification()
            postData(username: globalVariable.userNameId, body: globalVariable.dataCollected)
        }
        .buttonStyle(.borderedProminent)
        .disabled(answer.isEmpty)
        .padding()
        
    }
}

struct FourthView_Previews: PreviewProvider {
    static var previews: some View {
        FourthView()
            .environmentObject(globalVariables())
    }
}
