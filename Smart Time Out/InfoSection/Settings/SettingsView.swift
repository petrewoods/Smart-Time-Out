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
            
            
            NavigationLink(destination: SelectedProgrammePage()
                .navigationBarBackButtonHidden(false)
            ){
                HStack{
                    Text("Selected programme")
                        .font(.custom("Roboto-Regular", size: 22))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding(10.0)
                    Spacer()
                    Image("FowardButton")
                }
                .padding(.horizontal, 15.0)
                .padding(.vertical, 10.0)
            }
            Spacer()
   
            
//            NavigationLink(destination: ProfileMaker()
//                .navigationBarBackButtonHidden(true)
//            ){
//                HStack{
//                    Text("Child Profiles")
//                        .font(.custom("Roboto-Regular", size: 22))
//                        .foregroundColor(.black)
//                        .multilineTextAlignment(.leading)
//                        .padding(10.0)
//                    Spacer()
//                    Image("FowardButton")
//                }
//                .padding(.horizontal, 15.0)
//                .padding(.vertical, 10.0)
//            }
//            .navigationBarItems(
//                leading: NavigationLink(
//                    destination: ContentView().navigationBarHidden(false).navigationBarBackButtonHidden(true),
//                    label: {
//                        Image("BackButton")
//                    }
//                )
//            )
            
            
            
            
                .navigationBarItems(
                                    trailing: NavigationLink(
                                        destination: ContentView()
                                            .navigationBarHidden(false).navigationBarBackButtonHidden(true),
                                        label: {
                                            Image(systemName: "xmark")
                                                .foregroundColor(.black)
                                        }
                                    )
                                )
//            NavigationLink(destination: Profile()
//                .navigationBarBackButtonHidden(true)
//            ){
//                HStack{
//                    Text("further settings")
//                        .font(.custom("Roboto-Regular", size: 22))
//                        .foregroundColor(.black)
//                        .multilineTextAlignment(.leading)
//                        .padding(10.0)
//                    Spacer()
//                    Image("FowardButton")
//                }
//                .padding(.horizontal, 15)
//                .padding(.vertical, 10.0)
//            }
        }
        .padding(.vertical, 20.0)
    }
}
            
//            Spacer()
//            Text("\(SavedProgramme)")
//            NavigationLink(destination: OnboardingView()){
//                Text("restart onboarding")
//            }.onAppear(perform: {
//                getData()
//            })
//        }
//    }
//    func getData(){
//        SavedProgramme = "Programme is: \(UserDefaults.standard.string(forKey: "Programme") ?? "Time Out")"
//        
//        
//    }
//}

