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
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading) {
                Text("Session: ")
                    .multilineTextAlignment(.leading)
                Button("Red"){
                    answer1 = "Red"
                    globalVariable.dataCollected["Page 5 answer1"] = answer1
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Green"){
                    answer1 = "Green"
                    globalVariable.dataCollected["Page 5 answer1"] = answer1
                }
                .padding()
                .background(.blue)
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
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Warm (+2)"){
                    answer2 = "Warm (+2)"
                    globalVariable.dataCollected["Page 5 answer2"] = answer2
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Slightly Warm (+1)"){
                    answer2 = "Slightly Warm (+1)"
                    globalVariable.dataCollected["Page 5 answer2"] = answer2
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Neutral (0)"){
                    answer2 = "Neutral (0)"
                    globalVariable.dataCollected["Page 5 answer2"] = answer2
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Slightly cool (-1)"){
                    answer2 = "Slightly cool (-1)"
                    globalVariable.dataCollected["Page 5 answer2"] = answer2
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Cool (-2)"){
                    answer2 = "Cool (-2)"
                    globalVariable.dataCollected["Page 5 answer2"] = answer2
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Cold (-3)"){
                    answer2 = "Cold (-3)"
                    globalVariable.dataCollected["Page 5 answer2"] = answer2
                }
                .padding()
                .background(.blue)
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
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Unacceptable"){
                    answer3 = "Unacceptable"
                    globalVariable.dataCollected["Page 5 answer3"] = answer3
                }
                .padding()
                .background(.blue)
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
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Comfortable (+2)"){
                    answer4 = "Comfortable (+2)"
                    globalVariable.dataCollected["Page 5 answer4"] = answer4
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Slightly comfortable (+1)"){
                    answer4 = "Slightly comfortable (+1)"
                    globalVariable.dataCollected["Page 5 answer4"] = answer4
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Slightly uncomfortable (-1)"){
                    answer4 = "Slightly uncomfortable (-1)"
                    globalVariable.dataCollected["Page 5 answer4"] = answer4
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Uncomfortable (-2)"){
                    answer4 = "Uncomfortable (-2)"
                    globalVariable.dataCollected["Page 5 answer4"] = answer4
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Very Uncomfortable (-3)"){
                    answer4 = "Very Uncomfortable (-3)"
                    globalVariable.dataCollected["Page 5 answer4"] = answer4
                }
                .padding()
                .background(.blue)
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
                postData(username: globalVariable.userNameId, body: globalVariable.dataCollected)
            }
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
