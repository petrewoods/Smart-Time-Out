//
//  ProblemViewQuietTime.swift
//  Smart Time Out
//
//  Created by Peter Woods on 27/12/2022.
//


import SwiftUI

struct ProblemViewQuietTime: View {
    var body: some View {
               ZStack{
                 VStack{
                     HStack{
                     
                         Text("Select a \nProblem")
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
                     NavigationLink(destination: InstructionView())
                     {
                     Text("Breaking \nthe rules")
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
                     
                     NavigationLink(destination: SomethingElse())
                     {
                     Text("Something else")
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

