//
//  SelectedProgramme.swift
//  Smart Time Out
//
//  Created by Peter Woods on 21/03/2023.
//

import SwiftUI

struct SelectedProgrammePage: View {
    
    @State private var Programme: String = "Smart Time Out"
    @State var SavedProgramme = "NIL"
    @State var useAnimation = false
    
    
    // Add a new @State variable to track whether the saveData
    // button has been pressed.
    @State private var saveDataPressed = false
    
    
    
    
    var body: some View {
        VStack {
            if saveDataPressed == false {
                NavigationView {
                    ZStack{
                        VStack{
                            Spacer()
                            Text("Please chose the timer settings you have been recommended")
                                .font(.custom("Nunito-Regular", size: 22))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                                .minimumScaleFactor(0.5)
                                .padding()
                            Spacer()
                            Picker("Select an option", selection: $Programme) {
                                Text("Smart Time Out").tag("Smart Time Out")
                                Text("Calming Time").tag("Calming Time")
                                Text("Quiet Time").tag("Quiet Time")
                               // Text("Select Later").tag("Select Later")
                            }
                            .pickerStyle(.wheel)
                            .frame(height: 50)
                            .font(.custom("Nunito-Regular", size: 28, relativeTo: .title))
                            .foregroundColor(col1)
                            
                            
                            Spacer()
                            Button(action: {
                                saveData()
                                
                            }){
                                Text("Submit")
                                    .foregroundColor(.white)
                                    .fontWeight(.medium)
                                    .multilineTextAlignment(.center)
                                    .font(.custom("Nunito-Regular", size: 20))
                                    .padding(.horizontal, 70.0)
                                    .padding(.vertical, 20.0)
                                    .background(buttonGray)
                                    .background(RoundedRectangle(cornerRadius: 32)
                                        .clipped())
                                    .clipShape(RoundedRectangle(cornerRadius: 32))
                            }
                            
                            .padding(.vertical, 40.0)
                        }
                        
                        
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 500)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                        
                    }
                }
            }
        
            
            if saveDataPressed == true {
                
                
                ZStack{
                    VStack{
                        Spacer()
                        Text(Programme)
                            .font(.custom("Nunito-Regular", size: 28))
                        
                            .scaleEffect(useAnimation ? 1.5 : 1.0)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .minimumScaleFactor(0.5)
                            .padding()
                            .padding(.vertical, 40.0)
                            .onAppear() {
                                
                                withAnimation(.easeInOut(duration: 0.7).repeatCount(3, autoreverses: true)){
                                    useAnimation.toggle()
                                    
                                }
                                
                                
                            }
                        
                        
                        Spacer()
                        
                        NavigationLink(destination: ContentView().navigationBarHidden(false).navigationBarBackButtonHidden(true)
                           
                            .navigationBarTitleDisplayMode(.inline)){
                                
                                
                                Text("Save")
                                
                                    .foregroundColor(.black)
                                    .fontWeight(.medium)
                                    .multilineTextAlignment(.center)
                                    .font(.custom("Nunito-Regular", size: 22))
                                    .padding(.horizontal, 70.0)
                                    .padding(.vertical, 20.0)
                                    .background(buttonGray)
                                    .background(RoundedRectangle(cornerRadius: 32)
                                        .clipped())
                                    .clipShape(RoundedRectangle(cornerRadius: 32))
                                    .transition(.opacity)
                            }
                        
                        
                            .padding(.vertical, 40.0)
                        
                        
                        
                    }
                    
                    
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 500)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                    
                }
            }
        }
    }
                
    
    func saveData(){
        UserDefaults.standard.set(self.Programme, forKey: "Programme")
        DispatchQueue.main.asyncAfter(deadline: .now() )
        {
            saveDataPressed = true
            
        }
    }
    func getData(){
        SavedProgramme = "Programme is: \(UserDefaults.standard.string(forKey: "Programme") ?? "Time Out")"
        
        
    }
    
    
    
}

