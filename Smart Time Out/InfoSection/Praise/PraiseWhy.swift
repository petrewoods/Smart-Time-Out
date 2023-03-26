//
//  WhyPraise.swift
//  Smart Time Out
//
//  Created by Peter Woods on 27/11/2022.
//

import SwiftUI


//main praise struct
struct PraiseWhy: View
{
    var body: some View
    {
    
        ZStack{
            VStack{
            
        TabView
        {
            //If you're reading my code then hi,
            //I know I can do this algorithmically but i'm rubbish
            PraiseWhy1()
            PraiseWhy2()
            PraiseWhy3()
            
        }
               
        }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}


//substructs
struct PraiseWhy1: View {
    
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                Image("Praise1")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                Text("Your children love your attention. Praising them makes them 'feel your love'.")
                    .font(.custom("Roboto-Regular", size: 28))
                    .foregroundColor(text1)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 20.0)
                
                
            }
        }
    }
}



struct PraiseWhy2: View {
    
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                Image("Praise1")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                Text("When children feel loved they do more of what we want and less of the bad stuff.")
                    .font(.custom("Roboto-Regular", size: 28))
                    .foregroundColor(text1)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 20.0)
                
                
                
            }
        }
    }
}


struct PraiseWhy3: View {
   
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                Image("Praise1")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                Text("Praised children are less physically aggressive and follow instructions better")
                    .font(.custom("Roboto-Regular", size: 28))
                    .foregroundColor(text1)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 20.0)
                
               
                
            }
        }
    }
}

