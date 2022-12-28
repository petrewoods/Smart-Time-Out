//
//  Explain2.swift
//  Smart Time Out
//
//  Created by Peter Woods on 28/11/2022.
//

import SwiftUI

struct Explain2O: View {
    
        var body: some View {
            Explainchecklist2O()
        }
    }


    struct Explainchecklist2O: View {
        @State private var isOne: Bool = false
        @State private var isTwo: Bool = false
        @State private var isThree: Bool = false
        @State private var isFour: Bool = false
        
        
        var body: some View {
            
            ZStack{
                VStack{
                    //title
                    
                    
                        Text("Explain the following")
                            .font(.custom("Roboto-Regular", size: 32))
                            .foregroundColor(text1)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 20.0)
                    
                    //toggles
                    
                    Group{
                        
                       
                        Toggle("When they need to calm down you will ask them to go to time out",isOn: $isOne)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .font(.custom("Roboto-Nunito", size: 18))
                            .foregroundColor(text1)
                            .padding(.horizontal,20)
                            .tint(col1)
                        
                        //Text(isOne ? "ON": "Off")
                    }
                    
                    Group{
                        
                        Toggle("You will time them and let them know when they are done",isOn: $isTwo)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .font(.custom("Roboto-Nunito", size: 18))
                            .foregroundColor(text1)
                            .padding(.horizontal,20)
                            .tint(col1)
                       
                        
                        //Text(isTwo ? "ON": "Off")
                    }
                    
                    Group{
                        
                       
                        Toggle("Everyone will leave them alone",isOn: $isThree)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .font(.custom("Roboto-Nunito", size: 18))
                            .foregroundColor(text1)
                            .padding(.horizontal, 20)
                            .tint(col1)
                      
                        
                        //Text(isThree ? "ON": "Off")
                    }
                    
                    Group{
                        
                        
                        Toggle("If they can't sit quietly they might need longer to calm down",isOn: $isFour)
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
                        NavigationLink(destination: Explain3O())
                        {
                            
                        Text("Well done for explaining")
                           .foregroundColor(.white)
                           .fontWeight(.medium)
                           .multilineTextAlignment(.center)
                           .font(.custom("Nunito-Regular", size: 28))
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
                            Text("Well done for explaining")
                               .foregroundColor(.white)
                               .fontWeight(.medium)
                               .multilineTextAlignment(.center)
                               .font(.custom("Nunito-Regular", size: 28))
                               .padding(.all, 30.0)
                               .background(.white)
                               .background(RoundedRectangle(cornerRadius: 32)
                                   .clipped())
                               .foregroundColor(.white)
                               .clipShape(RoundedRectangle(cornerRadius: 32))
                        
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
        



