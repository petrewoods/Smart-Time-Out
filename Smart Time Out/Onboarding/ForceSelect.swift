//
//  ForceSelect.swift
//  Smart Time Out
//
//  Created by Peter Woods on 25/03/2023.
//


import SwiftUI

struct ForceSelect: View {
    
    @State private var Programme: String = "Smart Time Out"
    @State var SavedProgramme = "NIL"
    @State var useAnimation = false
    

    // Add a new @State variable to track whether the saveData
    // button has been pressed.
    @State private var saveDataPressed = false
    
    
    
    
    var body: some View {
        NavigationView {
            ZStack{
                
                
                Color.accentColor
                    .ignoresSafeArea(.all)
                
                
                VStack{
                    
                    
                    //everything to be shown in the white part below
                    
                    //if submit hasn't been pressed yet
                    if saveDataPressed == false {
                        
                        ZStack{
                            VStack{
                                Spacer()
                                Text("Please chose a programme before you use a timer, if in doubt try calming time. The home page will relaunch with the timer available")
                                    .font(.custom("Nunito-Regular", size: 22))
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.white)
                                    .minimumScaleFactor(0.5)
                                    .padding()
                                Spacer()
                                Picker("Select an option", selection: $Programme) {
                                    Text("Smart Time Out")
                                        .tag("Smart Time Out")
                                        .foregroundColor(.white)
                                    Text("Calming Time")
                                        .tag("Calming Time")
                                        .foregroundColor(.white)
                                    Text("Quiet Time")
                                        .tag("Quiet Time")
                                        .foregroundColor(.white)
                                }
                                .pickerStyle(.wheel)
                                .frame(height: 50)
                                .font(.custom("Nunito-Regular", size: 28, relativeTo: .title))

                                
                                
                                Spacer()
                                Button(action: {
                                    saveData()
                                    
                                }){
                                    Text("Submit")
                                        .foregroundColor(.black)
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                        .font(.custom("Nunito-Regular", size: 20))
                                        .padding(.horizontal, 70.0)
                                        .padding(.vertical, 20.0)
                                        .background(.white)
                                        .background(RoundedRectangle(cornerRadius: 32)
                                            .clipped())
                                        .clipShape(RoundedRectangle(cornerRadius: 32))
                                }
                                
                                .padding(.vertical, 40.0)
                            }
                            
                            
                            .background(col1)
                            
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
                                    .foregroundColor(.white)
                                    .minimumScaleFactor(0.5)
                                    .padding()
                                    .padding(.vertical, 40.0)
                                    .onAppear() {
                                        
                                        withAnimation(.easeInOut(duration: 0.7).repeatCount(3, autoreverses: true)){
                                            useAnimation.toggle()
                                            
                                        }
                                        
                                           
                                    }
                                   
                                
                                Spacer()
                                
                                NavigationLink(destination: ContentView().navigationBarHidden(true).navigationBarBackButtonHidden(true)
                                    .navigationBarTitle("")
                                    .navigationBarTitleDisplayMode(.inline)){
                                        
                                       
                                        Text("Save")
                                           
                                            .foregroundColor(.black)
                                            .fontWeight(.medium)
                                            .multilineTextAlignment(.center)
                                            .font(.custom("Nunito-Regular", size: 22))
                                            .padding(.horizontal, 70.0)
                                            .padding(.vertical, 20.0)
                                            .background(.white)
                                            .background(RoundedRectangle(cornerRadius: 32)
                                                .clipped())
                                            .clipShape(RoundedRectangle(cornerRadius: 32))
                                            .transition(.opacity)
                                    }
                                    
                                
                                    .padding(.vertical, 40.0)
                                
                                
                                
                            }
                            
                            
                        }
                    }
                    
                }
                .ignoresSafeArea(.all)
                
                
            }
        }
        .navigationBarHidden(true)
        
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

           
