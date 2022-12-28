//
//  OnboardingView2.swift
//  Smart Time Out
//
//  Created by Peter Woods on 10/12/2022.
//

import SwiftUI



struct OnboardingView2: View {
  

    @State private var Programme: String = ""
    @State var SavedProgramme = "NIL"
    
    // Add a new @State variable to track whether the saveData
        // button has been pressed.
        @State private var saveDataPressed = false

    
    var body: some View {
        ZStack {
            VStack {
                
                //Text("\(SavedProgramme)")
                Text("Please chose the timer settings you have been reccomended and press save")
                        .font(.custom("Roboto-Regular", size: 26))
                        .foregroundColor(text1)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 10.0)
                
                
                Picker("Select an option", selection: $Programme) {
                        Text("Smart Time Out").tag("Smart Time Out")
                        Text("Calming Time").tag("Calming Time")
                        Text("Quiet Time").tag("Quiet Time")
                }
                .pickerStyle(.wheel)
                .font(.custom("Nunito-Regular", size: 48))
                .foregroundColor(col1)
                
                
                
                Spacer()
                
                
                Button(action: {
                    saveData()
                    saveDataPressed = true
                }){
                    Text("Submit/Save")
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .font(.custom("Nunito-Regular", size: 20))
                        
                        .padding(.all, 20.0)
                        .background(col1)
                        .background(RoundedRectangle(cornerRadius: 32)
                            .clipped())
                        .clipShape(RoundedRectangle(cornerRadius: 32))
                }
                    
                
                if saveDataPressed {
                NavigationLink(destination: OnboardingView3()) {
                    Text("Continue")
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .font(.custom("Nunito-Regular", size: 32))
                        .padding(.all, 10.0)
                        .background(col1)
                        .background(RoundedRectangle(cornerRadius: 32)
                            .clipped())
                        .clipShape(RoundedRectangle(cornerRadius: 32))
                }
                }
                
                HStack {
                    Spacer()
                    Spacer()
                    Image("Logo2 1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }.onAppear(perform: {
                    getData()
                })
            }
        }
    }
    
    func saveData(){
        UserDefaults.standard.set(self.Programme, forKey: "Programme")
        
    }
    func getData(){
        SavedProgramme = "Programme is: \(UserDefaults.standard.string(forKey: "Programme") ?? "Time Out")"
        
        
    }
    

}
                
