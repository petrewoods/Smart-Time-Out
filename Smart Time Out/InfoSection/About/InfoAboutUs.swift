//
//  InfoAboutUs.swift
//  Smart Time Out
//
//  Created by Peter Woods on 27/11/2022.
//

import SwiftUI


//main praise struct
struct InfoAboutUs: View
{
    var body: some View
    {
    
        ZStack{
            VStack{
                Text("About us")
                    .font(.custom("Roboto-Regular", size: 38))
                    .foregroundColor(text1)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 20.0)
            
        TabView
        {
            //If you're reading my code then hi,
            //I know I can do this algorithmically but i'm rubbish
            About1()
            About2()
            About3()
            
            
        }
               
        }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}


//substructs
struct About1: View {
    
    var body: some View {
        ZStack
        {
            
            VStack
            {
                Text("We're two doctors who think managing behaviour is the hardest part of family life. Parenting skills are NHS recommended to improve bahvaiour problems")
                    .font(.custom("Roboto-Regular", size: 24))
                    .foregroundColor(text1)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 20.0)
                HStack{
                    
                    VStack{
                
                    
                    Image("Peter")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .overlay(Circle().stroke(text1,lineWidth:4))
                        .padding(.horizontal, 30)
                    Text("Peter")
                        .font(.custom("Roboto-Nunito", size: 28))
                        .foregroundColor(text1)
                        .multilineTextAlignment(.leading)
                        
                    Link(destination: URL(string: "https://www.linkedin.com/in/drpwoods/")!, label:
                            {
                            Label("Linkedin",systemImage: "link")
                            .font(.custom("Roboto-Nunito",size:14))
                            .padding()
                            .foregroundColor(Color.blue)
                            .multilineTextAlignment(.leading)})
                    }
                             
                    VStack{
                        Image("Nathan")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(text1,lineWidth:4))
                            .padding(.horizontal, 30)
                        Text("Nathan")
                            .font(.custom("Roboto-Nunito", size: 28))
                            .foregroundColor(text1)
                            .multilineTextAlignment(.leading)
                        
                        Link(destination: URL(string: "https://www.linkedin.com/in/nathan-hodson-77b16b192/")!, label:
                                {
                                Label("Linkedin",systemImage: "link")
                                .font(.custom("Roboto-Nunito",size:14))
                                .padding()
                                .foregroundColor(Color.blue)
                                .multilineTextAlignment(.leading)})
                    
                    }
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



struct About2: View {
    
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                
                Text("We have built this app to guide parents through the time out process, from preparing time out to getting back to normal")
                    .font(.custom("Roboto-Regular", size: 24))
                    .foregroundColor(text1)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 20.0)
                
                Spacer()
                
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


struct About3: View {
   
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                
                Text("The Smart Time Out App aims to strengthen families and bolster children's Mental health by making it easy to be a great parent")
                    .font(.custom("Roboto-Regular", size: 24))
                    .foregroundColor(text1)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 20.0)
                
                Spacer()
                
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



