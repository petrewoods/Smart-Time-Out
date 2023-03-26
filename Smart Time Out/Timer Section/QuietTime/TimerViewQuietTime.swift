//
//  TimerViewQuietTime.swift
//  Smart Time Out
//
//  Created by Peter Woods on 27/12/2022.
//


import SwiftUI

struct TimerViewQuietTime: View
{
    
    enum Constants
    {
        static let timeYearsDefault = 5
        static let timeYearsToTimeRemainingMultiplier = 60
    }
    
    
    @State private var isSpace: Bool = false
    @State private var isQuiet: Bool = false
    @State private var isAnimating = false
    @State private var isScaling = false
    
    @State public var downtime: Int = 1
    
    @State public var timeYears = 5
    
    
    {
        didSet
        {
            
            
            self.timeRemaining = timeYears * Constants.timeYearsToTimeRemainingMultiplier
            
            
        }
    }
    @State public var timeRemaining = 300
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
    
    
    
    
    
    
    
    //body
    var body: some View
    {
        
        
        
        NavigationView{
            ZStack{
                //this is the pop up if you put an inapropiate age for the child
                if(timeYears < 3) {
                    VStack{
                        Spacer()
                        
                        Text("Time out is \nonly sutiable \nfor ages 3-9")
                            .font(.custom("Nunito-Regular", size: 28))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .minimumScaleFactor(0.5)
                            .padding()
                        
                        Spacer()
                        Button("I understand") {
                            timeYears = 5
                            isQuiet = false
                            isSpace = false
                        }
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .font(.custom("Nunito-Regular", size: 22))
                        .padding(.horizontal, 70.0)
                        .padding(.vertical, 20.0)
                        .background(buttonGray)
                        .background(RoundedRectangle(cornerRadius: 32)
                            .clipped())
                        .clipShape(RoundedRectangle(cornerRadius: 32))
                        Spacer()
                    }
                }
                
                else{
                    VStack()
                    {
                        //main body
                        if (timeRemaining > 1 )
                        {
                            
                            Spacer()
                            
                            
                            //animation z stack
                            if isQuiet && isSpace && (timeRemaining > 1 ){
                                
                                Spacer()
                                
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
                                
                                HStack {
                                    Text("Child's Age :")
                                        .font(.custom("Nunito-Regular", size: 28))
                                        .foregroundColor(.black)
                                    Picker(selection: $timeYears, label: Text("Age"))
                                    {
                                        Text("<3").tag(2)
                                            .font(.custom("Nunito-Regular", size: 28))
                                        Text("3").tag(3)
                                            .font(.custom("Nunito-Regular", size: 28))
                                        Text("4").tag(4)
                                            .font(.custom("Nunito-Regular", size: 28))
                                        Text("5").tag(5)
                                            .font(.custom("Nunito-Regular", size: 28))
                                        Text("6").tag(6)
                                            .font(.custom("Nunito-Regular", size: 28))
                                        Text("7").tag(7)
                                            .font(.custom("Nunito-Regular", size: 28))
                                        Text("8").tag(8)
                                            .font(.custom("Nunito-Regular", size: 28))
                                        Text("9").tag(9)
                                            .font(.custom("Nunito-Regular", size: 28))
                                        Text("10+").tag(2)
                                            .font(.custom("Nunito-Regular", size: 28))
                                    }
                                    .pickerStyle(.wheel)
                                    .frame(width: 100,height: 100)
                                    .clipped()
                                    .onChange(of: timeYears) { newValue in
                                        timeRemaining = timeYears * Constants.timeYearsToTimeRemainingMultiplier
                                    }
                                }
                                
                                Text(converSecondstoTime(timeInSeconds:timeRemaining))
                                    .font(.custom("Nunito-Regular", size: 28))
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
                                    
                                    Text("The timer has finished so tell your child to leave time out and praise them as soon as possible")
                                        .font(.custom("Roboto-Regular", size: 22))
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.center)
                                        .padding(.horizontal, 20.0)
                                    Spacer()
                                    
                                    
                                    Group{
                                        Spacer()
                                        Spacer()
                                    }
                                    
                                    
                                    //button1
                                    NavigationLink(destination: ContentView()
                                        .navigationBarHidden(true))
                                    {
                                        Text("Ok")
                                        
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
                                    
                                    NavigationLink(destination: InfoPraise()
                                        .navigationBarHidden(true))
                                    {
                                        Text("Give me advice")
                                        
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
                                
                                //                                                                    if choice == "V" {
                                //                                                                        //Button2
                                //                                                                        NavigationLink(destination: CalmEscalate2()
                                //                                                                            .navigationBarHidden(true))
                                //                                                                        {
                                //                                                                            Text("Finished violence ")
                                //
                                //                                                                                .foregroundColor(.black)
                                //                                                                                .font(.custom("Nunito-Regular", size: 18))
                                //                                                                                .frame(width: 250)
                                //                                                                                .lineLimit(1)
                                //                                                                                .multilineTextAlignment(.center)
                                //                                                                                .padding(.horizontal, 20.0)
                                //                                                                                .padding(.vertical, 20.0)
                                //                                                                                .background(buttonGray)
                                //                                                                                .background(RoundedRectangle(cornerRadius: 32)
                                //                                                                                    .clipped())
                                //                                                                                .clipShape(RoundedRectangle(cornerRadius: 32))
                                //                                                                        }
                                //                                                                        .padding(.vertical, 20.0)
                                //                                                                    }
                                //
                                //                                                                    if choice == "O"{
                                //                                                                        //Button2
                                //                                                                        NavigationLink(destination: CalmEscalate3()
                                //                                                                            .navigationBarHidden(true))
                                //                                                                        {
                                //                                                                            Text("Finished opposition")
                                //
                                //                                                                                .foregroundColor(.black)
                                //                                                                                .font(.custom("Nunito-Regular", size: 18))
                                //                                                                                .frame(width: 250)
                                //                                                                                .lineLimit(1)
                                //                                                                                .multilineTextAlignment(.center)
                                //                                                                                .padding(.horizontal, 20.0)
                                //                                                                                .padding(.vertical, 20.0)
                                //                                                                                .background(buttonGray)
                                //                                                                                .background(RoundedRectangle(cornerRadius: 32)
                                //                                                                                    .clipped())
                                //                                                                                .clipShape(RoundedRectangle(cornerRadius: 32))
                                //                                                                        }
                                //                                                                        .padding(.vertical, 20.0)
                                //                                                                    }
                                
                            }
                            
                            
                           
                            
                            //bottom progress
                            
                        }
                        
                    }
                    .ignoresSafeArea(.all)
                }
                
            }
            
        }
        
        .navigationTitle("Smart Time Out")
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






