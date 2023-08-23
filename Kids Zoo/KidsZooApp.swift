//
//  KidsZooApp.swift
//  Kids Zoo
//
//  Created by Osama Hamdan on 12/07/2023.
//

import SwiftUI

@main
struct Kids_ZooApp: App {
    
    @AppStorage("Paging") var paging : Int = 0
    
    init() {
        paging = 0
    }
    
    var body: some Scene {
        
        WindowGroup {
            MainView()
        }
    }
}
