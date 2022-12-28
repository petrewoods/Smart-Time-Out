//
//  BehaviourPraise.swift
//  Smart Time Out
//
//  Created by Peter Woods on 12/12/2022.
//
import SwiftUI

struct BehaviourPraise: View {
  var body: some View {
        ZStack{
          VStack{
              HStack{
              
                  Text("BEHAVIOUR PRAISE SCREEN")
                      .font(.custom("Roboto-Regular", size: 38))
                      .foregroundColor(text1)
                      .multilineTextAlignment(.leading)
                      .padding(.horizontal, 20.0)
              Spacer()
              Spacer()
              }
             
                  
              
//                     .font(.custom("Nunito-Regular", size: 32))
//
              
              //button
              NavigationLink(destination: ContentView())
              {
              Text("Ok that's great")
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
