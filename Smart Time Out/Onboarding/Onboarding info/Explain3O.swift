//
//  Explain3.swift
//  Smart Time Out
//
//  Created by Peter Woods on 28/11/2022.
//

import SwiftUI

struct Explain3O: View {
    
        var body: some View {
            Explainchecklist3O()
        }
    }


    struct Explainchecklist3O: View {
        @State private var isOne: Bool = false
        @State private var isTwo: Bool = false
        @State private var isThree: Bool = false
        @State private var isFour: Bool = false
        
        
        var body: some View {
            
            ZStack{
                VStack{
                    //title
                    
                    
                        Text("Ask your child the following questions")
                            .font(.custom("Roboto-Regular", size: 32))
                            .foregroundColor(text1)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 20.0)
                  
                    //toggles
                    
                    Group{
                        
                       
                        Toggle("How do they like to calm down",isOn: $isOne)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .font(.custom("Roboto-Nunito", size: 18))
                            .foregroundColor(text1)
                            .padding(.horizontal,20)
                            .tint(col1)
                        
                        //Text(isOne ? "ON": "Off")
                    }
                    NavigationLink(destination: Idea4())
                    {
                    Text("💡")
                            .font(.custom("Roboto-Regular", size: 32))
                            .foregroundColor(text1)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 20.0)
                    }
                    
                    Group{
                        
                        Toggle("Can they explain time out back to you",isOn: $isTwo)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .font(.custom("Roboto-Nunito", size: 18))
                            .foregroundColor(text1)
                            .padding(.horizontal,20)
                            .tint(col1)
                       
                        
                        //Text(isTwo ? "ON": "Off")
                    }
                    
                    Group{
                        
                       
                        Toggle("Do they have any worries or questions",isOn: $isThree)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .font(.custom("Roboto-Nunito", size: 18))
                            .foregroundColor(text1)
                            .padding(.horizontal, 20)
                            .tint(col1)
                      
                        
                        //Text(isThree ? "ON": "Off")
                    }
                    
                    Group{
                        
                        
                        Toggle("Praise something good about the conversaion",isOn: $isFour)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .font(.custom("Roboto-Nunito", size: 18))
                            .foregroundColor(text1)
                            .padding(.horizontal,20)
                            .tint(col1)
                        
                       
                       
                    }
                    NavigationLink(destination: Idea3())
                    {
                    Text("💡")
                            .font(.custom("Roboto-Regular", size: 32))
                            .foregroundColor(text1)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 20.0)
                    }
                    
                        
                    
                    Spacer()
                    
                   
                    if(isOne == true &&
                       isTwo == true &&
                       isThree == true &&
                       isFour == true ){
                        NavigationLink(destination: OnboardingView5())
                        {
                            
                        Text("Well done for setting up")
                           .foregroundColor(.white)
                           .fontWeight(.medium)
                           .multilineTextAlignment(.center)
                           .font(.custom("Nunito-Regular", size: 22))
                           .padding(.all, 30.0)
                           .background(col1)
                           .background(RoundedRectangle(cornerRadius: 32)
                               .clipped())
                           .clipShape(RoundedRectangle(cornerRadius: 32))
                            }
                            
                    }
                    else{
                        Spacer()
                        
                        //button is hidden but is actually there but unclickable to preserve formatting
                            
                        
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
        



