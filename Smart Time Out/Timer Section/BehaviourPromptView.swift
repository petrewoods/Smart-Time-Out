//
//  BehaviourPromptView.swift
//  Smart Time Out
//
//  Created by Peter Woods on 26/11/2022.
//
import SwiftUI

struct BehaviourPromtView: View {
    var body: some View {
    ZStack{
      VStack{
          
          Text("Tell your child")
              .font(.custom("Roboto-Regular", size: 48))
              .foregroundColor(text1)
              .multilineTextAlignment(.leading)
              .padding(.horizontal, 10.0)
          Spacer()
          Spacer()
          HStack{
              Spacer()
              Text("\"If you don't follow \nthe instructions then \nyou will have \nto go into \ntime out\"")
                  .font(.custom("Roboto-Regular", size: 32))
                  .foregroundColor(text1)
                  .multilineTextAlignment(.leading)
              
              Spacer()
              Spacer()
              Spacer()
                }
                
          Spacer()
          Spacer()
          Spacer()
//                     .font(.custom("Nunito-Regular", size: 32))
//
          
          //button
          NavigationLink(destination: TimerView(choice: "O"))
          {
          Text("Behaviour is \n not improving")
             .foregroundColor(.white)
             .fontWeight(.medium)
             .multilineTextAlignment(.center)
             .font(.custom("Nunito-Regular", size: 38))
             .padding(.all, 30.0)
             .background(col1)
             .background(RoundedRectangle(cornerRadius: 32)
                 .clipped())
             .clipShape(RoundedRectangle(cornerRadius: 32))
          }
     
          
          //logo on bottom
          
          HStack{
          Spacer()
          Spacer()
          Image("Logo2 1")
          }
             
          
         }
         
     }
 }
}

