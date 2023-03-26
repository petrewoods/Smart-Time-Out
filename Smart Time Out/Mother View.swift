//
//  Mother View.swift
//  Smart Time Out
//
//  Created by Peter Woods on 05/12/2022.
//



import Foundation
import SwiftUI




struct MotherView: View {
    var body: some View {
        
        
        
            
            if UserDefaults.standard.bool(forKey: "hasSeenOnboarding") {
                // If the user has seen the onboarding view, show the content view
                //OnboardingView()
                //ContentView()
                LaunchView()
            } else {
                // If the user hasn't seen the onboarding view, show the onboarding view
                OnboardingView()
                    // Set the "hasSeenOnboarding" value when the onboarding view is dismissed
                    .onDisappear {
                        UserDefaults.standard.set(true, forKey: "hasSeenOnboarding")
                    }
            
        }
    }
}
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
////        ContentView()
////                   .previewDevice(PreviewDevice(rawValue: "iPhone 13"))
////                   .previewDisplayName("iPhone 12")
//
//    MotherView()
//                   .previewDevice(PreviewDevice(rawValue: "iPhone SE (3rd generation)"))
//                   .previewDisplayName("iPhone SE (3rd Generation)")
//    }
//}
//


                
