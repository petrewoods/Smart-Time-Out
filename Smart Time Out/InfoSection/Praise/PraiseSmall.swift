//
//  PraiseGenerous.swift
//  Smart Time Out
//
//  Created by Peter Woods on 27/11/2022.
//

import SwiftUI


//main praise struct
struct PraiseSmall: View
{
    var body: some View
    {
    
        ZStack{
            VStack{
            
        TabView
        {
            //If you're reading my code then hi,
            //I know I can do this algorithmically but i'm rubbish
            PraiseSmall1()
            PraiseSmall2()
            PraiseSmall3()
            
        }
               
        }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}


//substructs
struct PraiseSmall1: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                Image("Small1")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                Text("Don't just say \"good boy\" or \"well done\". Tell your child exactly what they did")
                    .font(.custom("Roboto-Regular", size: 28))
                    .foregroundColor(text1)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 20.0)
                
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



struct PraiseSmall2: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                Image("Small1")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                Text("\"Well done for picking up your coat\" or \"giving the drink to your brother was very kind\".")
                    .font(.custom("Roboto-Regular", size: 28))
                    .foregroundColor(text1)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 20.0)
                
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


struct PraiseSmall3: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                Image("Small1")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                Text("Pro-tip: avoid saying \"for once\" or \"at last\". They turn praise into criticism")
                    .font(.custom("Roboto-Regular", size: 28))
                    .foregroundColor(text1)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 20.0)
                
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

