//
//  CalmingFinished.swift
//  Smart Time Out
//
//  Created by Peter Woods on 14/03/2023.
//
//


import SwiftUI

struct CalmingFinished: View {
    init(){
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.init(Color(UIColor.white))]
    }
    
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
                    
                    Text("Time out finished")
                        .font(.custom("Roboto-Regular", size: 22))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20.0)
                    Spacer()
                    
                    Text("Page not yet finished")
                        .font(.custom("Roboto-Regular", size: 22))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20.0)
                    Group{
                        Spacer()
                        Spacer()
                    }
                    
                    
                    //button1
                    NavigationLink(destination: ContentView()
                        .navigationBarHidden(true))
                    {
                        Text("Home")
                        
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
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
            }
            
            
            
            .ignoresSafeArea()
            .edgesIgnoringSafeArea(.all)
            .navigationTitle("Calming Time")
            
            
            .navigationBarTitleDisplayMode(.inline)
            
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
            
            
            .navigationBarItems(
                trailing: NavigationLink(
                    destination: ContentView(),
                    label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.white)
                    }
                )
            )
            
            
            
        }
        
        
    }
    
    
}


