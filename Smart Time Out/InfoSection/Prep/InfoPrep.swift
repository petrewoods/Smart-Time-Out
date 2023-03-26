//
//  InfoPrep.swift
//  Smart Time Out
//
//  Created by Peter Woods on 27/11/2022.
//

import SwiftUI

struct InfoPrep: View {
    
    var body: some View {
        
        ZStack{
            
            
            VStack{
                
                
                Image("ChairPrepare")
                    .resizable()
                    .scaledToFit()
                
                    .cornerRadius(8)
                    .padding(.horizontal, 10.0)
                    .padding(.vertical, 40.0)
                Spacer()
                
                
                //button1
                NavigationLink(destination: Prep2()
                    .navigationBarBackButtonHidden(true))
                {
                    Text("Chair Checklist")
                    
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
                NavigationLink(destination: Chairspo()
                    .navigationBarBackButtonHidden(true)
                )
                {
                    Text("Example Chairs")
                    
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

    



