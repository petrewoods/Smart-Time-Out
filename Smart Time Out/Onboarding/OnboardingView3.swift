//
//  OnboardingView3.swift
//  Smart Time Out
//
//  Created by Peter Woods on 10/12/2022.
//

import Foundation
import SwiftUI

struct OnboardingView3: View {
    
    var body: some View {
        
        
        
        ZStack{
            VStack( spacing: 0){
                //top 1/3
                HStack{
                    
                    NavigationLink(destination: Prep2().navigationBarHidden(true).navigationBarBackButtonHidden(true)
                        .navigationBarTitle("")
                        .navigationBarTitleDisplayMode(.inline)){
                            Text("Check Your Chair")
                            
                                .foregroundColor(.black)
                                .fontWeight(.medium)
                                .multilineTextAlignment(.center)
                                .font(.custom("Nunito-Regular", size: 22))
                                .padding(.horizontal, 70.0)
                                .padding(.vertical, 20.0)
                                .background(buttonGray)
                                .background(RoundedRectangle(cornerRadius: 32)
                                    .clipped())
                                .clipShape(RoundedRectangle(cornerRadius: 32))
                        }
                    
                        .padding(.vertical, 40.0)
                    
                    
                    
                    
                    
                }
                .frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 0,
                    maxHeight: .infinity,
                    alignment: .center
                )
                .background(back3)
                
                //middle 1/3
                
                HStack{
                    
                    NavigationLink(destination: Timeout1().navigationBarHidden(true).navigationBarBackButtonHidden(true)
                        .navigationBarTitle("")
                        .navigationBarTitleDisplayMode(.inline)){
                            Text("Explain Time Out")
                            
                                .foregroundColor(.black)
                                .fontWeight(.medium)
                                .multilineTextAlignment(.center)
                                .font(.custom("Nunito-Regular", size: 22))
                                .padding(.horizontal, 70.0)
                                .padding(.vertical, 20.0)
                                .background(buttonGray)
                                .background(RoundedRectangle(cornerRadius: 32)
                                    .clipped())
                                .clipShape(RoundedRectangle(cornerRadius: 32))
                        }
                    
                        .padding(.vertical, 40.0)
                    
                    
                    
                    
                    
                }
                .frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 0,
                    maxHeight: .infinity,
                    alignment: .center
                )
                .background(back4)
                
                
                //bottom 1/3
                HStack{
                    
                    NavigationLink(destination: ContentView().navigationBarHidden(false).navigationBarBackButtonHidden(true)
                        .navigationBarTitle("")
                        .navigationBarTitleDisplayMode(.inline)){
                            Text("Explore the app")
                            
                                .foregroundColor(.black)
                                .fontWeight(.medium)
                                .multilineTextAlignment(.center)
                                .font(.custom("Nunito-Regular", size: 22))
                                .padding(.horizontal, 70.0)
                                .padding(.vertical, 20.0)
                                .background(buttonGray)
                                .background(RoundedRectangle(cornerRadius: 32)
                                    .clipped())
                                .clipShape(RoundedRectangle(cornerRadius: 32))
                        }
                    
                        .padding(.vertical, 40.0)
                    
                    
                    
                    
                    
                }
                .frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 0,
                    maxHeight: .infinity,
                    alignment: .center
                )
                .background(back6)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}



struct OnboardingView4_Preview: PreviewProvider {
    static var previews: some View {
        
        
        OnboardingView3()
            
        
    }
}
