//
//  SignUpView.swift
//  Kids Zoo
//
//  Created by Osama Hamdan on 12/07/2023.
//

import SwiftUI

struct SignUpView: View {
    
    @State var userName: String = ""
    @State var childAge: String = ""
    @State var country: String = ""
    @State var password: String = ""
    
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
            
                TextField("User Name", text: $userName)
                    .padding()
                    .background(Color("AccentColor"))
                    .cornerRadius(15)
                    .padding(.top, 50)
                    .padding(.horizontal,20)
                    .padding(.vertical,10)
                
           
                TextField("Child Age", text: $childAge)
                    .padding()
                    .background(Color("AccentColor"))
                    .cornerRadius(15)
                    .padding(.horizontal,20)
                    .padding(.vertical,10)
           
                TextField("Country", text: $country)
                    .padding()
                    .background(Color("AccentColor"))
                    .cornerRadius(15)
                    .padding(.horizontal,20)
                    .padding(.vertical,10)
           
                TextField("Password", text: $password)
                    .padding()
                    .background(Color("AccentColor"))
                    .cornerRadius(15)
                    .padding(.horizontal,20)
                    .padding(.vertical,10)
                
                Button {
                    if userName != "" && password != "" {
                        sessionUserName = userName
                        sessionPassword = password
                        paging = 0
                    }
                } label: {
                    Text("Sign In")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                        .frame(width: 220, height: 50)
                        .background(Color("4thColor"))
                        .cornerRadius(15)
                        .padding()
                }

                HStack{
                    Text("Alredy have acount?")
                        .foregroundColor(.black)
                    Button {
                        paging = 0
                    } label: {
                        Text("Go to login")
                            .foregroundColor(Color(.blue))
                    }

                }
                Spacer()
                Spacer()
            }
            
            
            
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
/*
 ZStack{
     Image("background1").resizable().scaledToFill()
     VStack{
         TextField("User Name",
                   text: $userName)
             .padding(12)
             .background(Color("AccentColor"))
             .cornerRadius(12)
             .padding(15)
         
         TextField("Password",text: $password)
             .padding(12)
             .background(Color("AccentColor"))
             .cornerRadius(12)
             .padding(12)
         
     }
 }.edgesIgnoringSafeArea(.all)
 */
