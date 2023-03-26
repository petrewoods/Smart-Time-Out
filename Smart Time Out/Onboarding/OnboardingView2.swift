//
//  OnboardingView2.swift
//  Smart Time Out
//
//  Created by Peter Woods on 10/12/2022.
//

import SwiftUI

struct OnboardingView2: View {
    
    @State private var Programme: String = "Calming Time"
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
                    
                    Image("Title")
                        .resizable()
                        .frame(width: 327, height: 75)
                        .padding(.vertical, 60.0)
                    
                    Spacer()
                    //everything to be shown in the white part below
                    
                    //if submit hasn't been pressed yet
                    if saveDataPressed == false {
                        
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
                                    Text("Calming Time").tag("Calming Time")
                                    Text("Smart Time Out").tag("Smart Time Out")
                                    Text("Quiet Time").tag("Quiet Time")
                                    Text("Select Later").tag("Select Later")
                                }
                                .pickerStyle(.wheel)
                                .frame(height: 100)
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
                                
                                NavigationLink(destination: OnboardingView3().navigationBarHidden(true).navigationBarBackButtonHidden(true)
                                    .navigationBarTitle("")
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


//
//struct OnboardingView2: View {
//
//
//    @State private var Programme: String = "Smart Time Out"
//    @State var SavedProgramme = "NIL"
//
//    // Add a new @State variable to track whether the saveData
//        // button has been pressed.
//        @State private var saveDataPressed = false
//
//
//    var body: some View {
//        ZStack {
//            VStack {
//
//                //Text("\(SavedProgramme)")
//                Text("Please chose the timer settings you have been recommended and press save")
//                    .font(.custom("Roboto-Regular",  size: 24, relativeTo: .body))
//                        .foregroundColor(text1)
//                        .multilineTextAlignment(.leading)
//                        .padding(10.0)
//
//
//                Picker("Select an option", selection: $Programme) {
//                        Text("Smart Time Out").tag("Smart Time Out")
//                        Text("Calming Time").tag("Calming Time")
//                        Text("Quiet Time").tag("Quiet Time")
//                        Text("Select Later").tag("Later")
//                }
//                .pickerStyle(.wheel)
//                .font(.custom("Nunito-Regular", size: 38, relativeTo: .title))
//                .foregroundColor(col1)
//
//
//                Spacer()
//
//
//
//                Button(action: {
//                    saveData()
//
//                }){
//                    Text("Submit")
//                        .foregroundColor(.white)
//                        .fontWeight(.medium)
//                        .multilineTextAlignment(.center)
//                        .font(.custom("Nunito-Regular", size: 20))
//
//                        .padding(.all, 20.0)
//                        .background(col1)
//                        .background(RoundedRectangle(cornerRadius: 32)
//                            .clipped())
//                        .clipShape(RoundedRectangle(cornerRadius: 32))
//                }
//
//
//                if saveDataPressed {
//                NavigationLink(destination: OnboardingView3()) {
//                    Text("Continue")
//                        .foregroundColor(.white)
//                        .fontWeight(.medium)
//                        .multilineTextAlignment(.center)
//                        .font(.custom("Nunito-Regular", size: 32))
//                        .padding(.all, 10.0)
//                        .background(col1)
//                        .background(RoundedRectangle(cornerRadius: 32)
//                            .clipped())
//                        .clipShape(RoundedRectangle(cornerRadius: 32))
//                }
//                }
//
//                Spacer()
//
////                HStack {
////                    Spacer()
////                    Spacer()
////                    Image("Logo2 1")
////                        .resizable()
////                        .scaledToFit()
////                        .frame(width: 100, height: 100)
////                }
//                .onAppear(perform: {
//                    getData()
//                })
//            }
//        }
//    }
//
//    func saveData(){
//        UserDefaults.standard.set(self.Programme, forKey: "Programme")
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//            saveDataPressed = true
//        }
//    }
//    func getData(){
//        SavedProgramme = "Programme is: \(UserDefaults.standard.string(forKey: "Programme") ?? "Time Out")"
//
//
//    }
//
//
//}
                
struct OnboardingView2_Preview: PreviewProvider {
    static var previews: some View {
        OnboardingView2()
                   
    }
}
