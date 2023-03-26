//
//  File.swift
//  Smart Time Out
//
//  Created by Peter Woods on 20/03/2023.
//

import Foundation

import SwiftUI

struct Explain4: View {
    
    var body: some View {
        
        ZStack{
            
            
            VStack{
                HStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(buttonGray)
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
                    RoundedRectangle(cornerRadius: 20)
                        .fill(col1)
                        .frame(width: 50, height: 3)
                        .padding(2)
                }
                
                
                Image("ChairPrepare")
                    .resizable()
                    .scaledToFit()
                
                    .cornerRadius(8)
                    .padding(.horizontal, 10.0)
                    .padding(.vertical, 40.0)
                Spacer()
                
                Text("We reccomend checking your chair before time out is needed")
                    .font(.custom("Roboto-Regular", size: 18))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(40.0)
                
                
                //button1
                NavigationLink(destination: InfoPrep()
                    .navigationBarBackButtonHidden(true))
                {
                    Text("Preparing the chair")
                    
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
                    .navigationBarBackButtonHidden(true)
                )
                {
                    Text("Done")
                    
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
                Spacer()
                
                
                
                
                
                //bottom progress
                
                
                
                
                
            }
        }
        
        
        
        
        
        
        
        .navigationBarTitleDisplayMode(.inline)
        
        .navigationTitle("Preparing the Chair")
        .navigationBarTitleDisplayMode(.inline)
        //FUNCTION TO ADD: This back button should be the previous page, this page can be acceessed via ContentView() and by any of the TimerViews
        .navigationBarItems(
            leading: NavigationLink(
                destination: ContentView().navigationBarHidden(false).navigationBarBackButtonHidden(true),
                label: {
                    Image("BackButton")
                }
            )
        )
        
        
    }
    
    
}

    



