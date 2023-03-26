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
            ScrollView{
                VStack{
                    Text("We're two doctors who think managing behaviour is the hardest part of family life. \n\nParenting skills are NHS recommended to improve behaviour problems")
                        .font(.custom("Roboto-Regular", size: 22))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding(30.0)
                    
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
                    Text("We have built this app to guide parents through the time out process, from preparing time out to getting back to normal.\n\nThe Pause app aims to strengthen families and bolster children’s mental health by making it easy to be a great parent")
                        .font(.custom("Roboto-Regular", size: 22))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding(30.0)
                    
                    
                }
            }
        }
        
    }
}
        
        
