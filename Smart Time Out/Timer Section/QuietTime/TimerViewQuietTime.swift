//
//  TimerViewQuietTime.swift
//  Smart Time Out
//
//  Created by Peter Woods on 27/12/2022.
//
import SwiftUI




struct TimerViewQuietTime: View
{
    //loads of variables needed
    enum Constants
    {
            static let timeYearsDefault = 3
            static let timeYearsToTimeRemainingMultiplier = 60
    }
    
    @State private var isSpace: Bool = false
    @State private var isQuiet: Bool = false
    
    @State public var downtime: Int = 1
   
    @State public var timeYears = 3
    {
        didSet
        {
            self.timeRemaining = timeYears * Constants.timeYearsToTimeRemainingMultiplier
        }
    }
    @State public var timeRemaining = Constants.timeYearsDefault * Constants.timeYearsToTimeRemainingMultiplier
    @State public var totalTime = Constants.timeYearsDefault * Constants.timeYearsToTimeRemainingMultiplier
    var realTime: Int
    {
        (timeYears + 0 ) * 60
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
        ZStack{
            //this is the pop up if you put an inapropiate age for the child
            if(timeYears > 10 ) {
                VStack{
                    Spacer()
                    
                    Text("Quiet Time is \nonly sutiable \nfor ages 2-10")
                        .font(.custom("Roboto-Regular", size: 38))
                        .foregroundColor(text1)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 20.0)
                       
                    Spacer()
                    Button("I understand") {
                            timeYears = 3
                            isQuiet = false
                            isSpace = false
                        }
                    .font(.custom("Roboto-Regular", size: 48))
                    .foregroundColor(.white)
                    .padding()
                    .background(col1
                    .cornerRadius(10)
                    .shadow(radius:10))
                    Spacer()
                }
            }
            
            //below is main body of this page
            
            else{
            
            
            VStack()
            {
                //can't figure out why this v stack starts so far down the page
//                HStack{
//
//                Text("Time Out")
//                    .font(.custom("Roboto-Regular", size: 48))
//                    .foregroundColor(text1)
//                    .multilineTextAlignment(.leading)
//                    .padding(10)
//                Spacer()
//                Spacer()
//                }
                
               
                
                if (timeRemaining > 1 )
                {
                
                ZStack
                {
                    //timer
                    Circle()
                        .stroke (lineWidth: 20)
                        .foregroundColor(.gray)
                        .opacity(0.1)
                    Circle()
                    .trim(from: 0.0, to: min (tot, 1.0))
                    .stroke (AngularGradient (gradient:Gradient(colors: [col1,col1]),center: .center), style:StrokeStyle(lineWidth:15.0,  lineJoin: .miter))
                    .rotationEffect ((Angle (degrees: 271) ))
                    .animation(.easeInOut (duration: 1.0), value: tot)
                    //timer mechanics have to be attached to something
                    .onChange(of: realTime) {newvalue in
                                        timeRemaining = realTime}
                    .onChange(of: realTime) {newvalue in totalTime = realTime}
                    .onChange(of: timeRemaining) {newvalue in tot =  Double(timeRemaining)/Double(realTime)}
                    VStack()
                    {
                        if isQuiet && isSpace && (timeRemaining > 1 )
//                        if isQuiet  && (timeRemaining > 1 )
                        {
                            Text(converSecondstoTime(timeInSeconds:timeRemaining))
                                .font(.custom("Nunito-Regular", size: 48))
                                .foregroundColor(text1)
                                .onReceive(timer, perform:{_ in timeRemaining -= downtime })
                                
                            
//                            {_ in timeRemaining -= downtime }
//                            NavigationLink(destination: ChildLeaving())
//                            {
//                                Text("Child Leaving?")
//                                    .font(.custom("Nunito-Regular", size: 20))
//                                    .foregroundColor(for1)
//                            }
                        }
                    }
                    
                }
                .frame(width:250, height:250)
                .padding()
                .onAppear
                {
                tot = 1.0
                }
                
                Spacer()
                
                    VStack
                    {
                        HStack
                        {
                        Text("Child's Age :")
                        .font(.custom("Nunito-Regular", size: 38))
                        .foregroundColor(col1)
                        Picker(selection: $timeYears, label: Text("Age"))
                        {
                            Text("<2").tag(11)
                            Text("2").tag(1)
                            Text("3-4").tag(2)
                            
                            Text("5-10").tag(3)
                            Text(">10").tag(11)
                        }
                        .pickerStyle(.wheel)
                        .font(.custom("Nunito-Regular", size: 48))
                        .foregroundColor(col1)
                        .frame(width: 50,height: 50)
                        .clipped()
                        }
                    }
                Spacer()
                    Toggle("Child being quiet",isOn: $isQuiet)
                        .foregroundColor(.white)
                        .font(.custom("Nunito-Regular", size: 24))
                        .padding(20)
                        .background(col1)
                        .clipShape(Rectangle())
                        .cornerRadius(10)
                        .padding(.horizontal,10)
                    //link needs updating
                    NavigationLink(destination: QuietInfoQuietTime())
                        {Text("💡")
                                .fontWeight(.medium)
                                .multilineTextAlignment(.center)
                                .font(.custom("Nunito-Regular", size: 28))
                        }

                    
                Toggle("On the chair?",isOn: $isSpace)
                    .foregroundColor(.white)
                    .font(.custom("Nunito-Regular", size: 24))
                    .padding(20)
                    .background(col1)
                    .clipShape(Rectangle())
                    .cornerRadius(10)
                    .padding(.horizontal,10)
                    //running away
                    NavigationLink(destination: RunningInfo())
                        {Text("💡")
                                .fontWeight(.medium)
                                .multilineTextAlignment(.center)
                                .font(.custom("Nunito-Regular", size: 28))
                        }

//                Toggle("Quiet?",isOn: $isQuiet)
//                    .foregroundColor(.white)
//                    .font(.custom("Nunito-Regular", size: 24))
//                    .padding(20)
//                    .background(col1)
//                    .clipShape(Rectangle())
//                    .cornerRadius(10)
//                    .padding(.horizontal,10)
                
               
                }
                       //below is the pop ups when timer is done.
                else
                    {
                    //notification schedule when time goes to 0
                   
                   
                    
                    
                   
                        ZStack{
                            VStack{
                        
                                
                            Text("The timer has finished so praise your child for being quiet, get back to normal, and praise them.")
                            .foregroundColor(text1)
                                    .multilineTextAlignment(.leading)
                                    .font(.custom("Nunito-Regular", size: 18))
                                    .padding(10)
                                    .onAppear {
                                        NotificationManager.instance.scheduleNotification()
                                    }
                                    
                        
                            
                            NavigationLink(destination: ContentView())
                                {Text("That's great")
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.center)
                                        .font(.custom("Nunito-Regular", size: 22))
                                        .padding(.all, 30.0)
                                        .background(col1)
                                        .background(RoundedRectangle(cornerRadius: 32)
                                            .clipped())
                                        .clipShape(RoundedRectangle(cornerRadius: 32))
                                }
                                //this will need updating
                                NavigationLink(destination: InfoPraise())
                                    {Text("Give me advice ")
                                            .foregroundColor(.white)
                                            .multilineTextAlignment(.center)
                                            .font(.custom("Nunito-Regular", size: 22))
                                            .padding(.all, 30.0)
                                            .background(col1)
                                            .background(RoundedRectangle(cornerRadius: 32)
                                                .clipped())
                                            .clipShape(RoundedRectangle(cornerRadius: 32))
                                    }
                            }
                        }
                        
                        
                    
                    }
                HStack{
                Spacer()
                Spacer()
                    Image("Logo2 1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                }
            }
            }
        Spacer()
            
        }
    }
}

