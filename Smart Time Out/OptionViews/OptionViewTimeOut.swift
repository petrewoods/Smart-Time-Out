//
//  File.swift
//  Smart Time Out
//
//  Created by Peter Woods on 23/11/2022.
//

import SwiftUI

struct OptionViewTimeOut: View {
    var body: some View {
           ZStack{
             VStack{
                 HStack{
                 Text("Select an Option")
                     .font(.custom("Roboto-Regular", size: 32))
                     .foregroundColor(text1)
                     .multilineTextAlignment(.leading)
                     .padding(.horizontal, 10.0)
                Spacer()
                 }
                 Group{
                     Spacer()
                     Spacer()
                     Spacer()
                     Spacer()
                     Spacer()
                    }
//                     .font(.custom("Nunito-Regular", size: 32))
//
                 
                 //button
                 NavigationLink(destination: ProblemView())
                 {
                 Text("Start \n Time Out")
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
            
                 
                 
                 NavigationLink(destination: InfoView())
                 {
                 Text("Learn More")
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
                 //logo on bottom
                 
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

