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
    
    @State var scale1: Double = 0
    @State var scale2: Double = 0
    @State var scale3: Double = 0
    @State var scale4: Double = 0
    @State var clicked : Bool = true
    
    var body: some View{
        VStack{
            VStack{
                Text("To What Extent are you currently feeling stress with regard to the following topics:")
                    .font(.title)
            }
            .padding(.horizontal,10)
            .padding(.top,-100)
            .padding(.bottom,50)
            VStack{
                Text(" Your health")
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 20))
                HStack{
                    Text("Not at all:")
                    Slider(value: $scale1, in: 0...4)
                    let _ = print(scale1)
                    Text("Very")
                }
                .padding()
            
                
            }
            VStack{
                Text(" Your finances")
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 20))
                HStack{
                    Text("Not at all:")
                    Slider(value: $scale2, in: 0...4)
                    let _ = print(scale2)
                    Text("Very")
                }
                .padding()
            }
            VStack{
                Text(" Your family or social relationships")
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 20))
                HStack{
                    Text("Not at all:")
                    Slider(value: $scale3, in: 0...4)
                    let _ = print(scale3)
                    Text("Very")
                }
                .padding()
            }
            VStack{
                Text(" Your work")
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 20))
                HStack{
                    Text("Not at all:")
                    Slider(value: $scale4, in: 0...4)
                    let _ = print(scale4)
                    Text("Very")
                }
                .padding()
            }
            
            HStack{
                Button("Submit"){
                    globalVariable.dataCollected["Page 2 answer1"] = scale1
                    globalVariable.dataCollected["Page 2 answer2"] = scale2
                    globalVariable.dataCollected["Page 2 answer3"] = scale3
                    globalVariable.dataCollected["Page 2 answer4"] = scale4
                    clicked.toggle()
                }
                .buttonStyle(.borderedProminent)
                .padding(.trailing,50)
                NavigationLink(destination: FourthView()){
                    Text("Next question")
                }
                .disabled(clicked)
                Image(systemName:"arrow.right.circle.fill")
            }
            .padding(.top,20)
            
        }
        .navigationBarBackButtonHidden(false)
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
            .environmentObject(globalVariables())
    }
}
