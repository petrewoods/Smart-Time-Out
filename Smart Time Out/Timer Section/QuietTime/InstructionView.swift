//
//  InstructionView.swift
//  Smart Time Out
//
//  Created by Peter Woods on 27/12/2022.
//

import SwiftUI

struct InstructionView: View {
    
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
                    
                    Text("Give an instruction")
                        .font(.custom("Roboto-Regular", size: 22))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(20.0)
                    Text("\"Stop doing [bad thing] and start doing [good thing] please.\"")
                        .font(.custom("Roboto-Regular", size: 22))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20.0)
                    Group{
                        Spacer()
                        Spacer()
                    }
                    
                
                   
                    
                    
                    //button2
                    NavigationLink(destination: QuietTimeInfo2()
                        .navigationBarHidden(true))
                    {
                        Text("Problem Continues")
                        
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
                    NavigationLink(destination: ContentView()
                        .navigationBarHidden(true))
                    {
                        Text("Behaviour improved")
                        
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
                            .foregroundColor(Color(red: 1, green: 1, blue: 1, opacity: 0.0))
                            .padding(2)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(red: 1, green: 1, blue: 1, opacity: 0.3)))
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



