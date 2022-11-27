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
                ScrollView{
                    //title
                    HStack{
                        Text("Use this checklist \nto score your \ntime out chair")
                            .font(.custom("Roboto-Regular", size: 32))
                            .foregroundColor(text1)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 20.0)
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    }
                    Spacer()
                    //toggles
                    
                    Group{
                        Spacer()
                       
                        Toggle("I will know if they run away",isOn: $isOne)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .font(.custom("Roboto-Nunito", size: 24))
                            .foregroundColor(text1)
                            .padding(.horizontal,20)
                            .tint(col1)
                        Spacer()
                      
                        //Text(isOne ? "ON": "Off")
                    }
                    
                    Group{
                        Spacer()
                       
                        Toggle("They can't see other children",isOn: $isTwo)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .font(.custom("Roboto-Nunito", size: 24))
                            .foregroundColor(text1)
                            .padding(.horizontal,20)
                            .tint(col1)
                       
                        Spacer()
                        //Text(isTwo ? "ON": "Off")
                    }
                    
                    Group{
                        Spacer()
                       
                        Toggle("Child can't knock chair over",isOn: $isThree)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .font(.custom("Roboto-Nunito", size: 24))
                            .foregroundColor(text1)
                            .padding(.horizontal, 20)
                            .tint(col1)
                      
                        Spacer()
                        //Text(isThree ? "ON": "Off")
                    }
                    
                    Group{
                        Spacer()
                        
                        Toggle("Nothing dangerous nearby",isOn: $isFour)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .font(.custom("Roboto-Nunito", size: 24))
                            .foregroundColor(text1)
                            .padding(.horizontal,20)
                            .tint(col1)
                        Spacer()
                       
                        //Text(isFour ? "ON": "Off")
                    }
                    
                    Group{
                        Spacer()
                        
                        Toggle("No toys nearby",isOn: $isFive)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .font(.custom("Roboto-Nunito", size: 24))
                            .foregroundColor(text1)
                            .padding(.horizontal,20)
                            .tint(col1)
                        Spacer()
                        
                        //Text(isFour ? "ON": "Off")
                    }
                    Group{
                        
                        Spacer()
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
                    else{
                        Spacer()
                        
                        //button is hidden but is actually there but unclickable to preserve formatting
                            Text("Done")
                               .foregroundColor(.white)
                               .fontWeight(.medium)
                               .multilineTextAlignment(.center)
                               .font(.custom("Nunito-Regular", size: 32))
                               .padding(.all, 30.0)
                               .background(.white)
                               .background(RoundedRectangle(cornerRadius: 32)
                                   .clipped())
                               .foregroundColor(.white)
                               .clipShape(RoundedRectangle(cornerRadius: 32))
                        
                    }
                    
                    
                }
                    
                    }
                }
                
        }
    


