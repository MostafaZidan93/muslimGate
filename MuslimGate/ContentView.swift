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
    
    @State var image: UIImage?
    
    var images: [String] = ["1", "2", "3", "4", "5", "6"]
    
    var body: some View {
        NavigationView {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(images, id: \.self) { imageNumber in
                        
                        if image != nil {
                            Image(uiImage: image!)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .padding()
                                .frame(width: UIScreen.main.bounds.width)
                        } else {
                        Image(imageNumber)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .padding()
                            .frame(width: UIScreen.main.bounds.width)
                        }
                        
                    }
                }
            }
            .onAppear() {
                let storageRef = Storage.storage().reference(withPath: "Quran As Images/set1/2.png")
                storageRef.getData(maxSize: 4 * 1024 * 1024) { data, error in
                    guard let data = data else {
                        print("Error is !!!!!: \(error!.localizedDescription)")
                        return
                    }
                    self.image = UIImage(data: data)
                }
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
