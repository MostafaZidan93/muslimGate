//
//  MuslimGateApp.swift
//  MuslimGate
//
//  Created by M.M.Z on 05/08/2023.
//

import SwiftUI
import Firebase

@main
struct MuslimGateApp: App {
    
    var body: some Scene {
        WindowGroup {
            QuranView()
        }
    }
    
    init() {
        FirebaseApp.configure()
    }
}
