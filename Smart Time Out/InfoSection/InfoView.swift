//
//  InfoView.swift
//  Smart Time Out
//
//  Created by Peter Woods on 23/11/2022.
//

import Foundation

import SwiftUI

struct InfoView: View {
    var body: some View {
           ZStack{
             VStack{
                HStack{
                Text("What do you want to")
                     .font(.custom("Roboto-Regular", size: 28))
                     .foregroundColor(text1)
                     .multilineTextAlignment(.leading)
                     .padding(.horizontal, 20.0)
                    Spacer()
                    Spacer()}
                 HStack{
                 Text("find out about?")
                      .font(.custom("Roboto-Regular", size: 28))
                      .foregroundColor(text1)
                      .multilineTextAlignment(.leading)
                      .padding(.horizontal, 20.0)
                     Spacer()
                     Spacer()}
                 Group{
                 Spacer()
                 Spacer()
                 }
                 //can't have more than 10 static views so may
                 //have to group spacers
                 
                 Group{
                 //button
                 NavigationLink(destination: InfoPrep())
                 {
                 Text("Preparation")
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .font(.custom("Nunito-Regular", size: 32))
                    .padding(.all, 20.0)
                    .background(col1)
                    .background(RoundedRectangle(cornerRadius: 32)
                        .clipped())
                    .clipShape(RoundedRectangle(cornerRadius: 32))
                 }
            
                 
                 
                 NavigationLink(destination: InfoPraise())
                 {
                 Text("Praise")
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .font(.custom("Nunito-Regular", size: 26))
                    .padding(.all, 20.0)
                    .background(col1)
                    .background(RoundedRectangle(cornerRadius: 32)
                        .clipped())
                    .clipShape(RoundedRectangle(cornerRadius: 32))
                 }
                 
                 
                 NavigationLink(destination: InfoTimeOut())
                 {
                 Text("Time Out")
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .font(.custom("Nunito-Regular", size: 26))
                    .padding(.all, 20.0)
                    .background(col1)
                    .background(RoundedRectangle(cornerRadius: 32)
                        .clipped())
                    .clipShape(RoundedRectangle(cornerRadius: 32))
                 }
                 
                 
                 
                 NavigationLink(destination: InfoAboutUs())
                 {
                 Text("About Us")
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .font(.custom("Nunito-Regular", size: 26))
                    .padding(.all, 20.0)
                    .background(col1)
                    .background(RoundedRectangle(cornerRadius: 32)
                        .clipped())
                    .clipShape(RoundedRectangle(cornerRadius: 32))
                 }
                 
                 NavigationLink(destination: SettingsView())
                 {
                 Text("Settings")
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .font(.custom("Nunito-Regular", size: 26))
                    .padding(.all, 20.0)
                    .background(col1)
                    .background(RoundedRectangle(cornerRadius: 32)
                        .clipped())
                    .clipShape(RoundedRectangle(cornerRadius: 32))
                 }
                 
                 NavigationLink(destination: InfoMindful())
                 {
                 Text("Calm Breaths")
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .font(.custom("Nunito-Regular", size: 26))
                    .padding(.all, 20.0)
                    .background(col1)
                    .background(RoundedRectangle(cornerRadius: 32)
                        .clipped())
                    .clipShape(RoundedRectangle(cornerRadius: 32))
                 }
                 }
                 //logo on bottom
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
