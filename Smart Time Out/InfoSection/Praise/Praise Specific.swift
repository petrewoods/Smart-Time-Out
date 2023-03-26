//
//  Praise Specific.swift
//  Smart Time Out
//
//  Created by Peter Woods on 27/11/2022.
//

import SwiftUI


//main praise struct
struct PraiseSpecific: View
{
    var body: some View
    {
    
        ZStack{
            VStack{
            
        TabView
        {
            //If you're reading my code then hi,
            //I know I can do this algorithmically but i'm rubbish
            PraiseSpecific1()
            PraiseSpecific2()
            PraiseSpecific3()
            
        }
               
        }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}


//substructs
struct PraiseSpecific1: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                Image("Specific1")
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



struct PraiseSpecific2: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                Image("Specific1")
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


struct PraiseSpecific3: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                Image("Specific1")
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
