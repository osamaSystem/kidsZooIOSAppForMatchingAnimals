//
//  AppBarView.swift
//  Kids Zoo
//
//  Created by Osama Hamdan on 16/07/2023.
//

import SwiftUI

struct AppBarView: View {
    var body: some View {
            HStack{
            Image("avatar")
                .resizable()
                .scaledToFill()
                .frame(width: 60,height:60, alignment: Alignment.center)
                .clipped()
                .cornerRadius(100)
                .padding(.leading,20)
            
                Spacer()
                
            Image(systemName: "slider.horizontal.3")
                .resizable()
                .scaledToFit()
                .foregroundColor(Color("4thColor"))
                .frame(width: 40,height: 50, alignment: Alignment.center)
                .padding()
                            
            }.background(Color("AccentColor"))
    }
}

struct AppBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppBarView()
    }
}
