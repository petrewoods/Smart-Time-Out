//
//  ContentView.swift
//  Smart Time Out
//
//  Created by Peter Woods on 22/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
           ZStack{
             VStack{
                 Text("Hello, \nWelcome to \nSmart Time Out")
                     .font(.custom("Roboto-Regular", size: 38))
                     .foregroundColor(text1)
                     .multilineTextAlignment(.leading)
                     .padding(.horizontal, 20.0)
                     
                 Spacer()
                 Spacer()
                
    
                Image("Logo")
                     .resizable()
                     .scaledToFit()
                     .padding()
                    
                 Spacer()
                 
//                     .font(.custom("Nunito-Regular", size: 32))
//
                 
                 //button
                 NavigationLink(destination: OptionView())
                 {
                 Text("Continue")
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .font(.custom("Nunito-Regular", size: 48))
                    .padding(.all, 30.0)
                    .background(col1)
                    .background(RoundedRectangle(cornerRadius: 32)
                        .clipped())
                    .clipShape(RoundedRectangle(cornerRadius: 32))
                 }
              
                 Spacer()
                 Spacer()
                 Spacer()
                
                }
                
            }
        }
    }
}

//    
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//                   .previewDevice(PreviewDevice(rawValue: "iPhone 13"))
//                   .previewDisplayName("iPhone 12")
//
//        ContentView()
//                   .previewDevice(PreviewDevice(rawValue: "iPhone SE (3rd generation)"))
//                   .previewDisplayName("iPhone SE (3rd Generation)")
//    }
//}
//


                
                




