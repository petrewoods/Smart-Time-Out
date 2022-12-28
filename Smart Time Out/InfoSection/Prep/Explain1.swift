//
//  Explain1.swift
//  Smart Time Out
//
//  Created by Peter Woods on 28/11/2022.
//


import SwiftUI

struct Explain1: View {
    
        var body: some View {
            Explainchecklist1()
        }
    }


    struct Explainchecklist1: View {
        @State private var isOne: Bool = false
        @State private var isTwo: Bool = false
        @State private var isThree: Bool = false
        @State private var isFour: Bool = false
        
        
        var body: some View {
            
            ZStack{
                VStack{
                    //title
                
                    
                        Text("Explain the following \nto your child")
                            .font(.custom("Roboto-Regular", size: 28))
                            .foregroundColor(text1)
                            .multilineTextAlignment(.leading)
                            .padding(20.0)
                   
                    
                    
                    //toggles
                    
                    Group{
                        
                       
                        Toggle("Find a quite place to talk",isOn: $isOne)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .font(.custom("Roboto-Nunito", size: 18))
                            .foregroundColor(text1)
                            .padding(.horizontal,20)
                            .tint(col1)
                        
                        //Text(isOne ? "ON": "Off")
                    }
                    NavigationLink(destination: Idea2())
                    {
                    Image(systemName: "lightbulb")
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                        .multilineTextAlignment(.leading)
                    }
                    
                    Group{
                        
                        Toggle("Say they are not in trouble",isOn: $isTwo)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .font(.custom("Roboto-Nunito", size: 18))
                            .foregroundColor(text1)
                            .padding(.horizontal,20)
                            .tint(col1)
                       
                        
                        //Text(isTwo ? "ON": "Off")
                    }
                    
                    Group{
                        
                       
                        Toggle("Praise recent good behaviour",isOn: $isThree)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .font(.custom("Roboto-Nunito", size: 18))
                            .foregroundColor(text1)
                            .padding(.horizontal, 20)
                            .tint(col1)
                      
                        
                        //Text(isThree ? "ON": "Off")
                    }
                    NavigationLink(destination: Idea1())
                    {
                    Image(systemName: "lightbulb")
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                        .multilineTextAlignment(.leading)
                    }
                    
                    Group{
                        
                        
                        Toggle("Explain sometimes everyone needs to calm down",isOn: $isFour)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .font(.custom("Roboto-Nunito", size: 18))
                            .foregroundColor(text1)
                            .padding(.horizontal,20)
                            .tint(col1)
                        
                       
                       
                    }
                    
                    
                        
                    
                    Spacer()
                    
                   
                    if(isOne == true &&
                       isTwo == true &&
                       isThree == true &&
                       isFour == true ){
                        NavigationLink(destination: Explain2())
                        {
                            
                        Text("Well done for getting ready")
                           .foregroundColor(.white)
                           .fontWeight(.medium)
                           .multilineTextAlignment(.center)
                           .font(.custom("Nunito-Regular", size: 24))
                           .padding(.all, 30.0)
                           .background(col1)
                           .background(RoundedRectangle(cornerRadius: 32)
                               .clipped())
                           .clipShape(RoundedRectangle(cornerRadius: 32))
                           
                            }
                            
                    }
                    else{
                        Spacer()
                    }
                    HStack{
                    Spacer()
                    Spacer()
                        Image("Logo2 1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                    }
                    
                    
                }
                    
                    }
                }
    }
        
