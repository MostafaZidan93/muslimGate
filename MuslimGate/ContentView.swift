//
//  ContentView.swift
//  MuslimGate
//
//  Created by M.M.Z on 05/08/2023.
//

import SwiftUI


struct ContentView: View {
    
    var images: [String] = ["1", "2", "3", "4", "5", "6"]
    
    var body: some View {
        NavigationView {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(images, id: \.self) { imageNumber in
                        Image(imageNumber)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .padding()
                            .frame(width: UIScreen.main.bounds.width)
                        
                    }
                }
            }
            .onAppear() {
                UIScrollView.appearance().isPagingEnabled = true
            }
            .navigationTitle("Quran")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct VersesImage: View, Identifiable {
    let id = UUID()
    let imageNumber: String
    var body: some View {
        
        Image(imageNumber)
            .resizable()
            .scaledToFit()
    }
}
