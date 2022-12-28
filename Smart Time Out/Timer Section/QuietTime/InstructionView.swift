//
//  InstructionView.swift
//  Smart Time Out
//
//  Created by Peter Woods on 27/12/2022.
//
import SwiftUI

struct InstructionView: View {

        
        var body: some View {
            
          
            
            ZStack{
                     VStack{
                        
                         
                         Text("Give an instruction")
                                 .font(.custom("Roboto-Regular", size: 36))
                                 .foregroundColor(text1)
                                 .multilineTextAlignment(.leading)
                                 .padding(.horizontal, 20.0)
                         
                        Spacer()
                         Text("\"Stop doing [bad thing] and start doing [good thing] please.")
                                 .font(.custom("Roboto-Nunito", size: 28))
                                 .foregroundColor(text1)
                                 .multilineTextAlignment(.leading)
                                 .padding(.horizontal, 20.0)
                         
                         
                             
                         
                         
                         Spacer()
        //                     .font(.custom("Nunito-Regular", size: 32))
        //
                         
                         
                         NavigationLink(destination: ContentView())
                         {
                         Text("Behaviour improved")
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
                         
                         NavigationLink(destination: QuietTimeInfo1())
                         {
                         Text("Problem Continues")
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
