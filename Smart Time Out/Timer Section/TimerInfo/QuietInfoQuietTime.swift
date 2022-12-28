//
//  QuietInfoQuietTime.swift
//  Smart Time Out
//
//  Created by Peter Woods on 27/12/2022.
//

import SwiftUI

struct QuietInfoQuietTime: View {

        
        var body: some View {
            
          
            
            ZStack{
                     VStack{
                        
                         
                         Text("Tell your child")
                                 .font(.custom("Roboto-Regular", size: 36))
                                 .foregroundColor(text1)
                                 .multilineTextAlignment(.leading)
                                 .padding(.horizontal, 20.0)
                         
                        Spacer()
                         Text("\"The Timer is now paused because you are being noisy. \nThe sooner you are quiet the sooner time out will end.")
                                 .font(.custom("Roboto-Nunito", size: 28))
                                 .foregroundColor(text1)
                                 .multilineTextAlignment(.leading)
                                 .padding(.horizontal, 20.0)
                         
                         
                             
                         
                         
                         Spacer()
        //                     .font(.custom("Nunito-Regular", size: 32))
        //
                         
                         
                         NavigationLink(destination: TimerViewQuietTime())
                         {
                         Text("This worked")
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
                         
                         NavigationLink(destination: QuietInfoQuietTime2())
                         {
                         Text("Still bad!")
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
