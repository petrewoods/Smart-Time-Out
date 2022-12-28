//
//  Prep3.swift
//  Smart Time Out
//
//  Created by Peter Woods on 27/11/2022.
//

import SwiftUI

struct Prep3: View {
    var body: some View {
          ZStack{
            VStack{
                HStack{
                
                    Text("Explain time out \nto your child so \nthey know what \nto expect")
                        .font(.custom("Roboto-Regular", size: 38))
                        .foregroundColor(text1)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 20.0)
                Spacer()
                Spacer()
                }
               
                    
                Spacer()
  //                     .font(.custom("Nunito-Regular", size: 32))
  //
                
                //button
                NavigationLink(destination: Prep4())
                {
                Text("Continue")
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
