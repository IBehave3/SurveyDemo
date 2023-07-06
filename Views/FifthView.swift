//
//  FifthView.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 6/23/23.
//

import SwiftUI

struct FifthView: View {
    
    @Environment(\.rootPresentation) var isActive: Binding<Bool>
    
    @State var choice1 = ""
    @State var choice2 = ""
    @State var choice3 = ""
    @State var choice4 = ""
    @State var choice5 = ""
    @State var choice6 = ""
    @State var choice7 = ""
    @State var choice8 = ""
    @State var choice9 = ""
    var body: some View{
        ScrollView{
            VStack{
                HStack(alignment: .top){
                    Text("When I am stressed, I can't bring myself to do anything")
                        .font(.system(size: 20))
                    Menu{
                        Button(action:{
                            choice1 = "1"
                        }, label: {
                            Text("1: Strongly Agree")
                        })
                        Button(action:{
                            choice1 = "2"
                        }, label: {
                            Text("2: Agree")
                        })
                        Button(action:{
                            choice1 = "3"
                        }, label: {
                            Text("3: Neutral")
                        })
                        Button(action:{
                            choice1 = "4"
                        }, label: {
                            Text("4: Disagree")
                        })
                        Button(action:{
                            choice1 = "5"
                        }, label: {
                            Text("5: Strongly Disagree")
                        })
                        
                    } label: {
                        Label(
                            title: { Text("\(choice1)")},
                            icon: {Image(systemName: "list.number.rtl")}
                        )
                    }
                    
                }
                //.offset(x:10,y:10)
                .padding(.leading,5.0)
                
                HStack{
                    Text("I can get things done even when I am feeling stressed")
                        .font(.system(size: 20))
                    Menu{
                        Button(action:{
                            choice2 = "1"
                        }, label: {
                            Text("1: Strongly Agree")
                        })
                        Button(action:{
                            choice2 = "2"
                        }, label: {
                            Text("2: Agree")
                        })
                        Button(action:{
                            choice2 = "3"
                        }, label: {
                            Text("3: Neutral")
                        })
                        Button(action:{
                            choice2 = "4"
                        }, label: {
                            Text("4: Disagree")
                        })
                        Button(action:{
                            choice2 = "5"
                        }, label: {
                            Text("5: Strongly Disagree")
                        })
                        
                    } label: {
                        Label(
                            title: { Text("\(choice2)")},
                            icon: {Image(systemName: "list.number.rtl")}
                        )
                    }
                    
                }
                .padding(.leading, -10.0)
                
                HStack{
                    Text("Most days I am so stressed I can't function")
                        .font(.system(size: 20))
                        .padding(.leading, -6)
                    Menu{
                        Button(action:{
                            choice3 = "1"
                        }, label: {
                            Text("1: Strongly Agree")
                        })
                        Button(action:{
                            choice3 = "2"
                        }, label: {
                            Text("2: Agree")
                        })
                        Button(action:{
                            choice3 = "3"
                        }, label: {
                            Text("3: Neutral")
                        })
                        Button(action:{
                            choice3 = "4"
                        }, label: {
                            Text("4: Disagree")
                        })
                        Button(action:{
                            choice3 = "5"
                        }, label: {
                            Text("5: Strongly Disagree")
                        })
                        
                    } label: {
                        Label(
                            title: { Text("\(choice3)")},
                            icon: {Image(systemName: "list.number.rtl")}
                        )
                    }
                    
                }
                .padding(.leading,-20)
                .padding(.trailing)
                
                
                HStack{
                    Text("Most days my stress is completley overwhelming")
                        .font(.system(size: 20))
                    Menu{
                        Button(action:{
                            choice4 = "1"
                        }, label: {
                            Text("1: Strongly Agree")
                        })
                        Button(action:{
                            choice4 = "2"
                        }, label: {
                            Text("2: Agree")
                        })
                        Button(action:{
                            choice4 = "3"
                        }, label: {
                            Text("3: Neutral")
                        })
                        Button(action:{
                            choice4 = "4"
                        }, label: {
                            Text("4: Disagree")
                        })
                        Button(action:{
                            choice4 = "5"
                        }, label: {
                            Text("5: Strongly Disagree")
                        })
                        
                    } label: {
                        Label(
                            title: { Text("\(choice4)")},
                            icon: {Image(systemName: "list.number.rtl")}
                        )
                    }
                }
                .padding(.leading,-35)
                
                HStack{
                    Text("My stress makes going to work/school increasingly difficult ")
                        .font(.system(size: 20))
                    Menu{
                        Button(action:{
                            choice5 = "1"
                        }, label: {
                            Text("1: Strongly Agree")
                        })
                        Button(action:{
                            choice5 = "2"
                        }, label: {
                            Text("2: Agree")
                        })
                        Button(action:{
                            choice5 = "3"
                        }, label: {
                            Text("3: Neutral")
                        })
                        Button(action:{
                            choice5 = "4"
                        }, label: {
                            Text("4: Disagree")
                        })
                        Button(action:{
                            choice5 = "5"
                        }, label: {
                            Text("5: Strongly Disagree")
                        })
                        
                    } label: {
                        Label(
                            title: { Text("\(choice5)")},
                            icon: {Image(systemName: "list.number.rtl")}
                        )
                    }
                }
                .padding(.leading,0)
                
                HStack{
                    Text("When I feel stressed I can get over it quickly")
                        .font(.system(size: 20))
                    Menu{
                        Button(action:{
                            choice6 = "1"
                        }, label: {
                            Text("1: Strongly Agree")
                        })
                        Button(action:{
                            choice6 = "2"
                        }, label: {
                            Text("2: Agree")
                        })
                        Button(action:{
                            choice6 = "3"
                        }, label: {
                            Text("3: Neutral")
                        })
                        Button(action:{
                            choice6 = "4"
                        }, label: {
                            Text("4: Disagree")
                        })
                        Button(action:{
                            choice6 = "5"
                        }, label: {
                            Text("5: Strongly Disagree")
                        })
                        
                    } label: {
                        Label(
                            title: { Text("\(choice6)")},
                            icon: {Image(systemName: "list.number.rtl")}
                        )
                    }
                }
                .padding(.leading,0)
                
                HStack{
                    Text("I am so stressed I feel numb")
                        .font(.system(size: 20))
                    Menu{
                        Button(action:{
                            choice7 = "1"
                        }, label: {
                            Text("1: Strongly Agree")
                        })
                        Button(action:{
                            choice7 = "2"
                        }, label: {
                            Text("2: Agree")
                        })
                        Button(action:{
                            choice7 = "3"
                        }, label: {
                            Text("3: Neutral")
                        })
                        Button(action:{
                            choice7 = "4"
                        }, label: {
                            Text("4: Disagree")
                        })
                        Button(action:{
                            choice7 = "5"
                        }, label: {
                            Text("5: Strongly Disagree")
                        })
                        
                    } label: {
                        Label(
                            title: { Text("\(choice7)")},
                            icon: {Image(systemName: "list.number.rtl")}
                        )
                    }
                }
                .padding(.leading,0)
                
                HStack{
                    Text("My stress level has made me have less patience for others")
                        .font(.system(size: 20))
                    Menu{
                        Button(action:{
                            choice8 = "1"
                        }, label: {
                            Text("1: Strongly Agree")
                        })
                        Button(action:{
                            choice8 = "2"
                        }, label: {
                            Text("2: Agree")
                        })
                        Button(action:{
                            choice8 = "3"
                        }, label: {
                            Text("3: Neutral")
                        })
                        Button(action:{
                            choice8 = "4"
                        }, label: {
                            Text("4: Disagree")
                        })
                        Button(action:{
                            choice8 = "5"
                        }, label: {
                            Text("5: Strongly Disagree")
                        })
                        
                    } label: {
                        Label(
                            title: { Text("\(choice8)")},
                            icon: {Image(systemName: "list.number.rtl")}
                        )
                    }
                }
                .padding(.leading,0)
                
                HStack{
                    Text("My stress keeps piling up")
                        .font(.system(size: 20))
                    Menu{
                        Button(action:{
                            choice9 = "1"
                        }, label: {
                            Text("1: Strongly Agree")
                        })
                        Button(action:{
                            choice9 = "2"
                        }, label: {
                            Text("2: Agree")
                        })
                        Button(action:{
                            choice9 = "3"
                        }, label: {
                            Text("3: Neutral")
                        })
                        Button(action:{
                            choice9 = "4"
                        }, label: {
                            Text("4: Disagree")
                        })
                        Button(action:{
                            choice9 = "5"
                        }, label: {
                            Text("5: Strongly Disagree")
                        })
                        
                    } label: {
                        Label(
                            title: { Text("\(choice9)")},
                            icon: {Image(systemName: "list.number.rtl")}
                        )
                    }
                }
            }
            .padding()
            
            HStack{
                let _ = print("Answer1: \(choice1)")
                let _ = print("Answer2: \(choice2)")
                let _ = print("Answer3: \(choice3)")
                let _ = print("Answer4: \(choice4)")
                let _ = print("Answer5: \(choice5)")
                let _ = print("Answer6: \(choice6)")
                let _ = print("Answer7: \(choice7)")
                let _ = print("Answer8: \(choice8)")
                let _ = print("Answer9: \(choice9)")
                
                NavigationLink(destination: SixthView()){
                    Text("Next Question")
                }
                Image(systemName: "arrow.right.circle.fill")
            }
            .disabled(choice1.isEmpty || choice2.isEmpty || choice3.isEmpty || choice4.isEmpty || choice5.isEmpty || choice6.isEmpty || choice7.isEmpty || choice8.isEmpty || choice9.isEmpty)
            .padding()
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .navigationBarBackButtonHidden(false)
        
    }
}

struct FifthView_Previews: PreviewProvider {
    static var previews: some View {
        FifthView()
    }
}
