//
//  BalloonBreaths.swift
//  Smart Time Out
//
//  Created by Peter Woods on 16/02/2023.
//
import SwiftUI

struct SenseCheck: View {
    @State private var isStart: Bool = false
    @State private var isAnimating = false
    @State private var isScaling = false
    @State private var yOffset: CGFloat = 0.0
    @State private var currentTextIndex: Int = 0
    
    let imageSequence = [
        "Hand5",
        "Hand4",
        "Hand3",
        "Hand2",
        "Hand1"
    ]
    
    let textSequence = [
        "Count 5 things that you can see",
        "Count 4 things that you can feel",
        "Count 3 things you can hear",
        "Count 2 thing you can smell",
        "Count 1 thing you can taste"
    ]
    
    let handSequence = [
        "5",
        "4",
        "3",
        "2",
        "1"
    ]
    
    @State private var selectedIndex = 0
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Spacer()
                Spacer()
                if isStart {
                    VStack {
                        TabView(selection: $selectedIndex) {
                            ForEach(0..<imageSequence.count) { index in
                                VStack {
                                    Image(imageSequence[index])
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 350)
                                    
                                    Text(handSequence[index])
                                        .foregroundColor(.black)
                                        .font(.custom("Nunito-Regular", size: 32))
                                        .padding(.top)
                                    
                                    Text(textSequence[index])
                                        .font(.headline)
                                        .padding(.top)
                                    
                                    // Progress bar
                                    //                                        HStack {
                                    //                                            ForEach(0..<imageSequence.count) { index in
                                    //                                                RoundedRectangle(cornerRadius: 20)
                                    //                                                    .fill(index <= selectedIndex ? col1 : buttonGray)
                                    //                                                    .frame(width: 50, height: 3)
                                    //                                                    .padding(2)
                                    //                                            }
                                    // }
                                }
                                .tag(index)
                            }
                        }
                        .tabViewStyle(.page)
                        .indexViewStyle(.page(backgroundDisplayMode: .always))
                    }
                } else {
                    VStack {
                        Spacer()
                    }
                }
                
                Spacer()
                Spacer()
                
                if !isStart {
                    Button(action: {
                        withAnimation(.easeIn) {
                            isStart.toggle()
                        }
                    }) {
                        ZStack {
                            Circle()
                                .fill(isStart ? col1 : buttonDarkGray)
                                .scaleEffect(isStart ? 0.8 : 1.0)
                            
                            Image(systemName: "hand.raised")
                                .renderingMode(.template)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(.white)
                                .frame(width: 50, height: 50)
                        }
                        .frame(width: 110, height: 110)
                    }
                    .padding()
                    .background(backLightGray)
                    .cornerRadius(90)
                    .overlay(
                        RoundedRectangle(cornerRadius: 90)
                            .stroke(backLightGray))
                    Text("Start")
                        .font(.caption)
                }
            }
            .navigationTitle("Calm Breaths")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                trailing: NavigationLink(
                    destination: ContentView()
                        .navigationBarHidden(false)
                        .navigationBarBackButtonHidden(true),
                    label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.black)
                    }
                )
            )
        }
    }
}

