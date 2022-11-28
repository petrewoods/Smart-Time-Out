//
//  WhichPraise.swift
//  Smart Time Out
//
//  Created by Peter Woods on 27/11/2022.
//

import SwiftUI

struct WhichPraise: View {
  var body: some View {
        ZStack{
          VStack{
              HStack{
              
                  Text("There are lots of aspects to good praise")
                      .font(.custom("Roboto-Regular", size: 32))
                      .foregroundColor(text1)
                      .multilineTextAlignment(.leading)
                      .padding(.horizontal, 20.0)
              Spacer()
              Spacer()
              }
             
                  
              
//                     .font(.custom("Nunito-Regular", size: 32))
//
              
              //button
              NavigationLink(destination: Praisedelay())
              {
              Text("Don't Delay")
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
              
              NavigationLink(destination: PraiseGenerous())
              {
              Text("Be Generous")
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
              
              NavigationLink(destination: PraiseSmall())
              {
              Text("Start Small")
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
              
              NavigationLink(destination: PraiseSpecific())
              {
              Text("Be Specific")
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
              }
              
             
             }
             
         }
     }
 }
