//
//  WhichPraise.swift
//  Smart Time Out
//
//  Created by Peter Woods on 27/11/2022.
//

import SwiftUI

struct WhichPraise: View {
    
    var body: some View {
        
        ZStack{
            
            
            VStack{
                
                
                Image("PraiseCrop")
                    .resizable()
                    .scaledToFit()
                    
                
                    .cornerRadius(8)
                    .padding(.horizontal, 10.0)
                    .padding(.vertical, 10.0)
                Spacer()
                
                Text("There are lots of aspects to good praise")
                    .font(.custom("Roboto-Regular", size: 18))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(40.0)
                
                //button1
                NavigationLink(destination: Praisedelay()
                    .navigationBarBackButtonHidden(false))
                {
                    Text("Don't Delay")
                    
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
                
                .padding(.vertical, 5.0)
                
                
                //Button2
                NavigationLink(destination: PraiseGenerous()
                    .navigationBarBackButtonHidden(false)
                )
                {
                    Text("Be Generous")
                    
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
                
                
                .padding(.vertical, 5.0)
                
                
                //Button3
                NavigationLink(destination: PraiseSmall()
                    .navigationBarBackButtonHidden(false)
                )
                {
                    Text("Start Small")
                    
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
                
                
                .padding(.vertical, 5.0)
               
                
                
                
                //Button4
                NavigationLink(destination: PraiseSpecific()
                    .navigationBarBackButtonHidden(false)
                )
                {
                    Text("Be Specific")
                    
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
                
                
                .padding(.vertical, 5.0)
                
                Spacer()
                
                
                //bottom progress
                
                
                
                
                
            }
        }
        
        
        
        
        
        
        
        .navigationBarTitleDisplayMode(.inline)
        
        .navigationTitle("Advice on praise")
        .navigationBarTitleDisplayMode(.inline)
        //FUNCTION TO ADD: This back button should be the previous page, this page can be acceessed via ContentView() and by any of the TimerViews
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

    
