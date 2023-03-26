//
//  Ready1.swift
//  Smart Time Out
//
//  Created by Peter Woods on 14/03/2023.
//


import SwiftUI

struct Ready1: View {
    
    var body: some View {
        
        ZStack{
            
            
            VStack{
                HStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(col1)
                        .frame(width: 50, height: 3)
                        .padding(2)
                        
                    RoundedRectangle(cornerRadius: 20)
                        .fill(buttonGray)
                        .frame(width: 50, height: 3)
                        .padding(2)
                    RoundedRectangle(cornerRadius: 20)
                        .fill(buttonGray)
                        .frame(width: 50, height: 3)
                        .padding(2)
                    
                    RoundedRectangle(cornerRadius: 20)
                        .fill(buttonGray)
                        .frame(width: 50, height: 3)
                        .padding(2)
                }
                
                Image("ChildReady")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(8)
                    .padding(.horizontal, 10.0)
                    .padding(.vertical, 20.0)
                
                Text("Explain time out to your child so that they know what to expect\n\nUse the following checklist while you explain time out so you don't miss anything")
                    .font(.custom("Roboto-Regular", size: 18))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(40.0)
                
                
                
                //button1
                NavigationLink(destination: Explain2()
                    .navigationBarBackButtonHidden(true))
                {
                    Text("Continue")
                    
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
        }
        
        
        
        .navigationBarTitleDisplayMode(.inline)
        
        .navigationTitle("Getting your child ready")
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

    



//
//struct Ready1_Preview: PreviewProvider {
//    static var previews: some View {
//
//        Ready1()
//
//
//    }
//}
//
//
