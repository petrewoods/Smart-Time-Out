//
//  Praise1.swift
//  Smart Time Out
//
//  Created by Peter Woods on 27/11/2022.
//

import SwiftUI


//main praise struct
struct Praisedelay: View
{
    var body: some View
    {
    
        ZStack{
            VStack{
            
        TabView
        {
            //If you're reading my code then hi,
            //I know I can do this algorithmically but i'm rubbish
            Praisedelay1()
            Praisedelay2()
            Praisedelay3()
            
        }
               
        }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}


//substructs
struct Praisedelay1: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                Image("Delay1")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                Text("The Quicker you give the praise the more powerful it becomes.")
                    .font(.custom("Roboto-Regular", size: 28))
                    .foregroundColor(text1)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 20.0)
                
               
                
            }
        }
    }
}



struct Praisedelay2: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                Image("Delay1")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                Text("Immediate praise is the best: that's neuroscience!")
                    .font(.custom("Roboto-Regular", size: 28))
                    .foregroundColor(text1)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 20.0)
                
              
                
            }
        }
    }
}


struct Praisedelay3: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                Image("Delay1")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                Text("Even if it's not immediate giving praise later will reduce bad behaviour")
                    .font(.custom("Roboto-Regular", size: 28))
                    .foregroundColor(text1)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 20.0)
                
                
                
            }
        }
    }
}

