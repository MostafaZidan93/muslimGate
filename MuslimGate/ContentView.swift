//
//  ContentView.swift
//  MuslimGate
//
//  Created by M.M.Z on 05/08/2023.
//

import SwiftUI
import Firebase
import FirebaseAuth
import FirebaseStorage
import FirebaseDatabase


struct ContentView: View {
    @State var selectedTab: Tab = .house
    
    var body: some View {
            
        ZStack {
            
            TabView {
                HStack {
                    Image(systemName: selectedTab.rawValue)
                    Text(selectedTab.rawValue)
                }
            }
            
            //TabBar
            VStack {
                Spacer()
                TabBarView(selectedTab: $selectedTab)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
