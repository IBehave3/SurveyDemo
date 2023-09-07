//
//  selectButton.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 7/3/23.
//

import SwiftUI

struct selectButton: View {
    @Binding var isSelected: Bool
    @State var color: Color
    @State var text: String
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .cornerRadius(10)
                .frame(height: 50)
                .frame(width: 50)
                .foregroundColor(isSelected ? color : .gray)
            Text(text)
                . foregroundColor(.white )
                
        }
         
    }
}

struct selectButton2: View {
    @Binding var isSelected2: Bool
    @State var color2: Color
    @State var text2: String
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .cornerRadius(10)
                .frame(height: 50)
                .foregroundColor(isSelected2 ? color2 : .gray)
            Text(text2)
                .foregroundColor(.white )                
        }
         
    }
}

struct selectButton_Previews: PreviewProvider {
    static var previews: some View {
        selectButton2(isSelected2: .constant(false), color2: .blue, text2: "Option")
    }
}
