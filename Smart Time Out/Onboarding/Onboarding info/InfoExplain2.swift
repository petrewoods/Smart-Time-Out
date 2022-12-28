//
//  InfoExplain2.swift
//  Smart Time Out
//
//  Created by Peter Woods on 14/12/2022.
//
import Foundation
import SwiftUI

struct InfoExplain2: View {
    
    var body: some View {
        
      
        
        ZStack{
                 VStack{
                    
                     
                     Text("Use the checklists while you explain time out so you don't miss anything")
                             .font(.custom("Roboto-Regular", size: 32))
                             .foregroundColor(text1)
                             .multilineTextAlignment(.leading)
                             .padding(.horizontal, 20.0)
                     
                    
                         
                     Spacer()
                     Spacer()
                     Spacer()
    //                     .font(.custom("Nunito-Regular", size: 32))
    //
                     
                     
                     NavigationLink(destination: Explain1O())
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
