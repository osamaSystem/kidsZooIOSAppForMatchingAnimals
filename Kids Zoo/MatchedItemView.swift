//
//  MatchedItemView.swift
//  Kids Zoo
//
//  Created by Osama Hamdan on 23/07/2023.
//

import SwiftUI

struct MatchedItemView: View {
    
    
    var gridColumnItems : [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]

    @State var gridItemsList : [String] = ["cat", "fox", "shark", "racon", "tiger", "lion", "cat", "fox", "shark", "racon", "tiger", "lion"].shuffled()
   
    @State var tappedIndexes : [Int] = []
    @State var arrayOfAllCorrectItems : [Int] = []

   
    
    var body: some View {
        
        LazyVGrid(columns: gridColumnItems) {
            ForEach(0..<gridItemsList.count){
                index in
                Image(gridItemsList[index])
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .frame(width: 90, height: 90, alignment: Alignment.center)
                    .background(Color("AccentColor"))
                    .cornerRadius(70)
                    .padding(.all,5)
                    .overlay(Color("AccentColor").cornerRadius(70)
                        .opacity(!tappedIndexes.contains(index)
                                 && !arrayOfAllCorrectItems.contains(index) ?
                                 1 : 0
                                )
                        .onTapGesture {
                            
                            if tappedIndexes.count < 3 {
                                tappedIndexes.append(index)
                                if tappedIndexes.count > 1 {
                                    if gridItemsList[tappedIndexes[0]] == gridItemsList [tappedIndexes[1]]
                                    && tappedIndexes[0] != tappedIndexes [1] {
                                        
                                        arrayOfAllCorrectItems.append(contentsOf: tappedIndexes)
                                    
                                        tappedIndexes = []
                                        
                                        if arrayOfAllCorrectItems.count == gridItemsList.count {
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                                                
                                                tappedIndexes = []
                                                arrayOfAllCorrectItems = []
                                                
                                                self.gridItemsList.shuffle()
                                            }
                                        }
                                      
                                    }else {
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                                                tappedIndexes = []
                                        }
                                    }
                                }
                            }
                        }
                    )
                
            }
        }
    }
}

struct MatchedItemView_Previews: PreviewProvider {
    static var previews: some View {
        MatchedItemView()
    }
}
