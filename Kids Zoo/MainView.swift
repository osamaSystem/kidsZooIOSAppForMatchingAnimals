//
//  MainView.swift
//  Kids Zoo
//
//  Created by Osama Hamdan on 12/07/2023.
//

import SwiftUI

struct MainView: View {
    
    @AppStorage("Paging") var paging : Int = 0
  
    var body: some View {
        VStack{
        AppBarView().padding(.bottom)
            MatchedItemView()
            Spacer()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

/*
 LazyVGrid(columns: gridItemsColumn) {
     ForEach(animalsList, id: \.self) { item in
         Image(item)
             .resizable()
             .scaledToFill()
             .padding(11)
             .frame(width: 90, height: 90, alignment: Alignment.center)
             .background(Color("AccentColor"))
             .cornerRadius(60)
             .padding()
     }
 }
 */
