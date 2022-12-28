//
//  QuietInfo.swift
//  Smart Time Out
//
//  Created by Peter Woods on 14/12/2022.
//
import SwiftUI

struct QuietInfo: View {
    var body: some View {
          ZStack{
            VStack{
                
                
                    Text("Tell your child")
                        .font(.custom("Roboto-Regular", size: 28))
                        .foregroundColor(text1)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 10.0)
                
               
                Spacer()
                
                    Text("\"The timer is now paused because you are being noisy. The sooner you are quiet the sooner time out will end.\"")
                        .font(.custom("Roboto-Nunito", size: 26))
                        .foregroundColor(text1)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 20.0)
                
                    
                Spacer()
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
