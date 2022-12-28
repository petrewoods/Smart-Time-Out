//
//  QuietTimeInfo1.swift
//  Smart Time Out
//
//  Created by Peter Woods on 27/12/2022.
//

import SwiftUI

struct QuietTimeInfo1: View {
    
    var body: some View {
        
      
        
        ZStack{
                 VStack{
                    
                     
                     
                     Text("Tell your child")
                             .font(.custom("Roboto-Regular", size: 36))
                             .foregroundColor(text1)
                             .multilineTextAlignment(.leading)
                             .padding(.horizontal, 20.0)
                     
                    Spacer()
                     Text("\"Because you did [bad thing] you have to sit in the quiet time chair. \nI will let you calm down.")
                             .font(.custom("Roboto-Nunito", size: 28))
                             .foregroundColor(text1)
                             .multilineTextAlignment(.leading)
                             .padding(.horizontal, 20.0)
                     
                     Spacer()
                     
                     
                     
                     NavigationLink(destination: QuietTimeInfo2())
                     {
                     Text("Continue")
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
