//
//  ContentView.swift
//  Smart Time Out
//
//  Created by Peter Woods on 22/11/2022.
//

import SwiftUI
import UserNotifications

enum Tabs: String {
    case Home
    case Calm
    case Settings
}

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
    @State var selectedTab: Tabs = .Home
    @State private var selectedProfile: ChildProfile? = nil
    
    init() {
        //getData()
        
        
        
        //            // customize the appearance of the tab bar
        //            let appearance = UITabBarAppearance()
        
        
        
        
        
        
        
        
        //            // customize the separator
        // appearance.shadowColor = .gray // set the separator color
        
    }
    
    
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            
            TabView1()
                .tag(Tabs.Home)
                .tabItem {
                    VStack {
                        Image("TimerSymbol")
                            .renderingMode(.template)
                            .padding()
                        
                        Text("Time Out")
                            .font(.caption)
                    }
                }
            
            
            TabView2()
                .tag(Tabs.Calm)
                .tabItem {
                    VStack {
                        Image("Lotus")
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 15, height: 15)
                            .padding()
                        Text("Relax")
                            .font(.caption)
                    }
                }
            TabView3()
                .tag(Tabs.Settings)
                .tabItem {
                    
                    VStack {
                        Image("SettingSymbol")
                        
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 15, height: 25)
                            .padding(10)
                        
                        Text("Settings")
                            .font(.caption)
                        
                    }
                }
        }
        
        //.navigationBarTitle(titleForTab(selectedTab))
        
        .onAppear {
            NotificationManager.instance.requestAuthorization()
        }
        
        
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(true)
        .navigationBarItems(leading: Image("TitleBlue")
            .resizable()
            .scaledToFit()
            .frame(width: nil, height: 30.0),
                            trailing: NavigationLink(destination: TimerViewCalmingTime(choice: 1).navigationBarHidden(true).navigationBarBackButtonHidden(true)) {
            Image("QuickTime")
                .resizable()
                .scaledToFit()
                .frame(width: nil, height: 60.0)
        })
        
        .navigationBarTitleDisplayMode(.inline)
        .accentColor(.black)
    }
    
    
    
    
    
    
    
    func getData(){
        SavedProgramme = "Programme Selected: \(UserDefaults.standard.string(forKey: "Programme") ?? "nil")"
    }
    
}
        
    


struct TabView1: View{
    
    @State var SavedProgramme = ""
    @State private var tabBar: UITabBar! = nil
   
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Nunito-Regular", size: 16)!, .foregroundColor: UIColor.init(Color(UIColor.black))]
        
    }
    var body: some View {
        
        
        
            
            ScrollView{
                
                HStack{
                Text("How can we help today?")
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .font(.custom("Nunito-Regular", size: 18))
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                    .padding(.horizontal, 20)
                    .padding(.top, 30)
                    .padding(.bottom, 15)

                    Spacer()
                }

                
                
                ZStack{
                    VStack{
                        //Title Hstack
                        
                        //1st item
                        
                       
                            //this is conditional on programme
                            if SavedProgramme == "Calming Time"{
                                NavigationLink(destination: ProblemViewCalmingTime().navigationBarHidden(true)){
                                    
                                    
                                    HStack{
                                        
                                        
                                        Text("Start Calming Time")
                                            .foregroundColor(.black)
                                            .multilineTextAlignment(.leading)
                                            .font(.custom("Nunito-Regular", size: 20))
                                            .lineLimit(2)
                                            .minimumScaleFactor(0.5)
                                            .padding(10)
                                        
                                        
                                        Spacer()
                                        
                                        Image("CalmingTime")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 130)
                                            .cornerRadius(20)
                                            .padding([.top, .bottom, .trailing], 7.0)
                                        
                                        
                                    }
                                    
                                    
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(Color(red: 0.863, green: 0.863, blue: 0.863, opacity: 1.0), lineWidth: 1)
                                    )
                                    .padding(.vertical, 5.0)
                                    .padding(.horizontal, 8.0)
                                }
                            }
                            //end of item
                            //this is conditional on programme
                            //this is the programme that if onboarding was cancelled before programme selected it will default to
                            
                            if SavedProgramme == "nil"{
                                NavigationLink(destination: ProblemViewCalmingTime().navigationBarHidden(true)){
                                    
                                    
                                    HStack{
                                        
                                        
                                        Text("Start Calming Time")
                                            .foregroundColor(.black)
                                            .multilineTextAlignment(.leading)
                                            .font(.custom("Nunito-Regular", size: 20))
                                            .lineLimit(2)
                                            .minimumScaleFactor(0.5)
                                            .padding(10)
                                        
                                        
                                        Spacer()
                                        
                                        Image("CalmingTime")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 130)
                                            .cornerRadius(20)
                                            .padding([.top, .bottom, .trailing], 7.0)
                                        
                                        
                                    }
                                    
                                    
                                    
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(Color(red: 0.863, green: 0.863, blue: 0.863, opacity: 1.0), lineWidth: 1)
                                    )
                                    .padding(.vertical, 5.0)
                                    .padding(.horizontal, 8.0)
                                }
                                
                            }
                            //end of item
                            
                            //this is conditional on programme
                            if SavedProgramme == "Quiet Time"{
                                NavigationLink(destination: ProblemViewQuietTime().navigationBarHidden(true).navigationBarBackButtonHidden(true)){
                                    
                                    HStack{
                                        
                                        
                                        Text("Start Quiet Time")
                                            .foregroundColor(.black)
                                            .multilineTextAlignment(.leading)
                                            .font(.custom("Nunito-Regular", size: 20))
                                            .lineLimit(2)
                                            .minimumScaleFactor(0.5)
                                            .padding(10)
                                        
                                        Spacer()
                                        
                                        Image("CalmingTime")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 130)
                                            .cornerRadius(20)
                                            .padding([.top, .bottom, .trailing], 7.0)
                                        
                                        
                                    }
                                    
                                    
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(Color(red: 0.863, green: 0.863, blue: 0.863, opacity: 1.0), lineWidth: 1)
                                    )
                                    .padding(.vertical, 5.0)
                                    .padding(.horizontal, 8.0)
                                }
                            }
                            //end of item
                            
                            //this is conditional on programme
                            if SavedProgramme == "Smart Time Out"{
                                NavigationLink(destination: ProblemView().navigationBarHidden(true).navigationBarBackButtonHidden(true)){
                                    
                                    HStack{
                                        
                                        
                                        Text("Start Smart Time Out")
                                            .foregroundColor(.black)
                                            .multilineTextAlignment(.leading)
                                            .font(.custom("Nunito-Regular", size: 20))
                                            .lineLimit(2)
                                            .minimumScaleFactor(0.5)
                                            .padding(10)
                                        
                                        Spacer()
                                        
                                        Image("CalmingTime")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 130)
                                            .cornerRadius(20)
                                            .padding([.top, .bottom, .trailing], 7.0)
                                        
                                        
                                    }
                                    
                                    
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(Color(red: 0.863, green: 0.863, blue: 0.863, opacity: 1.0), lineWidth: 1)
                                    )
                                    .padding(.vertical, 5.0)
                                    .padding(.horizontal, 8.0)
                                }
                            }
                            //end of item
                            //this is conditional on programme
                            if SavedProgramme == "Select Later"{
                                NavigationLink(destination: ForceSelect().navigationBarHidden(true).navigationBarBackButtonHidden(true)){
                                    
                                    
                                    
                                    HStack{
                                        
                                        
                                        Text("Start Calming Time")
                                            .foregroundColor(.black)
                                            .multilineTextAlignment(.leading)
                                            .font(.custom("Nunito-Regular", size: 20))
                                            .lineLimit(2)
                                            .minimumScaleFactor(0.5)
                                            .padding(10)
                                        
                                        Spacer()
                                        
                                        Image("CalmingTime")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 130)
                                            .cornerRadius(20)
                                            .padding([.top, .bottom, .trailing], 7.0)
                                        
                                        
                                    }
                                    
                                    
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(Color(red: 0.863, green: 0.863, blue: 0.863, opacity: 1.0), lineWidth: 1)
                                    )
                                    .padding(.vertical, 5.0)
                                    .padding(.horizontal, 8.0)
                                }
                            }
                            //end of item
                            
                            //start of item
                            NavigationLink(destination: Timeout1()
                                .navigationBarBackButtonHidden(true)
                            ){
                                HStack{
                                    
                                    
                                    
                                    
                                    Text("Wondering when to use Time Out?")
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.leading)
                                        .font(.custom("Nunito-Regular", size: 20))
                                        .lineLimit(2)
                                        .minimumScaleFactor(0.5)
                                        .padding(10)
                                    
                                    Spacer()
                                    
                                    Image("WhenTimeOut")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 130)
                                        .cornerRadius(20)
                                        .padding([.top, .bottom, .trailing], 7.0)
                                    
                                    
                                }
                                
                                
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color(red: 0.863, green: 0.863, blue: 0.863, opacity: 1.0), lineWidth: 1)
                                )
                                .padding(.vertical, 5.0)
                                .padding(.horizontal, 8.0)
                            }
                        
                        //end of item
                        
                        //start of item
                        //start of item
                        NavigationLink(destination: InfoPrep()
                            .navigationBarBackButtonHidden(true)
                        ){
                            HStack{
                                
                                
                                Text("Preparing the Chair")
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.leading)
                                    .font(.custom("Nunito-Regular", size: 20))
                                    .lineLimit(2)
                                    .minimumScaleFactor(0.5)
                                    .padding(10)
                                
                                Spacer()
                                
                                Image("ChairPrepare")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 130)
                                    .cornerRadius(20)
                                    .padding([.top, .bottom, .trailing], 7.0)
                                
                                
                            }
                            
                            
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color(red: 0.863, green: 0.863, blue: 0.863, opacity: 1.0), lineWidth: 1)
                            )
                            .padding(.vertical, 5.0)
                            .padding(.horizontal, 8.0)
                        }
                        
                        //end of item
                        
                        //start of item
                        NavigationLink(destination: Ready1()
                            .navigationBarBackButtonHidden(true)
                        ){
                            HStack{
                                
                                
                                Text("Getting your child ready")
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.leading)
                                    .font(.custom("Nunito-Regular", size: 20))
                                    .lineLimit(2)
                                    .minimumScaleFactor(0.5)
                                    .padding(10)
                                
                                Spacer()
                                
                                Image("ChildReady")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 130)
                                    .cornerRadius(20)
                                    .padding([.top, .bottom, .trailing], 7.0)
                                
                                
                            }
                            
                            
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color(red: 0.863, green: 0.863, blue: 0.863, opacity: 1.0), lineWidth: 1)
                            )
                            .padding(.vertical, 5.0)
                            .padding(.horizontal, 8.0)
                        }
                        
                        //end of item
                        //start of item
                        NavigationLink(destination: InfoPraise()
                            .navigationBarBackButtonHidden(true)
                        ){
                            HStack{
                                
                                
                                Text("Advice on Praise")
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.leading)
                                    .font(.custom("Nunito-Regular", size: 20))
                                    .lineLimit(2)
                                    .minimumScaleFactor(0.5)
                                    .padding(10)
                                
                                Spacer()
                                
                                Image("PraiseAdvice")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 130)
                                    .cornerRadius(20)
                                    .padding([.top, .bottom, .trailing], 7.0)
                                
                                
                            }
                            
                            
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color(red: 0.863, green: 0.863, blue: 0.863, opacity: 1.0), lineWidth: 1)
                            )
                            .padding(.vertical, 5.0)
                            .padding(.horizontal, 8.0)
                        }
                        
                        //end of item
                        
                       
                        
                        
                        
                    }
                    
                    
                    
                
                
                //.navigationTitle(SavedProgramme)
                
                
                                    
                
                
                
            }
            .onAppear {
                           self.getData()
                       }
                   
            
        }
            
        
            
        
        
        
    }
    func getData(){
        SavedProgramme = "\(UserDefaults.standard.string(forKey: "Programme") ?? "nil")"
    }
       
}


struct TabView2: View{
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Nunito-Regular", size: 16)!, .foregroundColor: UIColor.init(Color(UIColor.black))]
        
    }
    var body: some View {
       
        
            ScrollView{
                HStack{
                Text("Time to relax")
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .font(.custom("Nunito-Regular", size: 18))
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                    .padding(.horizontal, 20)
                    .padding(.top, 30)
                    .padding(.bottom, 15)

                    Spacer()
                }
                ZStack{
                    VStack{
                        //1st item
                        //start of item
                        NavigationLink(destination: BalloonBreaths()
                            .navigationBarBackButtonHidden(true)
                        ){
                            HStack{
                                
                                
                                Text("Calm Breaths")
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.leading)
                                    .font(.custom("Nunito-Regular", size: 20))
                                    .lineLimit(2)
                                    .minimumScaleFactor(0.5)
                                    .padding(10)
                                
                                Spacer()
                                
                                Image("CalmBreaths")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 130)
                                    .cornerRadius(20)
                                    .padding([.top, .bottom, .trailing], 7.0)
                                
                                
                            }
                            
                            
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color(red: 0.863, green: 0.863, blue: 0.863, opacity: 1.0), lineWidth: 1)
                            )
                            .padding(.vertical, 5.0)
                            .padding(.horizontal, 8.0)
                        }
                        
                        //end of item
                        
                        //start of item
                        NavigationLink(destination: SenseCheck()
                            .navigationBarBackButtonHidden(true)
                        ){
                            HStack{
                                
                                
                                Text("Sense Check")
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.leading)
                                    .font(.custom("Nunito-Regular", size: 20))
                                    .lineLimit(2)
                                    .minimumScaleFactor(0.5)
                                    .padding(10)
                                
                                Spacer()
                                
                                Image("SenseCheck")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 130)
                                    .cornerRadius(20)
                                    .padding([.top, .bottom, .trailing], 7.0)
                                
                                
                            }
                            
                            
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color(red: 0.863, green: 0.863, blue: 0.863, opacity: 1.0), lineWidth: 1)
                            )
                            .padding(.vertical, 5.0)
                            .padding(.horizontal, 8.0)
                        }
                        
                        //end of item
                        
                        
                        
                    }
                
                
            }
            
        }
           
        
    }

       
}


struct TabView3: View{
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Nunito-Regular", size: 16)!, .foregroundColor: UIColor.init(Color(UIColor.black))]
        
    }
    var body: some View {
       
            ScrollView{
                HStack{
                Text("Settings and about")
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .font(.custom("Nunito-Regular", size: 18))
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                    .padding(.horizontal, 20)
                    .padding(.top, 30)
                    .padding(.bottom, 15)

                    Spacer()
                }
                ZStack{
                    VStack{
                        //1st item
                        NavigationLink(destination: SettingsView()
                            .navigationBarBackButtonHidden(true)
                        ){
                            HStack{
                                
                                
                                Text("Settings")
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.leading)
                                    .font(.custom("Nunito-Regular", size: 20))
                                    .lineLimit(2)
                                    .minimumScaleFactor(0.5)
                                    .padding(10)
                                
                                
                                Spacer()
                                
                                
                                Image(systemName: "gearshape")
                                    .resizable()
                                    .padding(30)
                                    .scaledToFit()
                                    .frame(height: 130)
                                    .foregroundColor(.gray)
                                    .background(Color(red: 0.929, green: 0.929, blue: 0.929, opacity: 1))
                                    .cornerRadius(20)
                                    .padding([.top, .bottom, .trailing], 7.0)
                                
                                
                            }
                            
                            
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color(red: 0.863, green: 0.863, blue: 0.863, opacity: 1.0), lineWidth: 1)
                            )
                            .padding(.vertical, 5.0)
                            .padding(.horizontal, 8.0)
                            
                        }
                        //end of item
                        NavigationLink(destination: InfoAboutPause()
                            .navigationBarBackButtonHidden(false)
                        ){
                            //start of item
                            HStack{
                                
                                
                                Text("About the Pause App")
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.leading)
                                    .font(.custom("Nunito-Regular", size: 20))
                                    .lineLimit(2)
                                    .minimumScaleFactor(0.5)
                                    .padding(10)
                                
                                
                                Spacer()
                                
                                Image("MenuLogo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 130)
                                    .cornerRadius(20)
                                    .padding([.top, .bottom, .trailing], 7.0)
                                
                                
                            }
                            
                            
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color(red: 0.863, green: 0.863, blue: 0.863, opacity: 1.0), lineWidth: 1)
                            )
                            .padding(.vertical, 5.0)
                            .padding(.horizontal, 8.0)
                        }
                        //end of item
                        
                        //start of item
                        NavigationLink(destination: InfoAboutUs()
                            .navigationBarBackButtonHidden(false)
                        ){
                            HStack{
                                
                                
                                Text("About the Developers")
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.leading)
                                    .font(.custom("Nunito-Regular", size: 20))
                                    .lineLimit(2)
                                    .minimumScaleFactor(0.5)
                                    .padding(10)
                                
                                
                                Spacer()
                                
                                Image("Developer")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 130)
                                    .cornerRadius(20)
                                    .padding([.top, .bottom, .trailing], 7.0)
                                
                                
                            }
                            
                            
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color(red: 0.863, green: 0.863, blue: 0.863, opacity: 1.0), lineWidth: 1)
                            )
                            .padding(.vertical, 5.0)
                            .padding(.horizontal, 8.0)
                        }
                        //end of item
                        
                        
                    }
                    
                    
                
                                    
                
                
                
            }
            
            }
        
        
            .navigationBarItems(leading: Image("TitleBlue")
                        .resizable()
                        .scaledToFit()
                        .frame(width: nil, height: 30.0),
                        trailing: Image("QuickTime")
                        .resizable()
                        .scaledToFit()
                        .frame(width: nil, height: 30.0))
    }
    
}
