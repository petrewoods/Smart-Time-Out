//
//  InfoTimeOut.swift
//  Smart Time Out
//
//  Created by Peter Woods on 27/11/2022.
//

import SwiftUI

struct InfoTimeOut: View {
  var body: some View {
        ZStack{
          VStack{
              HStack{
              
                  Text("Wondering when to use Time Out?")
                      .font(.custom("Roboto-Regular", size: 38))
                      .foregroundColor(text1)
                      .multilineTextAlignment(.leading)
                      .padding(.horizontal, 20.0)
              Spacer()
              Spacer()
              }
             
                  
              
//                     .font(.custom("Nunito-Regular", size: 32))
//
              Spacer()
              //button
              NavigationLink(destination: Timeout1())
              {
              Text("Tell me when to use time out")
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
