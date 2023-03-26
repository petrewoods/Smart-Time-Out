//
//  Prep2.swift
//  Smart Time Out
//
//  Created by Peter Woods on 27/11/2022.
//
import SwiftUI

struct Prep2: View {
    
    var body: some View {
        ZStack{
        Tell0()
        }
        
        .navigationTitle("Preparing the chair")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(
            leading: NavigationLink(
                destination: InfoPrep().navigationBarHidden(true),
                label: {
                    Image("BackButton")
                }
            )
        )
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
                    Text("Use this checklist to prepaper your time out chair")
                        .font(.custom("Roboto-Regular", size: 20))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 20.0)
                        
                    Spacer()
                    
                }
                Spacer()
                //toggles
                
                Group{
                    
                    
                    Toggle("I will know if they run away",isOn: $isOne)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .font(.custom("Roboto-Nunito", size: 16))
                        .foregroundColor(.black)
                        
                        .padding(10)
                        .tint(col1)
                    
                    
                    
                    //Text(isOne ? "ON": "Off")
                
                    
                    
                    Toggle("They can't see other children",isOn: $isTwo)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .font(.custom("Roboto-Nunito", size: 16))
                        .foregroundColor(.black)
                        .padding(10)
                    
                        .tint(col1)
                    
                    
                    //Text(isTwo ? "ON": "Off")
                
                    
                    
                    Toggle("Child can't knock chair over",isOn: $isThree)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .font(.custom("Roboto-Nunito", size: 16))
                        .foregroundColor(.black)
                        .padding(10)
                        .tint(col1)
                    
                    
                    //Text(isThree ? "ON": "Off")
                
                    
                    
                    Toggle("Nothing dangerous nearby",isOn: $isFour)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .font(.custom("Roboto-Nunito", size: 16))
                        .foregroundColor(.black)
                        .padding(10)
                        .tint(col1)
                    
                    
                    
                    //Text(isFour ? "ON": "Off")
                
                    
                    
                    Toggle("No toys nearby",isOn: $isFive)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .font(.custom("Roboto-Nunito", size: 16))
                        .foregroundColor(.black)
                        .padding(10)
                        .tint(col1)
                    
                    
                    
                    
                    
                    Toggle("One calming thing nearby",isOn: $isSix)
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
                   isFour == true &&
                   isFive == true &&
                   isSix == true ){
                    NavigationLink(destination: ContentView()
                        .navigationBarBackButtonHidden(true)
                        .navigationBarHidden(true))
                    {
                        
                        Text("Done")
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
                Text("Done")
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
            
            }
        
        
        
       
    }
    
   
    
}





struct Prep2_Preview: PreviewProvider {
    static var previews: some View {
        
        
        Prep2()
            .previewDevice(PreviewDevice(rawValue: "iPhone 13"))
            .previewDisplayName("iPhone 13")
        
        Prep2()
            .previewDevice(PreviewDevice(rawValue: "iPhone SE (3rd generation)"))
            .previewDisplayName("iPhone SE (3rd Generation)")
        
    }
}


