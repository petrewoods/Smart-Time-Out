//
//  OnboardingView6.swift
//  Smart Time Out
//
//  Created by Peter Woods on 14/12/2022.
//

import Foundation
import SwiftUI

struct OnboardingView6: View {
    
    var body: some View {
        
      
        
        ZStack{
                 VStack{
                    
                     
                     Text("Time out can be used for physical aggression or for refusing instruction...")
                             .font(.custom("Roboto-Regular", size: 32))
                             .foregroundColor(text1)
                             .multilineTextAlignment(.leading)
                             .padding(.horizontal, 20.0)
                     
                    Spacer()
                     Text("The Start time out Button guides you through the process when you need it")
                             .font(.custom("Roboto-Regular", size: 32))
                             .foregroundColor(text1)
                             .multilineTextAlignment(.leading)
                             .padding(.horizontal, 20.0)

                     
                     
                     Spacer()
    //                     .font(.custom("Nunito-Regular", size: 32))
    //
                     
                     
                     NavigationLink(destination: ContentView())
                     {
                     Text("Home")
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
