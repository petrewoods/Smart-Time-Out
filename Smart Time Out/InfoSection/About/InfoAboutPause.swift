//
//  InfoAboutPause.swift
//  Smart Time Out
//
//  Created by Peter Woods on 21/03/2023.
//

import SwiftUI


//main praise struct
struct InfoAboutPause: View
{
    
   
    var body: some View
    {
        
        ZStack{
            ScrollView{
                VStack{
                    Text("Pause guides parents through evidence-based parenting techniques in moments of crisis, as well as helping parents prepare for difficult times and get back to normal afterwards.\n\nThis interactive app draws on 40 years of parenting research (and includes elements of mindfulness) to help parents use short, consistent, and effective time out, calming time, or quiet time when their children are having difficulty managing their emotions.\n\nWith easy-to-use advice about encouraging children, a mindfulness zone, and three simple timers, “Pause” makes it easier to be a great parent.")
                        .font(.custom("Roboto-Regular", size: 22))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding(30.0)
                    
                }
            }
        }
    }
}

