//
//  Chairspo.swift
//  Smart Time Out
//
//  Created by Peter Woods on 06/12/2022.
//

import SwiftUI


//main praise struct
struct ChairspoO: View
{
    var body: some View
    {
    
        ZStack{
            VStack{
            
        TabView
        {
            //If you're reading my code then hi,
            //I know I can do this algorithmically but i'm rubbish
            Chairspo1O()
            Chairspo2O()
            Chairspo3O()
            
        }
               
        }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}


//substructs
struct Chairspo1O: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                
                Text("Here's a time out chair we like:")
                    .font(.custom("Roboto-Regular", size: 28))
                    .foregroundColor(text1)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 20.0)
                Image("Chairspo1")
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



struct Chairspo2O: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                
                Text("Becca's chair is simple and out of the way")
                    .font(.custom("Roboto-Regular", size: 28))
                    .foregroundColor(text1)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 20.0)
                Image("Chairspo2")
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


struct Chairspo3O: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                
                Text("Dan has a big kitchen and put the chair here")
                    .font(.custom("Roboto-Regular", size: 28))
                    .foregroundColor(text1)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 20.0)
                Image("Chairspo3")
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

