//
//  OnboardingView5.swift
//  Smart Time Out
//
//  Created by Peter Woods on 14/12/2022.
//
import Foundation
import SwiftUI

struct OnboardingView5: View {
    
    var body: some View {
        
      
        
        ZStack{
                 VStack{
                    
                     
                     Text("We recommend checking your chair and talking to your child about time out before it is needed")
                             .font(.custom("Roboto-Regular", size: 28))
                             .foregroundColor(text1)
                             .multilineTextAlignment(.leading)
                             .padding(.horizontal, 20.0)
                     
                    
                         
                     
                     Spacer()
    //                     .font(.custom("Nunito-Regular", size: 32))
    //
                     
                     
                     NavigationLink(destination: InfoPrepO())
                     {
                     Text("Check Your Chair")
                             .fontWeight(.medium)
                             .multilineTextAlignment(.center)
                             .font(.custom("Nunito-Regular", size: 28))
                             .foregroundColor(text1)
                             .padding(.all, 30.0)
                             .background(.white)
                             .background(RoundedRectangle(cornerRadius: 32)
                                 .clipped())
                             .clipShape(RoundedRectangle(cornerRadius: 32))
                             .overlay(
                                     RoundedRectangle(cornerRadius: 32)
                                         .stroke(col1, lineWidth: 4))
                     }
                     NavigationLink(destination: InfoExplain1())
                     {
                     Text("Explain Time Out")
                             .fontWeight(.medium)
                             .multilineTextAlignment(.center)
                             .font(.custom("Nunito-Regular", size: 28))
                             .foregroundColor(text1)
                             .padding(.all, 30.0)
                             .background(.white)
                             .background(RoundedRectangle(cornerRadius: 32)
                                 .clipped())
                             .clipShape(RoundedRectangle(cornerRadius: 32))
                             .overlay(
                                     RoundedRectangle(cornerRadius: 32)
                                         .stroke(col1, lineWidth: 4))
                     }
                     NavigationLink(destination: OnboardingView6())
                     {
                     Text("Finish Now")
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .font(.custom("Nunito-Regular", size: 32))
                        .padding(.all, 10.0)
                        .background(col1)
                        .background(RoundedRectangle(cornerRadius: 32)
                            .clipped())
                        .clipShape(RoundedRectangle(cornerRadius: 32))
                     }
                     
//                     HStack{
//                     Spacer()
//                     Spacer()
//                         Image("Logo2 1")
//                                 .resizable()
//                                 .scaledToFit()
//                                 .frame(width: 100, height: 100)
//                     }
                     
                    
                    }
                    
                }
            }
        }
