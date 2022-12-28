//
//  SettingsView.swift
//  Smart Time Out
//
//  Created by Peter Woods on 10/12/2022.
//
import SwiftUI
import Foundation

struct SettingsView: View {
    
    @State var SavedProgramme = ""

    
    var body: some View {
        VStack {
           
            Text("\(SavedProgramme)")
            NavigationLink(destination: OnboardingView()){
                Text("restart onboarding")
            }.onAppear(perform: {
                getData()
            })
        }
    }
    func getData(){
        SavedProgramme = "Programme is: \(UserDefaults.standard.string(forKey: "Programme") ?? "Time Out")"
        
        
    }
}

