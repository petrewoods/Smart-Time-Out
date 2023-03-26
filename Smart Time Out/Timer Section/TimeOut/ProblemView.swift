//
//  OptionView.swift
//  Smart Time Out
//
//  Created by Peter Woods on 23/11/2022.
//




import SwiftUI

struct ProblemView: View {
    
    @Environment(\.presentationMode) var presentationMode
 
    
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 0.141, green: 0.592, blue: 0.616)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                VStack{
                    Group{
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                    
                    Text("Select a Problem")
                        .font(.custom("Roboto-Regular", size: 22))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20.0)
                    Group{
                        Spacer()
                        Spacer()
                    }
                    
                    
                    //button1
                    NavigationLink(destination: TimerView(choice: "V")
                        .navigationBarHidden(false)
                        .navigationBarBackButtonHidden(true))
                    {
                        Text("Violence")
                        
                            .foregroundColor(.black)
                            .font(.custom("Nunito-Regular", size: 18))
                            .frame(width: 250)
                            .lineLimit(1)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20.0)
                            .padding(.vertical, 20.0)
                            .background(buttonGray)
                            .background(RoundedRectangle(cornerRadius: 32)
                                .clipped())
                            .clipShape(RoundedRectangle(cornerRadius: 32))
                    }
                    
                    .padding(.vertical, 20.0)
                    
                    //button2
                    NavigationLink(destination: BehaviourPromptView()
                        .navigationBarHidden(true))
                    {
                        Text("Refusing Instruction")
                        
                            .foregroundColor(.black)
                            .font(.custom("Nunito-Regular", size: 18))
                            .frame(width: 250)
                            .lineLimit(1)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20.0)
                            .padding(.vertical, 20.0)
                            .background(buttonGray)
                            .background(RoundedRectangle(cornerRadius: 32)
                                .clipped())
                            .clipShape(RoundedRectangle(cornerRadius: 32))
                    }
                    
                    .padding(.vertical, 20.0)
                    
                    
                    //Button2
                    NavigationLink(destination: SomethingElse()
                        .navigationBarHidden(true))
                    {
                        Text("Something Else")
                        
                            .foregroundColor(.black)
                            .font(.custom("Nunito-Regular", size: 18))
                            .frame(width: 250)
                            .lineLimit(1)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20.0)
                            .padding(.vertical, 20.0)
                            .background(buttonGray)
                            .background(RoundedRectangle(cornerRadius: 32)
                                .clipped())
                            .clipShape(RoundedRectangle(cornerRadius: 32))
                    }
                    
                    
                    .padding(.vertical, 20.0)
                    
                    
                    
                    
                    HStack{
                        Rectangle()
                        
                            .frame(width: 50, height: 3)
                            .padding(2)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.white))
                        
                        Rectangle()
                            .frame(width: 50, height: 3)
                            .foregroundColor(Color(red: 1, green: 1, blue: 1, opacity: 0.0))
                            .padding(2)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(red: 1, green: 1, blue: 1, opacity: 0.3)))
                        
                    }
                    .padding(30)
                    
                    //bottom progress
                    
                    
                    
                    
                    
                }
            }
            
            
            
            .ignoresSafeArea()
            .edgesIgnoringSafeArea(.all)
            .navigationTitle("Smart Time Out")
            
            
            .navigationBarTitleDisplayMode(.inline)
            
        
            
            .navigationBarItems(
                                trailing: NavigationLink(
                                    destination: ContentView()
                                        .navigationBarHidden(false).navigationBarBackButtonHidden(true),
                                    label: {
                                        Image(systemName: "xmark")
                                            .foregroundColor(.white)
                                    }
                                )
                            )
            .navigationBarItems(
                                leading: NavigationLink(
                                    destination: Timeout1()
                                        .navigationBarHidden(false).navigationBarBackButtonHidden(true),
                                    label: {
                                        Image(systemName: "info.circle")
                                            .foregroundColor(.white)
                                    }
                                )
                            )
            
            
            
            
        }
        .edgesIgnoringSafeArea(.all)
        .ignoresSafeArea()
        
        
        
    }
    
    
}

