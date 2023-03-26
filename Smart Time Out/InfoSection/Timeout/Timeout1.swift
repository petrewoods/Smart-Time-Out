//
//  Timeout1.swift
//  Smart Time Out
//
//  Created by Peter Woods on 27/11/2022.
//
import SwiftUI


//main praise struct
struct Timeout1: View
{
    var body: some View
    {
    
        ZStack{
            VStack{
            
        TabView
        {
            //If you're reading my code then hi,
            //I know I can do this algorithmically but i'm rubbish
            Time1()
            Time2()
            Time3()
            Time4()
            Time5()
            Time6()
            Time7()
            Time8()
            Time9()
                        
        }
               
        }
        }
        .tabViewStyle(.page)
        
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .navigationTitle("When to use Time Out")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(
            leading: NavigationLink(
                destination: ContentView().navigationBarHidden(false).navigationBarBackButtonHidden(true),
                label: {
                    Image("BackButton")
                }
            )
        )
        
        
    }
    
}


//substructs
struct Time1: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                Image("Time1")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                
               
                
            }
        }
    }
}

//substructs
struct Time2: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                Image("Time2")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                
               
                
            }
        }
    }
}

//substructs
struct Time3: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                Image("Time3")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                
               
                
            }
        }
    }
}
//substructs
struct Time4: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                Image("Time4")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                
                
                
            }
        }
    }
}
//substructs
struct Time5: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                Image("Time5")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                
                
                
            }
        }
    }
}
//substructs
struct Time6: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                Image("Time6")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                
               
                
            }
        }
    }
}

//substructs
struct Time7: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                Image("Time7")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                
                
                
            }
        }
    }
}

//substructs
struct Time8: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                Image("Time8")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                
                
                
            }
        }
    }
}

//substructs
struct Time9: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                
                Image("Time9")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                
                
                
            }
        }
    }
}



struct  Timeout1_Previews: PreviewProvider {
    static var previews: some View {
        Timeout1()
                   .previewDevice(PreviewDevice(rawValue: "iPhone 13"))
                   .previewDisplayName("iPhone 13")

        Timeout1()
                   .previewDevice(PreviewDevice(rawValue: "iPhone SE (3rd generation)"))
                   .previewDisplayName("iPhone SE (3rd Generation)")
        Timeout1()
                   .previewDevice(PreviewDevice(rawValue: "iPod touch (7th generation)"))
                   .previewDisplayName("iPod touch (7th generation)")
    }
}
