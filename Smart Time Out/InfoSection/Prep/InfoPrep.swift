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
                     HStack{
                     
                         Text("What do you \nwant to \nprepare")
                             .font(.custom("Roboto-Regular", size: 38))
                             .foregroundColor(text1)
                             .multilineTextAlignment(.leading)
                             .padding(.horizontal, 20.0)
                     Spacer()
                     Spacer()
                     }
                    Spacer()
                         
                     
    //                     .font(.custom("Nunito-Regular", size: 32))
    //
                     
                     //button
                     NavigationLink(destination: Prep1())
                     {
                     Text("Prepare \nthe chair")
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .font(.custom("Nunito-Regular", size: 28))
                        .padding(.all, 20.0)
                        .background(col1)
                        .background(RoundedRectangle(cornerRadius: 32)
                            .clipped())
                        .clipShape(RoundedRectangle(cornerRadius: 32))
                     }
                     
                     Spacer()
                     
                     NavigationLink(destination: Prep3())
                     {
                     Text("Explain \ntime out")
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
                     
                     HStack{
                     Spacer()
                     Spacer()
                     Image("Logo2 1")
                     }
                     
                    
                    }
                    
                }
            }
        }
