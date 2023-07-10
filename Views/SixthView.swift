//
//  SixthView.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 6/23/23.
//

import SwiftUI

struct SixthView: View {
    
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
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Green"){
                    answer1 = "Green"
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
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Warm (+2)"){
                    answer2 = "Warm (+2)"
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Slightly Warm (+1)"){
                    answer2 = "Slightly Warm (+1)"
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Neutral (0)"){
                    answer2 = "Neutral (0)"
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Slightly cool (-1)"){
                    answer2 = "Slightly cool (-1)"
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Cool (-2)"){
                    answer2 = "Cool (-2)"
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Cold (-3)"){
                    answer2 = "Cold (-3)"
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
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Unacceptable"){
                    answer3 = "Unacceptable"
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
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Comfortable (+2)"){
                    answer4 = "Comfortable (+2)"
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Slightly comfortable (+1)"){
                    answer4 = "Slightly comfortable (+1)"
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Slightly uncomfortable (-1)"){
                    answer4 = "Slightly uncomfortable (-1)"
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Uncomfortable (-2)"){
                    answer4 = "Uncomfortable (-2)"
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .clipShape(Rectangle())
                Button("Very Uncomfortable (-3)"){
                    answer4 = "Very Uncomfortable (-3)"
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
                isActive.wrappedValue = false            }
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
    }
}
