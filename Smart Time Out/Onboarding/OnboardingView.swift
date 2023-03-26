//
//  OnboardingView.swift
//  Smart Time Out
//
//  Created by Peter Woods on 05/12/2022.
//

//
//  LaunchView.swift
//  Smart Time Out
//
//  Created by Peter Woods on 07/03/2023.
//

import SwiftUI



struct OnboardingView: View {
    
    @State private var show1: Bool = false
    
    var body: some View {
        NavigationView {
        ZStack{
           
          
            Color.accentColor
                .ignoresSafeArea(.all)
            
            
            VStack{
                if show1 {
                    Spacer()
                }
            Image("Title")
                .resizable()
                .frame(width: 327, height: 75)
                .padding(.vertical, 100.0)
            
            if show1 {
                ZStack{
                    VStack{
                        Spacer()
                Text("Welcome to Pause")
                        .font(.custom("Nunito-Regular", size: 38))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .padding()
        
                   
                        Spacer()
                        NavigationLink(destination: OnboardingView2().navigationBarHidden(true).navigationBarBackButtonHidden(true)
                            .navigationBarTitle("")
                            .navigationBarTitleDisplayMode(.inline)){
                        Text("Get Started")
                            
                           .foregroundColor(.black)
                           .fontWeight(.medium)
                           .multilineTextAlignment(.center)
                           .font(.custom("Nunito-Regular", size: 28))
                           .padding(.horizontal, 70.0)
                           .padding(.vertical, 20.0)
                           .background(buttonGray)
                           .background(RoundedRectangle(cornerRadius: 32)
                               .clipped())
                           .clipShape(RoundedRectangle(cornerRadius: 32))
                        }
                        
                            .padding(.vertical, 40.0)
                    }
                    }
          
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 500)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                .transition(AnyTransition.scale.animation(.easeIn(duration: 1)))
            }
                   
        }
       .ignoresSafeArea(.all)
        .onAppear{
            show1.toggle()
        }
        .ignoresSafeArea(.all)
    }
}
        .navigationBarHidden(true)
        
}
        
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
