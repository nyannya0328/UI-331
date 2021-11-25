//
//  Login.swift
//  UI-331 (iOS)
//
//  Created by nyannyan0328 on 2021/10/15.
//

import SwiftUI

struct Login: View {
    @State var email = ""
    @State var pass = ""
    var body: some View {
        VStack{
            
            Text("Sign in")
                .font(.title.bold())
                .foregroundColor(Color("dark"))
                .kerning(1.9)
                .frame(maxWidth: .infinity,alignment: .leading)
            
            VStack(alignment: .leading, spacing: 15) {
                
                Text("User ID")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                TextField("Enter", text: $email)
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(Color("dark"))
                    .padding(.top,5)
                
                Divider()
                
                
            }
            .padding(.top,25)
            
            VStack(alignment: .leading, spacing: 15) {
                
                Text("PassWord")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                SecureField("123456", text: $pass)
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(Color("dark"))
                    .padding(.top,5)
                
                Divider()
                
                
            }
            .padding(.top,20)
            
            Button {
                
            } label: {
                
                Text("For Got PassWord?")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity,alignment: .trailing)
            .padding(.top,10)
            
            
            Button {
                
            } label: {
                
                Image(systemName: "arrow.right")
                    .font(.system(size: 25, weight: .bold))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color("dark"),in:Circle())
                    .shadow(color: Color("lightBlue").opacity(0.6), radius: 5, x: 0, y: 0)
            }
            .frame(maxWidth: .infinity,alignment: .leading)
            .padding(.top,10)


            
        }
        .padding()
    }
}



struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
