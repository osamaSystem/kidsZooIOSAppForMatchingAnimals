//
//  LoginView.swift
//  Kids Zoo
//
//  Created by Osama Hamdan on 12/07/2023.
//

import SwiftUI

struct LoginView: View {
    
    @State var userName: String = ""
    @State var Password: String = ""
    
    @AppStorage("Paging") var paging : Int = 0
    @AppStorage("SessionUserName") var sessionUserName : String = ""
    @AppStorage("SessionPassword") var sessionPassword : String = ""
    
    var body: some View {
        ZStack{
            Image("background1")
                .resizable()
                .scaledToFill()
            VStack{
                Spacer()
                TextField("User Name",text: $userName)
                    .padding( 15)
                    .background(Color("AccentColor"))
                    .cornerRadius(12)
                    .padding(.horizontal,15)
                
                TextField("Password", text: $Password)
                    .padding(15)
                    .background(Color("AccentColor"))
                    .cornerRadius(12)
                    .padding(15)
                
                HStack{
                    Spacer()
                    Button {
                        
                    } label: {
                        Text("Forgot Password?")
                            .padding(.horizontal,15)
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                    }

                }.padding(.bottom,20)
                
                Button {
                    if userName == sessionUserName
                        && Password == sessionPassword {
                        paging = 2
                    }
                } label: {
                    Text("Go")
                        .font(.title)
                        .padding(.vertical,10)
                        .fontWeight(.bold)
                        .frame(width: 250, height: 50, alignment: Alignment.center)
                        .foregroundColor(.white)
                        .background(Color("4thColor"))
                        .cornerRadius(15)
            
                }.padding(.bottom,20)
                
                HStack{
                    Text("Not member yet?")
                    Button {
                        paging = 1
                    } label: {
                        Text("Register now")
                            .foregroundColor(Color(.blue))
                    }

                }

               Image("background2")
                    .resizable()
                    .scaledToFit()
            }
            
        }.edgesIgnoringSafeArea(.all)
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
