//
//  Prep1.swift
//  Smart Time Out
//
//  Created by Peter Woods on 27/11/2022.
//

import SwiftUI

struct Prep1: View {
    var body: some View {
               ZStack{
                 VStack{
                     HStack{
                     
                         Text("Here's a page \nto check the \ntime out chair")
                             .font(.custom("Roboto-Regular", size: 42))
                             .foregroundColor(text1)
                             .multilineTextAlignment(.leading)
                             .padding(.horizontal, 20.0)
                     Spacer()
                     Spacer()
                     }
                    
                         
                     Spacer()
                     Spacer()
                     Spacer()
    //                     .font(.custom("Nunito-Regular", size: 32))
    //
                     
                     //button
                     NavigationLink(destination: Prep2())
                     {
                     Text("Lets get \nstarted")
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
                     
                     Spacer()
                     
                     NavigationLink(destination: BehaviourPromtView())
                     {
                     Text("Give me \nChair inspo")
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .font(.custom("Nunito-Regular", size: 32))
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
                     
                     HStack{
                     Spacer()
                     Spacer()
                     Image("Logo2 1")
                     }
                     
                    
                    }
                    
                }
            }
        }
