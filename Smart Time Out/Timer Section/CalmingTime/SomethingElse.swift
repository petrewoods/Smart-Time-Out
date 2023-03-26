//
//  DifficultyManagingView.swift
//  Smart Time Out
//
//  Created by Peter Woods on 27/12/2022.
//
//
//  ProblemViewCalmingTime.swift
//  Smart Time Out
//
//  Created by Peter Woods on 27/12/2022.
//


import SwiftUI

struct SomethingElse: View {
    init(){
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.init(Color(UIColor.white))]
    }
    
    
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 0.996, green: 0.717, blue: 0)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                VStack{
                    Group{
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                    
                    Text("Don’t use quiet time for one off bad behaviour")
                        .font(.custom("Roboto-Regular", size: 22))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20.0)
                    Spacer()
                    
                    Text("Try ignoring or distracting, or using consequences if it carries on.")
                        .font(.custom("Roboto-Regular", size: 16))
                        .foregroundColor(.white)
                        
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20.0)
                    Group{
                        Spacer()
                        Spacer()
                       
                        Spacer()
                    }
                    
                    
                    //button1
                    NavigationLink(destination: ContentView()
                        .navigationBarHidden(true))
                    {
                        Text("Ok")
                        
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
                        
                        
                    }
                    .padding(30)
                    
                    
                    
                    
                    
                    
                    
                }
            }
            
            
            
            .ignoresSafeArea()
            .edgesIgnoringSafeArea(.all)
            .navigationTitle("Calming Time")
            
            
            .navigationBarTitleDisplayMode(.inline)
            
            .navigationBarItems(leading: NavigationLink(destination: InfoPrep().navigationBarHidden(false).navigationBarBackButtonHidden(true), label: {Image(systemName: "info.circle")
                .foregroundColor(.white)}))
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
            
            
        }
        
        
    }
    
    
}



struct SomethingElseview_Preview: PreviewProvider {
    static var previews: some View {
        
        
        SomethingElse()
            .previewDevice(PreviewDevice(rawValue: "iPhone 13"))
            .previewDisplayName("iPhone 13")
        
        SomethingElse()
            .previewDevice(PreviewDevice(rawValue: "iPhone SE (3rd generation)"))
            .previewDisplayName("iPhone SE (3rd Generation)")
        
    }
}


