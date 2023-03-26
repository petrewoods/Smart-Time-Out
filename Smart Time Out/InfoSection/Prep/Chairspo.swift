//
//  Chairspo.swift
//  Smart Time Out
//
//  Created by Peter Woods on 06/12/2022.
//

import SwiftUI


//main praise struct
struct Chairspo: View
{
    var body: some View
    {
    
        ZStack{
            VStack{
            
        TabView
        {
            //If you're reading my code then hi,
            //I know I can do this algorithmically but i'm rubbish
            Chairspo1()
            Chairspo2()
            Chairspo3()
            
        }
               
        }
        }
        
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .navigationTitle("When to use Time Out")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(
            leading: NavigationLink(
                destination: ContentView().navigationBarHidden(true),
                label: {
                    Image("BackButton")
                }
            )
        )
        
    }
}


//substructs
struct Chairspo1: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                
                
                Image("Chairspo1")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                    .frame(width: 400, height: 400)
                    .cornerRadius(20)
             
                Text("A heavy chair in the corner\nA cushion to squeeze to calm down \nNothing else within reach")
                    .font(.custom("Roboto-Regular", size: 18))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(40.0)
               
                
            }
        }
    }
}



struct Chairspo2: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                
                
                Image("Chairspo2")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                    .frame(width: 400, height: 400)
                    .cornerRadius(20)
                Text("A chair around the corner means there is less social sensory stimulation")
                    .font(.custom("Roboto-Regular", size: 18))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(40.0)
                
                
            }
        }
    }
}


struct Chairspo3: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                
                
                Image("Chairspo3")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                    .frame(width: 400, height: 400)
                    .cornerRadius(20)
                Text("This chair is in the middle of the room so the child can’t rock against the walls")
                    .font(.custom("Roboto-Regular", size: 18))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(40.0)
                
            }
        }
    }
}



struct Chairspo_Preview: PreviewProvider {
    static var previews: some View {
        
        
        Chairspo()
            .previewDevice(PreviewDevice(rawValue: "iPhone 13"))
            .previewDisplayName("iPhone 13")
        
        Chairspo()
            .previewDevice(PreviewDevice(rawValue: "iPhone SE (3rd generation)"))
            .previewDisplayName("iPhone SE (3rd Generation)")
        
    }
}


