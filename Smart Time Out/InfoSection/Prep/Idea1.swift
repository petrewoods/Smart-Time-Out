//
//  Idea1.swift
//  Smart Time Out
//
//  Created by Peter Woods on 28/11/2022.
//

import SwiftUI

struct Idea1: View {
    var body: some View {
          ZStack{
            VStack{
                HStack{
                
                    Text("Praising recent behaviour")
                        .font(.custom("Roboto-Regular", size: 38))
                        .foregroundColor(text1)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 20.0)
                Spacer()
                Spacer()
                }
               
                Spacer()
                HStack{
                
                    Text("Think of an example you could praise: \n  Good Sharing \n  Eating food \n  Being Polite \n  Tidying up")
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
