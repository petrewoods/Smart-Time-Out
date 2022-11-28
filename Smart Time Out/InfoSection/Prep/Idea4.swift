//
//  Idea4.swift
//  Smart Time Out
//
//  Created by Peter Woods on 28/11/2022.
//


import SwiftUI

struct Idea4: View {
    var body: some View {
          ZStack{
            VStack{
                HStack{
                
                    Text("Ask how they can calm down")
                        .font(.custom("Roboto-Regular", size: 38))
                        .foregroundColor(text1)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 20.0)
                Spacer()
                Spacer()
                }
               
                Spacer()
                HStack{
                
                    Text("You could suggest: \n  Deep breathing \n  Closing their eyes \n  Stroking a soft toy")
                        .font(.custom("Roboto-Nunito", size: 28))
                        .foregroundColor(text1)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 20.0)
                Spacer()
                Spacer()
                }
                    
                Spacer()
  //                     .font(.custom("Nunito-Regular", size: 32))
  //
                
                
                HStack{
                Spacer()
                Spacer()
                Image("Logo2 1")
                }
                
               
               }
               
           }
       }
   }
