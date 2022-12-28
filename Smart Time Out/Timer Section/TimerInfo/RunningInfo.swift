//
//  Leaving2.swift
//  Smart Time Out
//
//  Created by Peter Woods on 14/12/2022.
//

import SwiftUI


//main praise struct

struct RunningInfo: View
{
    var body: some View
    {
    
        ZStack{
            VStack{
            
        TabView
        {
            //If you're reading my code then hi,
            //I know I can do this algorithmically but i'm rubbish
            Leavingimg1()
            Leavingimg2()
            Leavingimg3()
            Leavingimg4()
            
        }
               
        }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}


//substructs
struct Leavingimg1: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                
                Text("We have found tips for when children run away from time out")
                    .font(.custom("Roboto-Regular", size: 22))
                    .foregroundColor(text1)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 20.0)
                Image("Leaving1")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                
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



struct Leavingimg2: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                
                
                Image("Leaving2")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                NavigationLink(destination: LeavingIdea1())
                {
                Text("💡")
                        .font(.custom("Roboto-Regular", size: 32))
                        .foregroundColor(text1)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 20.0)
                }
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


struct Leavingimg3: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                
                
                Image("Leaving3")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                NavigationLink(destination: LeavingIdea1())
                {
                Text("💡")
                        .font(.custom("Roboto-Regular", size: 32))
                        .foregroundColor(text1)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 20.0)
                }
                
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
struct Leavingimg4: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                
                
                Image("Leaving4")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                
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



