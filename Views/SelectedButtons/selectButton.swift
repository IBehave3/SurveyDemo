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

struct selectButton_Previews: PreviewProvider {
    static var previews: some View {
        selectButton(isSelected: .constant(false), color: .blue, text: "Option")
    }
}
