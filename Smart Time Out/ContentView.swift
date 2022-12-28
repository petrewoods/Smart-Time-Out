//
//  ContentView.swift
//  Smart Time Out
//
//  Created by Peter Woods on 22/11/2022.
//

import SwiftUI
import UserNotifications

class NotificationManager {
    
    static let instance = NotificationManager() //singleton
    
    func requestAuthorization() {
        let options: UNAuthorizationOptions = [.alert,.sound,.badge]
        UNUserNotificationCenter.current().requestAuthorization(options: options) { success, error in
            if let error = error{
                print("Error, in permissions \(error)")
            }
            else {
                print("Success")
            }
        }
    }
    
    func scheduleNotification() {
        let content = UNMutableNotificationContent()
        content.title = "Remember to praise your child"
        content.subtitle = "🎉 Tips here 🎉"
        content.sound = .default
        
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 600.0 , repeats: false)
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request)
    }
    func cancelNotifications() {
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        UNUserNotificationCenter.current().removeAllDeliveredNotifications()
    }
}
          


struct ContentView: View {
    @State var SavedProgramme = ""
    
    init() {
            getData()
        }
    
    var body: some View {
        
        
        
            ZStack{
             VStack{
                 Text("Hello, \nWelcome to \nSmart Time Out")
                     .font(.custom("Roboto-Regular", size: 38))
                     .foregroundColor(text1)
                     .multilineTextAlignment(.leading)
                     .padding(.horizontal, 20.0)
                 
                 Text("\(SavedProgramme)")
                 .onAppear(perform: {
                     getData()
                 })

                 
                 Group{
                 Spacer()
                 Spacer()
                 }
//                 onAppear(){
//                     NotificationManager.instance.cancelNotifications()
//                 }
                
//                 Button("Request Permission"){
//                     NotificationManager.instance.requestAuthorization()
//                 }
//                 Button("schedule notification"){
//                     NotificationManager.instance.scheduleNotification()                 }
    
                Image("Logo")
                     .resizable()
                     .scaledToFit()
                     .padding()
                    
                 Spacer()
                 
//                     .font(.custom("Nunito-Regular", size: 32))
                 
                 ///Curretly working on fixing the conditionals here
//
                 if(SavedProgramme == "Programme Selected: Smart Time Out" ){
                 //button
                 NavigationLink(destination: OptionViewTimeOut())
                 {
                 Text("Continue")
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .font(.custom("Nunito-Regular", size: 48))
                    .padding(.all, 30.0)
                    .background(col1)
                    .background(RoundedRectangle(cornerRadius: 32)
                        .clipped())
                    .clipShape(RoundedRectangle(cornerRadius: 32))
                 }
                 }
                 
                 if(SavedProgramme == "Programme Selected: Calming Time" ) {
                 //button
                 NavigationLink(destination: OptionViewCalmingTime())
                 {
                 Text("Continue")
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .font(.custom("Nunito-Regular", size: 48))
                    .padding(.all, 30.0)
                    .background(col1)
                    .background(RoundedRectangle(cornerRadius: 32)
                        .clipped())
                    .clipShape(RoundedRectangle(cornerRadius: 32))
                 }
                 }
                 
                 if (SavedProgramme == "Programme Selected: Quiet Time" ){
                 //button
                 NavigationLink(destination: OptionViewQuietTime())
                 {
                 Text("Continue")
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .font(.custom("Nunito-Regular", size: 48))
                    .padding(.all, 30.0)
                    .background(col1)
                    .background(RoundedRectangle(cornerRadius: 32)
                        .clipped())
                    .clipShape(RoundedRectangle(cornerRadius: 32))
                 }
                 }
                 
                 if (SavedProgramme == "Programme Selected: "){
                 //button
                 NavigationLink(destination: OptionViewQuietTime())
                 {
                 Text("Continue")
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .font(.custom("Nunito-Regular", size: 48))
                    .padding(.all, 30.0)
                    .background(col1)
                    .background(RoundedRectangle(cornerRadius: 32)
                        .clipped())
                    .clipShape(RoundedRectangle(cornerRadius: 32))
                 }
                 }
                 
              
                 Group{
                 Spacer()
                 Spacer()
                 Spacer()
                 }
                
                
            }
                
            }
        }
    
    func getData(){
        SavedProgramme = "Programme Selected: \(UserDefaults.standard.string(forKey: "Programme") ?? "nil")"
        
        
    }
        
    }


    
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
////        ContentView()
////                   .previewDevice(PreviewDevice(rawValue: "iPhone 13"))
////                   .previewDisplayName("iPhone 12")
//
//    ContentView()
//                   .previewDevice(PreviewDevice(rawValue: "iPhone SE (3rd generation)"))
//                   .previewDisplayName("iPhone SE (3rd Generation)")
//    }
//}
//
//
//
//                





