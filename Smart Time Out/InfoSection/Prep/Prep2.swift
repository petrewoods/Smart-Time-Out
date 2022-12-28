//
//  Prep2.swift
//  Smart Time Out
//
//  Created by Peter Woods on 27/11/2022.
//
import SwiftUI

struct Prep2: View {
    
        var body: some View {
        Tell0()
        }
    }


    struct Tell0: View {
        @State private var isOne: Bool = false
        @State private var isTwo: Bool = false
        @State private var isThree: Bool = false
        @State private var isFour: Bool = false
        @State private var isFive: Bool = false
        @State private var isSix: Bool = false
        
        var body: some View {
            
            ZStack{
                VStack{
                    //title
                    HStack{
                        Text("This checklist is to prepare your time out chair")
                            .font(.custom("Roboto-Regular", size: 28))
                            .foregroundColor(text1)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 20.0)
                    Spacer()
                    
                    }
                    
                    //toggles
                    
                    Group{
                        
                       
                        Toggle("I will know if they run away",isOn: $isOne)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .font(.custom("Roboto-Nunito", size: 24))
                            .foregroundColor(text1)
                            .padding(.horizontal,20)
                            .tint(col1)
                        
                      
                        //Text(isOne ? "ON": "Off")
                    }
                    
                    Group{
                        
                       
                        Toggle("They can't see other children",isOn: $isTwo)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .font(.custom("Roboto-Nunito", size: 24))
                            .foregroundColor(text1)
                            .padding(.horizontal,20)
                            .tint(col1)
                       
                        
                        //Text(isTwo ? "ON": "Off")
                    }
                    
                    Group{
                        
                       
                        Toggle("Child can't knock chair over",isOn: $isThree)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .font(.custom("Roboto-Nunito", size: 24))
                            .foregroundColor(text1)
                            .padding(.horizontal, 20)
                            .tint(col1)
                      
                        
                        //Text(isThree ? "ON": "Off")
                    }
                    
                    Group{
                        
                        
                        Toggle("Nothing dangerous nearby",isOn: $isFour)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .font(.custom("Roboto-Nunito", size: 24))
                            .foregroundColor(text1)
                            .padding(.horizontal,20)
                            .tint(col1)
                        
                       
                        //Text(isFour ? "ON": "Off")
                    }
                    
                    Group{
                        
                        
                        Toggle("No toys nearby",isOn: $isFive)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .font(.custom("Roboto-Nunito", size: 24))
                            .foregroundColor(text1)
                            .padding(.horizontal,20)
                            .tint(col1)
                        
                        
                        //Text(isFour ? "ON": "Off")
                    }
                    Group{
                        
                        
                        Toggle("One calming thing nearby",isOn: $isSix)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .font(.custom("Roboto-Nunito", size: 24))
                            .foregroundColor(text1)
                            .padding(.horizontal,20)
                            .tint(col1)
                   
                        //Text(isFive ? "ON": "Off")
                    }
                    Spacer()
                   
                    if(isOne == true &&
                       isTwo == true &&
                       isThree == true &&
                       isFour == true &&
                       isFive == true &&
                       isSix == true ){
                        NavigationLink(destination: InfoView())
                        {
                            
                        Text("Done")
                           .foregroundColor(.white)
                           .fontWeight(.medium)
                           .multilineTextAlignment(.center)
                           .font(.custom("Nunito-Regular", size: 32))
                           .padding(.all, 30.0)
                           .background(col1)
                           .background(RoundedRectangle(cornerRadius: 32)
                               .clipped())
                           .clipShape(RoundedRectangle(cornerRadius: 32))
                            }
                            
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
    
