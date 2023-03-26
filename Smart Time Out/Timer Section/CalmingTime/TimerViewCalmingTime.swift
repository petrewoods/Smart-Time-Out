//
//  TimerViewCalmingTime.swift
//  Smart Time Out
//
//  Created by Peter Woods on 27/12/2022.
//

import SwiftUI

struct TimerViewCalmingTime: View
{
 
    enum Constants
    {
        static let timeYearsDefault = 5
        static let timeYearsToTimeRemainingMultiplier = 60
    }
    
    @State var choice: Int
    @State private var isSpace: Bool = false
    @State private var isQuiet: Bool = false
    @State private var isAnimating = false
    @State private var isScaling = false
    
    @State public var downtime: Int = 1
    
    @State public var timeYears = 30
    
    
    {
        didSet
        {
            
            
            self.timeRemaining = timeYears * Constants.timeYearsToTimeRemainingMultiplier
            
            
        }
    }
    @State public var timeRemaining = 30
    @State public var totalTime = Constants.timeYearsDefault
    var realTime: Int
    {
        (timeYears + 0 )
    }
    
    @State public var counter = 0
    @State var timeShow = 0
    @State var progress:Double = 0
    @State var tot: Double = 0
    
    @State private var testb = false
    
  
    
    //make the timer
    let timer = Timer.publish(every: 1, on: .main,in: .common).autoconnect()
    //function to convert time seconds into minutes and seconds
    func converSecondstoTime(timeInSeconds : Int) -> String
    {
        let minutes = timeInSeconds / 60
        let seconds = timeInSeconds % 60
        return String(format: "%02i:%02i",
                      minutes,
                      seconds)
    }
    
    func updateText() {
        switch choice {
        case 1:
            timeRemaining = 30
        case 2:
            timeRemaining = 60
        case 3:
            timeRemaining = 120
        default:
            timeRemaining = 30
        }
    }

    func updateTimeRemaining() {
        switch choice {
        case 30:
            timeRemaining = 30
        case 60:
            timeRemaining = 60
        case 120:
            timeRemaining = 120
        default:
            timeRemaining = 30
        }
    }
    
    
    
    
    //body
    var body: some View
    {
        
       
        
        NavigationView{
        ZStack{
            
                VStack()
                {
                    //main body
                    if (timeRemaining > 1 )
                    {
                        
                        
                        Picker("Time", selection: $choice, content: {
                            Text("30 sec").tag(1)
                            Text("60 sec").tag(2)
                            Text("120 sec").tag(3)
                        })
                        .pickerStyle(SegmentedPickerStyle())
                        .font(.custom("Nunito-Regular", size: 48))
                        .padding(10)
                        .onAppear(){
                            UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(red: 0.388, green: 0.388, blue: 0.4, alpha: 1)
                            UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor : UIColor.white], for: .normal)
                            UISegmentedControl.appearance().backgroundColor = UIColor(red: 0.463, green: 0.463, blue: 0.502, alpha: 0.24)
                            updateText()
                        }
                        .onChange(of: choice) { newChoice in
                            updateText()
                        }
                        
                        //animation z stack
                        if isQuiet && isSpace && (timeRemaining > 1 ){
                            
                            
                        
                        ZStack
                        {
                            //timer
                            Spacer()
                            GifImage("Breathe")
                            
                            Circle()
                                .stroke (lineWidth: 20)
                                .foregroundColor(.gray)
                                .opacity(0.1)
                            
                            Circle()
                                .trim(from: 0.0, to: min (tot, 1.0))
                                           
                                .stroke (AngularGradient (gradient:Gradient(colors: [col1,col1]),center: .center), style:StrokeStyle(lineWidth:15.0,  lineJoin: .miter))
                                .rotationEffect ((Angle (degrees: 271) ))
                                .animation(.easeInOut (duration: 1.0), value: tot)
                            
                                .onChange(of: realTime) {newvalue in
                                    timeRemaining = realTime}
                                .onChange(of: realTime) {newvalue in totalTime = realTime}
                                .onChange(of: timeRemaining) {newvalue in tot =  Double(timeRemaining)/Double(realTime)}
                        }
                        .frame(width:250, height:250)
                        .padding()
                        .onAppear
                        {
                            
                            tot = 1.0
                        }
                        
                        }
                        else{
                            
                            VStack{
                                ZStack{
                                    Image("Breathestatic")
                                    
                                }
                                .frame(width:100, height:100)
                                .padding()
                            }
                            
                            
                            Text(converSecondstoTime(timeInSeconds:timeRemaining))
                                .font(.custom("Nunito-Regular", size: 48))
                                .foregroundColor(.gray)
                          
                        }
                         
                        if isQuiet && isSpace && (timeRemaining > 1 )
                            
                        {   Spacer()
                            Spacer()
                            Text(converSecondstoTime(timeInSeconds:timeRemaining))
                                .font(.custom("Nunito-Regular", size: 48))
                                .foregroundColor(.black)
                                .onReceive(timer, perform:{_ in timeRemaining -= downtime })
                                
                            .scaleEffect(1.5)
                                
                            
                        }
                        Spacer()
                            Spacer()
                        // button stack
                        HStack{
                            
                            Button(action: {
                                withAnimation(.easeIn){
                                    isQuiet.toggle()
                                }
                            }) {
                                ZStack{
                                    Circle()
                                        .fill(isQuiet ?col1:buttonDarkGray)
                                    
                                        .scaleEffect(isQuiet ? 0.8 : 1.0)
                                    
                                    Image(systemName: "ear")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundColor(.white)
                                        .frame(width: 50, height: 50)
                                }
                                .frame(width: 100, height: 100)
                            }.padding([.top, .leading, .bottom], 20)
                            
                            Text("+")
                                .font(.custom("Nunito-Regular", size: 48))
                                .foregroundColor(buttonDarkGray)
                                
                            Button(action: {
                                withAnimation(.easeIn){
                                    isSpace.toggle()
                                }
                            }) {
                                ZStack{
                                    Circle()
                                        .fill(isSpace ?col1:buttonDarkGray)

                                        .scaleEffect(isSpace ? 0.8 : 1.0)
                                    
                                    Image(systemName: "chair")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundColor(.white)
                                        .frame(width: 50, height: 50)
                                }
                                .frame(width: 100, height: 100)
                            }.padding([.top, .bottom, .trailing], 20.0)
                       
                        }
                        
                        .background(backLightGray)
                        .cornerRadius(90)
                        .overlay(
                            RoundedRectangle(cornerRadius: 90)
                                .stroke(Color(red: 0.996, green: 0.717, blue: 0), lineWidth: 1))
                        HStack{
                            Spacer()
                            Spacer()
                            Text("Quieter?")
                                .font(.caption)
                                .foregroundColor(.black)
                            Spacer()
                            Spacer()
                            Spacer()
                            Text("Sitting?")
                                .font(.caption)
                                .foregroundColor(.black)
                            Spacer()
                            Spacer()
                        }
                        .padding([.leading, .bottom, .trailing], 20.0)
                        
                    }
                    /////////////////////// Timer FINISHED SECTION//////////////////
                    //below is the pop ups when timer is done.
                    
                    else{
                        
                        ZStack{
                            Color(red: 0.141, green: 0.592, blue: 0.616)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                            
                            VStack{
                                Group{
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                }
                                
                                Text("The timer has finished")
                                    .font(.custom("Roboto-Regular", size: 22))
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .padding(.horizontal, 20.0)
                                Spacer()
                                
                                Text("Try to calmly get back to normal")
                                    .font(.custom("Roboto-Regular", size: 22))
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .padding(.horizontal, 20.0)
                                Group{
                                    Spacer()
                                    Spacer()
                                }
                                
                                
                                //button1
                                NavigationLink(destination: CalmingFinished()
                                    .navigationBarHidden(true))
                                {
                                    Text("They Stay Calm")
                                    
                                        .foregroundColor(.black)
                                        .font(.custom("Nunito-Regular", size: 18))
                                        .frame(width: 250)
                                        .lineLimit(1)
                                        .multilineTextAlignment(.center)
                                        .padding(.horizontal, 20.0)
                                        .padding(.vertical, 20.0)
                                        .background(buttonGray)
                                        .background(RoundedRectangle(cornerRadius: 32)
                                            .clipped())
                                        .clipShape(RoundedRectangle(cornerRadius: 32))
                                }
                                
                                .padding(.vertical, 20.0)
                                
                                if choice == 1 {
                                    //Button2
                                    NavigationLink(destination: CalmEscalate1()
                                        .navigationBarHidden(true))
                                    {
                                        Text("Cannot manage emotions")
                                        
                                            .foregroundColor(.black)
                                            .font(.custom("Nunito-Regular", size: 18))
                                            .frame(width: 250)
                                            .lineLimit(1)
                                            .multilineTextAlignment(.center)
                                            .padding(.horizontal, 20.0)
                                            .padding(.vertical, 20.0)
                                            .background(buttonGray)
                                            .background(RoundedRectangle(cornerRadius: 32)
                                                .clipped())
                                            .clipShape(RoundedRectangle(cornerRadius: 32))
                                    }
                                    .padding(.vertical, 20.0)
                                }
                                
                                if choice == 2 {
                                    //Button2
                                    NavigationLink(destination: CalmEscalate2()
                                        .navigationBarHidden(true))
                                    {
                                        Text("Cannot manage emotions")
                                        
                                            .foregroundColor(.black)
                                            .font(.custom("Nunito-Regular", size: 18))
                                            .frame(width: 250)
                                            .lineLimit(1)
                                            .multilineTextAlignment(.center)
                                            .padding(.horizontal, 20.0)
                                            .padding(.vertical, 20.0)
                                            .background(buttonGray)
                                            .background(RoundedRectangle(cornerRadius: 32)
                                                .clipped())
                                            .clipShape(RoundedRectangle(cornerRadius: 32))
                                    }
                                    .padding(.vertical, 20.0)
                                }
                                
                                if choice == 3 {
                                    //Button2
                                    NavigationLink(destination: CalmEscalate3()
                                        .navigationBarHidden(true))
                                    {
                                        Text("Cannot manage emotions")
                                        
                                            .foregroundColor(.black)
                                            .font(.custom("Nunito-Regular", size: 18))
                                            .frame(width: 250)
                                            .lineLimit(1)
                                            .multilineTextAlignment(.center)
                                            .padding(.horizontal, 20.0)
                                            .padding(.vertical, 20.0)
                                            .background(buttonGray)
                                            .background(RoundedRectangle(cornerRadius: 32)
                                                .clipped())
                                            .clipShape(RoundedRectangle(cornerRadius: 32))
                                    }
                                    .padding(.vertical, 20.0)
                                }
                                
                              
                                
                                
                                
                                
                                HStack{
                                    
                                    
                                    Rectangle()
                                    
                                        .frame(width: 50, height: 3)
                                        .padding(2)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(.white))
                                    Rectangle()
                                        .frame(width: 50, height: 3)
                                        .foregroundColor(Color(red: 1, green: 1, blue: 1, opacity: 0.0))
                                        .padding(2)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(Color(red: 1, green: 1, blue: 1, opacity: 0.3)))
                                    
                                    
                                }
                                .padding(30)
                                
                                //bottom progress
                               
                            }
                            
                        }
                        .ignoresSafeArea(.all)
                        
                    }
                    
                }
            
        }
        .navigationBarTitle("Calming Time")
            .foregroundColor(.black)
            .navigationBarTitleDisplayMode(.inline)
            
        .navigationBarItems(
            leading: NavigationLink(
                destination: Timeout1()
                    .navigationBarHidden(false)
                    .navigationBarBackButtonHidden(true),
                label: {
                    Image(systemName: "info.circle")
                        .foregroundColor(.black)
                }
            ),
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


