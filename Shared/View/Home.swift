//
//  Home.swift
//  UI-331 (iOS)
//
//  Created by nyannyan0328 on 2021/10/15.
//

import SwiftUI

struct Home: View {
    
   
    @State var maxCircleHeight : CGFloat = 0
    @State var showSignUp = false
    var body: some View {
        VStack{
            //top rings
            GeometryReader{proxy -> AnyView in
                
                let height = proxy.frame(in: .global).height
                
                
                DispatchQueue.main.async {
                    if maxCircleHeight == 0{
                        
                        maxCircleHeight = height
                    }
                }
                
                return AnyView(
                    
                  
                    
                    ZStack{
                        
                        
                        Circle()
                            .fill(Color("dark"))
                            .offset(x: getRect().width / 2,y: -height / 1.3)
                        Circle()
                            .fill(Color("dark"))
                            .offset(x: -getRect().width / 2,y:-height / 1.5)
                        Circle()
                            .fill(Color("lightBlue"))
                            .offset(y: -height / 1.3)
                            .rotationEffect(.init(degrees: -5))
                        
                        
                    }
                
                
                )
                
              
                
                
                
            }
            .frame(height: getRect().width)
            
            ZStack{
                
                if showSignUp{
                    
                    Sign_Up()
                        .transition(.move(edge: .trailing))
                
                    
                }
                else{
                    
                    Login()
                        .transition(.move(edge: .trailing))
                }
                
                
            }
            .padding(.top,-maxCircleHeight /  (getRect().height < 750 ? 1.5 : 1.6))
            .frame(maxHeight: .infinity, alignment: .top)//全体を引き上げ
            .overlay(
            
                HStack{
                    
                    Text(showSignUp ? "New Member" : "Already Member")
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    
                    
                    Button {
                        
                        withAnimation{
                            
                            showSignUp.toggle()
                        }
                        
                    } label: {
                        
                        Text(showSignUp ? "Sign in" : "Sign Up")
                            .fontWeight(.bold)
                            .foregroundColor(Color("lightBlue"))
                            .underline()
                        
                        
                    }

                }
                    .padding(.bottom,getSafeArea().bottom == 0 ? 15 : 0)
                
                
                ,alignment: .bottom
            )
            .background(
            
            
                HStack{
                    
                    Circle()
                        .fill(Color("lightBlue"))
                        .frame(width: 70, height: 70)
                        .offset(x: -30, y:getRect().height < 750 ? 10 :  0)
                    
                   Spacer()
                    
                    
                    Circle()
                        .fill(Color("dark"))
                        .frame(width: 110, height: 110)
                        .offset(x: 40, y: 20)
                }
                    .offset(y: getSafeArea().bottom + 30)
                
                ,alignment: .bottom
            
            
            )
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
