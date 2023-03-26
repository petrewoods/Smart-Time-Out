//
//  PraiseGenerous.swift
//  Smart Time Out
//
//  Created by Peter Woods on 27/11/2022.
//

import SwiftUI


//main praise struct
struct PraiseGenerous: View
{
    var body: some View
    {
    
        ZStack{
            VStack{
            
        TabView
        {
            //If you're reading my code then hi,
            //I know I can do this algorithmically but i'm rubbish
            PraiseGenerous1()
            PraiseGenerous2()
            PraiseGenerous3()
            
        }
               
        }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}


//substructs
struct PraiseGenerous1: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                Image("Generous1")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                Text("Always watch out for things to praise, especially after time out")
                    .font(.custom("Roboto-Regular", size: 28))
                    .foregroundColor(text1)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 20.0)
               
                
            }
        }
    }
}



struct PraiseGenerous2: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                Image("Generous1")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                Text("Don't hold back because of falling out. Praise fixes your relationship")
                    .font(.custom("Roboto-Regular", size: 28))
                    .foregroundColor(text1)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 20.0)
                
               
                
            }
        }
    }
}


struct PraiseGenerous3: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                Image("Generous1")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                Text("Praise now makes it easier for your child to behave next time.")
                    .font(.custom("Roboto-Regular", size: 28))
                    .foregroundColor(text1)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 20.0)
               
                
            }
        }
    }
}

