//
//  Idea2.swift
//  Smart Time Out
//
//  Created by Peter Woods on 28/11/2022.
//

import SwiftUI

struct Idea2: View {
    var body: some View {
          ZStack{
            VStack{
                Group{
                
                    Text("Find a quiet place to talk")
                        .font(.custom("Roboto-Regular", size: 38))
                        .foregroundColor(text1)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 10.0)
                Spacer()
               
                Text("You could go to:")
                        .font(.custom("Roboto-Nunito", size: 28))
                        .foregroundColor(text1)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 20.0)
                Spacer()
                Text("Their bedroom")
                    .font(.custom("Roboto-Nunito", size: 28))
                    .foregroundColor(text1)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20.0)
                Text("The time out chair")
                    .font(.custom("Roboto-Nunito", size: 28))
                    .foregroundColor(text1)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20.0)
                Text("Sit on the sofa")
                    .font(.custom("Roboto-Nunito", size: 28))
                    .foregroundColor(text1)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20.0)
                Spacer()
                Text("Do this without other children around")
                    .font(.custom("Roboto-Nunito", size: 28))
                    .foregroundColor(text1)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 20.0)
                    
                Spacer()
                }
  //                     .font(.custom("Nunito-Regular", size: 32))
  //
                
                
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
