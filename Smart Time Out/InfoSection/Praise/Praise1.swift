//
//  Praise1.swift
//  Smart Time Out
//
//  Created by Peter Woods on 27/11/2022.
//

import SwiftUI


//main praise struct
struct Praise1: View
{
    var body: some View
    {
    
        ZStack{
            
        TabView
        {
            //If you're reading my code then hi,
            //I know I can do this algorithmically but i'm rubbish
            Praiseview1()
            Praiseview2()
            Praiseview3()
            
        }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}


//substructs
struct Praiseview1: View {
    var body: some View {
        ZStack{
            VStack{
            
            
                Text("Praise 1-1 delay")
                Image("Praise1")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
            }
        }
    }
}

struct  Praiseview2: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                Text("Praise 1-2 delay")
                Image("Small1")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                
            }
        }
    }
}

struct Praiseview3: View {
    var body: some View {
        ZStack
        {
            
            VStack
            {
                Text("Praise 1-3 delay")
                Image("Praise3")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                
            }
        }
    }
}

struct Praiseview4: View {
    @State var textFieldText: String = ""
    var body: some View {
        VStack
        {
            
            VStack
            {
                Text("Praise 2-1 generous")
                Image("Praise2")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                
            }
        }
    }
}

struct Praiseview5: View {
    @State var textFieldText: String = ""
    var body: some View {
        ZStack
        {
            
            VStack
            {
                Text("Praise 2-2 generous")
                Image("Praise2")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                
            }
        }
    }
}


struct Praiseview6: View {
    @State var textFieldText: String = ""
    var body: some View {
        ZStack
        {
            
            VStack
            {
                Text("Praise 2-3 generous")
                Image("Praise2")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                
            }
        }
    }
}

struct Praiseview7: View {
    @State var textFieldText: String = ""
    var body: some View {
        ZStack
        {
            
            VStack
            {
                Text("Praise 2-4 generous")
                Image("Praise2")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                
            }
        }
    }
}

struct Praiseview8: View {
    @State var textFieldText: String = ""
    var body: some View {
        ZStack
        {
            
            VStack
            {
                Text("Praise 2-5 generous")
                Image("Praise2")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                
            }
        }
    }
}

struct Praiseview9: View {
    @State var textFieldText: String = ""
    var body: some View {
        ZStack
        {
            
            VStack
            {
                Text("Praise 3-1 Delay")
                Image("Praise2")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                
            }
        }
    }
}

struct Praiseview10: View {
    @State var textFieldText: String = ""
    var body: some View {
        ZStack
        {
            
            VStack
            {
                Text("Praise 3-2 Delay")
                Image("Praise2")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                
            }
        }
    }
}

struct Praiseview11: View {
    @State var textFieldText: String = ""
    var body: some View {
        ZStack
        {
            
            VStack
            {
                Text("Praise 3-3 Delay")
                Image("Praise2")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                
            }
        }
    }
}

struct Praiseview12: View {
    @State var textFieldText: String = ""
    var body: some View {
        ZStack
        {
            
            VStack
            {
                Text("Praise 4-1 Small")
                Image("Praise2")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                
            }
        }
    }
}

struct Praiseview13: View {
    @State var textFieldText: String = ""
    var body: some View {
        ZStack
        {
            
            VStack
            {
                Text("Praise 4-2 Small")
                Image("Praise2")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                
            }
        }
    }
}

struct Praiseview14: View {
    @State var textFieldText: String = ""
    var body: some View {
        ZStack
        {
            
            VStack
            {
                Text("Praise 4-3 Small")
                Image("Praise2")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                
            }
        }
    }
}

struct Praiseview15: View {
    @State var textFieldText: String = ""
    var body: some View {
        ZStack
        {
            
            VStack
            {
                Text("Praise 4-4 Small")
                Image("Praise2")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,2)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Praise1()
                   .previewDevice(PreviewDevice(rawValue: "iPhone 13"))
                   .previewDisplayName("iPhone 12")

        Praise1()
                   .previewDevice(PreviewDevice(rawValue: "iPhone SE (3rd generation)"))
                   .previewDisplayName("iPhone SE (3rd Generation)")
    }
}



