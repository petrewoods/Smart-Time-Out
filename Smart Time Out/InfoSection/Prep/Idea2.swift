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
                HStack{
                
                    Text("Find a quiet place to talk")
                        .font(.custom("Roboto-Regular", size: 38))
                        .foregroundColor(text1)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 20.0)
                Spacer()
                Spacer()
                }
               
                Spacer()
                HStack{
                
                    Text("You could go to \n  Their bedroom \n  The time out chir \n  Sit on the sofa \n\n\nDo this without other children around")
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
