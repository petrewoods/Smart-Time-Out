//
//  Explain2.swift
//  Smart Time Out
//
//  Created by Peter Woods on 28/11/2022.
//


import SwiftUI

struct Explain2: View {
    
    var body: some View {
        ZStack{
        Explain0()
        }
        
        .navigationTitle("Preparing the chair")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(
            leading: NavigationLink(
                destination: ContentView().navigationBarHidden(true),
                label: {
                    Image("BackButton")
                }
            )
        )
    }
}


struct Explain0: View {
    @State private var isOne: Bool = false
    @State private var isTwo: Bool = false
    @State private var isThree: Bool = false
    @State private var isFour: Bool = false
    @State private var isFive: Bool = false
    @State private var isSix: Bool = false
    
    var body: some View {
        
        ZStack{
            VStack{
                HStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(buttonGray)
                        .frame(width: 50, height: 3)
                        .padding(2)
                        
                    RoundedRectangle(cornerRadius: 20)
                        .fill(col1)
                        .frame(width: 50, height: 3)
                        .padding(2)
                    RoundedRectangle(cornerRadius: 20)
                        .fill(buttonGray)
                        .frame(width: 50, height: 3)
                        .padding(2)
                    
                    RoundedRectangle(cornerRadius: 20)
                        .fill(buttonGray)
                        .frame(width: 50, height: 3)
                        .padding(2)
                }
                VStack{
                
                
               
                    Text("Explain the following to your child")
                        .font(.custom("Roboto-Regular", size: 20))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        
                        
               
                Spacer()
                //toggles
                
                Group{
                    
                    
                    Toggle("Find a quiet place to talk",isOn: $isOne)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .font(.custom("Roboto-Nunito", size: 16))
                        .foregroundColor(.black)
                        
                        .padding(10)
                        .tint(col1)
                    
                    
                    
                    //Text(isOne ? "ON": "Off")
                
                    
                    
                    Toggle("Say they are not in trouble",isOn: $isTwo)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .font(.custom("Roboto-Nunito", size: 16))
                        .foregroundColor(.black)
                        .padding(10)
                    
                        .tint(col1)
                    
                    
                    //Text(isTwo ? "ON": "Off")
                
                    
                    
                    Toggle("Praise recent good behaviour",isOn: $isThree)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .font(.custom("Roboto-Nunito", size: 16))
                        .foregroundColor(.black)
                        .padding(10)
                        .tint(col1)
                    
                    
                    //Text(isThree ? "ON": "Off")
                
                    
                    
                    Toggle("Explain sometimes everyone needs to calm down",isOn: $isFour)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .font(.custom("Roboto-Nunito", size: 16))
                        .foregroundColor(.black)
                        .padding(10)
                        .tint(col1)
                    
                
                    
                    
                    
                    
                    //Text(isFive ? "ON": "Off")
                }
                Spacer()
                
                if(isOne == true &&
                   isTwo == true &&
                   isThree == true &&
                   isFour == true
                  ){
                    NavigationLink(destination: Explain3())
                    {
                        
                        Text("Next")
                            .foregroundColor(.black)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                            .font(.custom("Nunito-Regular", size: 22))
                            .frame(width: 200, height: 30)
                            .padding(.vertical, 10.0)
                            .padding(.horizontal, 40.0)
                            
                            .background(buttonGray)
                            .background(RoundedRectangle(cornerRadius: 32)
                                .clipped())
                            .clipShape(RoundedRectangle(cornerRadius: 32))
                        
                        
                    }
                    
                }
                
                
            
            else{
                Text("Next")
                    .foregroundColor(.black)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .font(.custom("Nunito-Regular", size: 22))
                    .frame(width: 200, height: 30)
                    .padding(.vertical, 10.0)
                    .padding(.horizontal, 40.0)
                    .opacity(0.1)
                    .background(buttonGray)
                    .background(RoundedRectangle(cornerRadius: 32)
                        .clipped())
                    .clipShape(RoundedRectangle(cornerRadius: 32))
                
            }
                    
                    
                }
                .frame(width: 300, height: 500)
                
            .padding()
            .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 2)
                )
            
            Spacer()
         
          
            
            }
            
        }
        
        
        
        
        
       
    }
    
   
    
}







struct Explain2Preview: PreviewProvider {
    static var previews: some View {
        
        Explain2()
            .previewDevice(PreviewDevice(rawValue: "iPhone 13"))
            .previewDisplayName("iPhone 13")
        
        Explain2()
            .previewDevice(PreviewDevice(rawValue: "iPhone SE (3rd generation)"))
            .previewDisplayName("iPhone SE (3rd Generation)")
        
    }
}


