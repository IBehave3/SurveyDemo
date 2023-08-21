//
//  savedLocationsView.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 8/11/23.
//

import SwiftUI
import Foundation

struct savedLocationsView: View {
    @State var savedLo : savedLocations
    @State private var showUserLocationsSheet = false
    @State var frequentLo : [String:Any] = [:]
    @State var data = ""
    func saveData() {
        UserDefaults.standard.set(savedLo.dictionary, forKey: savedLo.id)
    }
    
    func getData() {
        frequentLo  = UserDefaults.standard.object(forKey: savedLo.id) as? [String : Any] ?? ["":""]
    }
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack{
            Group{
                TextField("Name", text: $savedLo.name)
                    .font(.title)
                TextField("Address", text: $savedLo.address)
                    .font(.title2)
            }
            .textFieldStyle(.roundedBorder)
            .overlay{
                RoundedRectangle(cornerRadius: 5)
                    .stroke(.gray.opacity(0.5), lineWidth: 2)
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(savedLo.id.isEmpty)
        .toolbar {
            //if true {
            if !savedLo.id.isEmpty {
                ToolbarItem(placement:  .cancellationAction) {
                    Button("Cancel"){
                        dismiss()
                    }
                }
                ToolbarItem(placement:  .navigationBarTrailing) {
                    Button("Save"){
                        //save code
                        saveData()
                        dismiss()
                    }
                }
                ToolbarItemGroup(placement:  .bottomBar) {
                    Spacer()
                    Button {
                        showUserLocationsSheet.toggle()
                    } label: {
                        Image(systemName: "magnifyingglass")
                        Text("Look up Place")
                    }
                    Button {
                        getData()
                        print(frequentLo)
                        print(UserDefaults.standard.dictionaryRepresentation())
                    } label: {
                        Text("get data")
                    }


                }
            }
        }
        .sheet(isPresented: $showUserLocationsSheet) {
            UserLocations(savedLo: $savedLo)
        }
    }
}




struct savedLocationsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            savedLocationsView(savedLo: savedLocations())
        }
        
    }
}
