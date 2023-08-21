//
//  SixthView.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 6/23/23.
//

import SwiftUI

struct SixthView: View {
    
    @EnvironmentObject var globalVariable : globalVariables
    
    @Environment(\.rootPresentation) var isActive: Binding<Bool>
    @State var answer1 = ""
    @State var answer2 = ""
    @State var answer3 = ""
    @State var answer4 = ""
    @State var isSelected1 : Bool = false
    @State var isSelected2 : Bool = false
    @State var isSelected3 : Bool = false
    @State var isSelected4 : Bool = false
    @State var isSelected5 : Bool = false
    @State var isSelected6 : Bool = false
    @State var isSelected7 : Bool = false
    @State var isSelected8 : Bool = false
    @State var isSelected9 : Bool = false
    @State var isSelected10 : Bool = false
    @State var isSelected11: Bool = false
    @State var isSelected12: Bool = false
    @State var isSelected13: Bool = false
    @State var isSelected14: Bool = false
    @State var isSelected15: Bool = false
    @State var isSelected16: Bool = false
    @State var isSelected17: Bool = false
    @State var color : Color = .blue
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading) {
                Text("Session: ")
                    .multilineTextAlignment(.leading)
                Button("Red"){
                    answer1 = "Red"
                    globalVariable.dataCollected["Page 5 answer1"] = answer1
                    isSelected1.toggle()
                    if isSelected1 {
                        isSelected2 = false
                    }
                }
                .padding()
                .background(isSelected1 ? color : .gray)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Green"){
                    answer1 = "Green"
                    globalVariable.dataCollected["Page 5 answer1"] = answer1
                    isSelected2.toggle()
                    if isSelected2 {
                        isSelected1 = false
                    }
                }
                .padding()
                .background(isSelected2 ? color : .gray)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                    
            }
            .padding(.leading, -190.0)
            
            VStack(alignment: .leading) {
                Text("What is your general Thermal sensation at this point? ")
                Button("Hot (+3)"){
                    answer2 = "Hot (+3)"
                    globalVariable.dataCollected["Page 5 answer2"] = answer2
                    isSelected3.toggle()
                    if isSelected3 {
                        isSelected4 = false
                        isSelected5 = false
                        isSelected6 = false
                        isSelected7 = false
                        isSelected8 = false
                        isSelected9 = false
                    }
                }
                .padding()
                .background(isSelected3 ? color : .gray)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Warm (+2)"){
                    answer2 = "Warm (+2)"
                    globalVariable.dataCollected["Page 5 answer2"] = answer2
                    isSelected4.toggle()
                    if isSelected4 {
                        isSelected3 = false
                        isSelected5 = false
                        isSelected6 = false
                        isSelected7 = false
                        isSelected8 = false
                        isSelected9 = false
                    }
                }
                .padding()
                .background(isSelected4 ? color : .gray)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Slightly Warm (+1)"){
                    answer2 = "Slightly Warm (+1)"
                    globalVariable.dataCollected["Page 5 answer2"] = answer2
                    isSelected5.toggle()
                    if isSelected5 {
                        isSelected4 = false
                        isSelected3 = false
                        isSelected6 = false
                        isSelected7 = false
                        isSelected8 = false
                        isSelected9 = false
                    }
                }
                .padding()
                .background(isSelected5 ? color : .gray)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Neutral (0)"){
                    answer2 = "Neutral (0)"
                    globalVariable.dataCollected["Page 5 answer2"] = answer2
                    isSelected6.toggle()
                    if isSelected6 {
                        isSelected4 = false
                        isSelected5 = false
                        isSelected3 = false
                        isSelected7 = false
                        isSelected8 = false
                        isSelected9 = false
                    }
                }
                .padding()
                .background(isSelected6 ? color : .gray)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Slightly cool (-1)"){
                    answer2 = "Slightly cool (-1)"
                    globalVariable.dataCollected["Page 5 answer2"] = answer2
                    isSelected7.toggle()
                    if isSelected7 {
                        isSelected4 = false
                        isSelected5 = false
                        isSelected6 = false
                        isSelected3 = false
                        isSelected8 = false
                        isSelected9 = false
                    }
                }
                .padding()
                .background(isSelected7 ? color : .gray)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Cool (-2)"){
                    answer2 = "Cool (-2)"
                    globalVariable.dataCollected["Page 5 answer2"] = answer2
                    isSelected8.toggle()
                    if isSelected8 {
                        isSelected4 = false
                        isSelected5 = false
                        isSelected6 = false
                        isSelected7 = false
                        isSelected3 = false
                        isSelected9 = false
                    }
                }
                .padding()
                .background(isSelected8 ? color : .gray)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Cold (-3)"){
                    answer2 = "Cold (-3)"
                    globalVariable.dataCollected["Page 5 answer2"] = answer2
                    isSelected9.toggle()
                    if isSelected9 {
                        isSelected4 = false
                        isSelected5 = false
                        isSelected6 = false
                        isSelected7 = false
                        isSelected8 = false
                        isSelected3 = false
                    }
                }
                .padding()
                .background(isSelected9 ? color : .gray)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
            }
            .padding(.leading,10)
            
                
            VStack(alignment: .leading) {
                Text("Is the thermal enviroment at this point in time acceptable to you, in general? ")
                Button("Acceptable"){
                    answer3 = "Acceptable"
                    globalVariable.dataCollected["Page 5 answer3"] = answer3
                    isSelected10.toggle()
                    if isSelected10{
                        isSelected11 = false
                    }
                }
                .padding()
                .background(isSelected10 ? color : .gray)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Unacceptable"){
                    answer3 = "Unacceptable"
                    globalVariable.dataCollected["Page 5 answer3"] = answer3
                    isSelected11.toggle()
                    if isSelected11{
                        isSelected10 = false
                    }
                }
                .padding()
                .background(isSelected11 ? color : .gray)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
            }
            .padding(.leading,0)
            .padding(.trailing,35)
            
            VStack(alignment: .leading) {
                Text("What is your general thermal comfort vote, at this point in time?")
                Button("Very comfortable (+3)"){
                    answer4 = "Very comfortable (+3)"
                    globalVariable.dataCollected["Page 5 answer4"] = answer4
                    isSelected12.toggle()
                    if isSelected12 {
                        isSelected13 = false
                        isSelected14 = false
                        isSelected15 = false
                        isSelected16 = false
                        isSelected17 = false
                    }
                }
                .padding()
                .background(isSelected12 ? color : .gray)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Comfortable (+2)"){
                    answer4 = "Comfortable (+2)"
                    globalVariable.dataCollected["Page 5 answer4"] = answer4
                    isSelected13.toggle()
                    if isSelected13 {
                        isSelected12 = false
                        isSelected14 = false
                        isSelected15 = false
                        isSelected16 = false
                        isSelected17 = false
                    }
                }
                .padding()
                .background(isSelected13 ? color : .gray)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Slightly comfortable (+1)"){
                    answer4 = "Slightly comfortable (+1)"
                    globalVariable.dataCollected["Page 5 answer4"] = answer4
                    isSelected14.toggle()
                    if isSelected14 {
                        isSelected13 = false
                        isSelected12 = false
                        isSelected15 = false
                        isSelected16 = false
                        isSelected17 = false
                    }
                }
                .padding()
                .background(isSelected14 ? color : .gray)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Slightly uncomfortable (-1)"){
                    answer4 = "Slightly uncomfortable (-1)"
                    globalVariable.dataCollected["Page 5 answer4"] = answer4
                    isSelected15.toggle()
                    if isSelected15 {
                        isSelected13 = false
                        isSelected14 = false
                        isSelected12 = false
                        isSelected16 = false
                        isSelected17 = false
                    }
                }
                .padding()
                .background(isSelected15 ? color : .gray)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Uncomfortable (-2)"){
                    answer4 = "Uncomfortable (-2)"
                    globalVariable.dataCollected["Page 5 answer4"] = answer4
                    isSelected16.toggle()
                    if isSelected16 {
                        isSelected13 = false
                        isSelected14 = false
                        isSelected15 = false
                        isSelected12 = false
                        isSelected17 = false
                    }
                }
                .padding()
                .background(isSelected16 ? color : .gray)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Very Uncomfortable (-3)"){
                    answer4 = "Very Uncomfortable (-3)"
                    globalVariable.dataCollected["Page 5 answer4"] = answer4
                    isSelected17.toggle()
                    if isSelected17 {
                        isSelected13 = false
                        isSelected14 = false
                        isSelected15 = false
                        isSelected16 = false
                        isSelected12 = false
                    }
                }
                .padding()
                .background(isSelected17 ? color : .gray)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                
            }
            .padding()
        
            let _ = print(answer1)
            let _ = print(answer2)
            let _ = print(answer3)
            let _ = print(answer4)
            
            Button("Finish Survey"){
                isActive.wrappedValue = false
                NotificationManager().schedulesTimedNotification()
                postData(username: globalVariable.userNameId, body: globalVariable.dataCollected)
            }
            .buttonStyle(.borderedProminent)
            .padding()
            .disabled(answer1.isEmpty || answer2.isEmpty || answer3.isEmpty || answer4.isEmpty)
           
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .navigationBarBackButtonHidden(false)
            
        }
    }

        

struct SixthView_Previews: PreviewProvider {
    static var previews: some View {
        SixthView()
            .environmentObject(globalVariables())
    }
}
