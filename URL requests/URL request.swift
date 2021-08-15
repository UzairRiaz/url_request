//
//  Twitter_clone_FirebaseApp.swift
//  Twitter_clone_Firebase
//
//  Created by Umair Riaz on 15/08/2021.
//

import SwiftUI

@main
struct Twitter_clone_FirebaseApp: App {
    var network = Network()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(network)
        }
    }
}
